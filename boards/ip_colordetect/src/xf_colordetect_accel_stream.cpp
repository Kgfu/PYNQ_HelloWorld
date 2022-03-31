// Copyright (C) 2021 Xilinx, Inc
//
// SPDX-License-Identifier: BSD-3-Clause

#include "hls_stream.h"
#include "common/xf_common.hpp"
#include "common/xf_infra.hpp"


//#include "imgproc/xf_resize.hpp"
#include "imgproc/xf_colorthresholding.hpp"
#include "imgproc/xf_bgr2hsv.hpp"
#include "imgproc/xf_erosion.hpp"
#include "imgproc/xf_dilation.hpp"


#define DATA_WIDTH 24
#define NPIX XF_NPPC1

/*  set the height and width  */
#define WIDTH 3840
#define HEIGHT 2160


/* Color thresholding parameters */
#define MAXCOLORS 3

#define FILTER_SIZE 3
#define KERNEL_SHAPE 0 // 0 - rectangle, 1 - ellipse, 2 - cross
#define ITERATIONS 1


#define IN_TYPE XF_8UC3
#define OUT_TYPE XF_8UC1


// Resolve mask shape:
#if KERNEL_SHAPE == 0
#define XF_KERNEL_SHAPE XF_SHAPE_RECT
#elif KERNEL_SHAPE == 1
#define XF_KERNEL_SHAPE XF_SHAPE_ELLIPSE
#elif KERNEL_SHAPE == 2
#define XF_KERNEL_SHAPE XF_SHAPE_CROSS
#else
#define XF_KERNEL_SHAPE XF_SHAPE_RECT
#endif


#define INTERPOLATION XF_INTERPOLATION_BILINEAR
#define MAXDOWNSCALE 9


static constexpr int __XF_DEPTH_FILTER = (FILTER_SIZE * FILTER_SIZE);


typedef xf::cv::ap_axiu<DATA_WIDTH,1,1,1> interface_t;
typedef hls::stream<interface_t> stream_t;


/*
* We use the custom axis2xfMat and xfMat2axis and instead default
* xf::cv::AXIvideo2xfMat and xf::cv::xfMat2AXIvideo
* because the Hello-World uses a regular DMA.
* So, we only need last is only asserted for final pixel of the image.
*/

template <int W, int TYPE, int ROWS, int COLS, int NPPC>
void axis2xfMat (hls::stream<ap_axiu<W, 1, 1, 1> >& AXI_video_strm, xf::cv::Mat<TYPE, ROWS, COLS, NPPC>& img) {
    ap_axiu<W, 1, 1, 1> axi;

    const int m_pix_width = XF_PIXELWIDTH(TYPE, NPPC) * XF_NPIXPERCYCLE(NPPC);

    int rows = img.rows;
    int cols = img.cols >> XF_BITSHIFT(NPPC);

    assert(img.rows <= ROWS);
    assert(img.cols <= COLS);

loop_row_axi2mat:
    for (int i = 0; i < rows; i++) {
    loop_col_zxi2mat:
        for (int j = 0; j < cols; j++) {
#pragma HLS loop_flatten off
#pragma HLS pipeline II=1

            AXI_video_strm.read(axi);
            img.write(i*rows + j, axi.data(m_pix_width - 1, 0));
        }
    }
}

template <int W, int TYPE, int ROWS, int COLS, int NPPC>
void xfMat2axis(xf::cv::Mat<TYPE, ROWS, COLS, NPPC>& img, hls::stream<ap_axiu<W, 1, 1, 1> >& dst) {
    ap_axiu<W, 1, 1, 1> axi;

    int rows = img.rows;
    int cols = img.cols >> XF_BITSHIFT(NPPC);

    assert(img.rows <= ROWS);
    assert(img.cols <= COLS);

    const int m_pix_width = XF_PIXELWIDTH(TYPE, NPPC) * XF_NPIXPERCYCLE(NPPC);

loop_row_mat2axi:
    for (int i = 0; i < rows; i++) {
    loop_col_mat2axi:
        for (int j = 0; j < cols; j++) {
#pragma HLS loop_flatten off
#pragma HLS pipeline II = 1

            /*Assert last only in the last pixel*/
            if ((j == cols-1) && (i == rows-1)) {
                axi.last = 1;
            } else {
                axi.last = 0;
            }

            axi.data = 0;
            axi.data(m_pix_width - 1, 0) = img.read(i*rows + j);
            axi.keep = -1;
            dst.write(axi);
        }
    }
}


void colordetect_accel(stream_t& src,
                       unsigned char low_thresh[9],
                       unsigned char high_thresh[9], 
			stream_t& dst,
			int rows, int cols,
                  ) {


    #pragma HLS INTERFACE axis register both port=src

    #pragma HLS INTERFACE s_axilite  port=low_thresh              
    #pragma HLS INTERFACE s_axilite  port=high_thresh
    

    #pragma HLS INTERFACE s_axilite  port=rows              
    #pragma HLS INTERFACE s_axilite  port=cols
    
    #pragma HLS INTERFACE axis register both port=dst

    #pragma HLS INTERFACE s_axilite port=return


    xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPIX> imgInput(rows, cols);
    xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPIX> rgb2hsv(rows, cols);

    xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPIX> imgHelper1(rows, cols);
    xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPIX> imgHelper2(rows, cols);
    xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPIX> imgHelper3(rows, cols);
    xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPIX> imgHelper4(rows, cols);
    xf::cv::Mat<OUT_TYPE, HEIGHT, WIDTH, NPIX> imgOutput(rows, cols);
    

    // Copy the shape data:
    unsigned char _kernel[FILTER_SIZE * FILTER_SIZE];
    for (unsigned int i = 0; i < FILTER_SIZE * FILTER_SIZE; ++i) {
        #pragma HLS PIPELINE
        _kernel[i] = 1;
        
    }


    
    #pragma HLS DATAFLOW



    // Convert stream to xf::cv::Mat
    axis2xfMat<DATA_WIDTH, IN_TYPE, HEIGHT, WIDTH, NPIX>(src, imgInput);
    

    // Convert RGBA to HSV:
    xf::cv::bgr2hsv<IN_TYPE, HEIGHT, WIDTH, NPIX>(imgInput, rgb2hsv);


   // Do the color thresholding:
    xf::cv::colorthresholding<IN_TYPE, OUT_TYPE, MAXCOLORS, HEIGHT, WIDTH, NPIX>(rgb2hsv, imgHelper1, low_thresh, high_thresh);
	 									     									    
	 									    
   
    // Use erode and dilate to fully mark color areas:
    xf::cv::erode<XF_BORDER_CONSTANT, OUT_TYPE, HEIGHT, WIDTH, XF_KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS,
                  NPIX>(imgHelper1, imgHelper2, _kernel);
    xf::cv::dilate<XF_BORDER_CONSTANT, OUT_TYPE, HEIGHT, WIDTH, XF_KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS,
                   NPIX>(imgHelper2, imgHelper3, _kernel);
    xf::cv::dilate<XF_BORDER_CONSTANT, OUT_TYPE, HEIGHT, WIDTH, XF_KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS,
                   NPIX>(imgHelper3, imgHelper4, _kernel);
    xf::cv::erode<XF_BORDER_CONSTANT, OUT_TYPE, HEIGHT, WIDTH, XF_KERNEL_SHAPE, FILTER_SIZE, FILTER_SIZE, ITERATIONS,
                  NPIX>(imgHelper4, imgOutput, _kernel);    
    
    
    
    // Run xfOpenCV kernel:
    xfMat2axis<DATA_WIDTH, OUT_TYPE, HEIGHT, WIDTH, NPIX>(imgOutput, dst);

}
