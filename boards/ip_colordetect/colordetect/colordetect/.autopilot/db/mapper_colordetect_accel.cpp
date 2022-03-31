#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_src_V_cap_bc;
static AESL_RUNTIME_BC __xlx_src_V_size_Reader("../tv/stream_size/stream_size_in_src_V.dat");
unsigned int ap_apatb_dst_V_cap_bc;
static AESL_RUNTIME_BC __xlx_dst_V_size_Reader("../tv/stream_size/stream_size_out_dst_V.dat");
struct __cosim_sC__ { char data[12]; };
extern "C" void colordetect_accel(__cosim_sC__*, char*, char*, __cosim_sC__*, int, int);
extern "C" void apatb_colordetect_accel_hw(volatile void * __xlx_apatb_param_src, volatile void * __xlx_apatb_param_low_thresh, volatile void * __xlx_apatb_param_high_thresh, volatile void * __xlx_apatb_param_dst, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols) {
  // collect __xlx_src_tmp_vec
  unsigned __xlx_src_V_tmp_Count = 0;
  unsigned __xlx_src_V_read_Size = __xlx_src_V_size_Reader.read_size();
  vector<__cosim_sC__> __xlx_src_tmp_vec;
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->empty() && __xlx_src_V_tmp_Count < __xlx_src_V_read_Size) {
    __xlx_src_tmp_vec.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->read());
    __xlx_src_V_tmp_Count++;
  }
  ap_apatb_src_V_cap_bc = __xlx_src_tmp_vec.size();
  // store input buffer
  __cosim_sC__* __xlx_src_input_buffer= new __cosim_sC__[__xlx_src_tmp_vec.size()];
  for (int i = 0; i < __xlx_src_tmp_vec.size(); ++i) {
    __xlx_src_input_buffer[i] = __xlx_src_tmp_vec[i];
  }
  // Collect __xlx_low_thresh__tmp_vec
  vector<sc_bv<8> >__xlx_low_thresh__tmp_vec;
  for (int j = 0, e = 9; j != e; ++j) {
    __xlx_low_thresh__tmp_vec.push_back(((char*)__xlx_apatb_param_low_thresh)[j]);
  }
  int __xlx_size_param_low_thresh = 9;
  int __xlx_offset_param_low_thresh = 0;
  int __xlx_offset_byte_param_low_thresh = 0*1;
  char* __xlx_low_thresh__input_buffer= new char[__xlx_low_thresh__tmp_vec.size()];
  for (int i = 0; i < __xlx_low_thresh__tmp_vec.size(); ++i) {
    __xlx_low_thresh__input_buffer[i] = __xlx_low_thresh__tmp_vec[i].range(7, 0).to_uint64();
  }
  // Collect __xlx_high_thresh__tmp_vec
  vector<sc_bv<8> >__xlx_high_thresh__tmp_vec;
  for (int j = 0, e = 9; j != e; ++j) {
    __xlx_high_thresh__tmp_vec.push_back(((char*)__xlx_apatb_param_high_thresh)[j]);
  }
  int __xlx_size_param_high_thresh = 9;
  int __xlx_offset_param_high_thresh = 0;
  int __xlx_offset_byte_param_high_thresh = 0*1;
  char* __xlx_high_thresh__input_buffer= new char[__xlx_high_thresh__tmp_vec.size()];
  for (int i = 0; i < __xlx_high_thresh__tmp_vec.size(); ++i) {
    __xlx_high_thresh__input_buffer[i] = __xlx_high_thresh__tmp_vec[i].range(7, 0).to_uint64();
  }
  //Create input buffer for dst
  ap_apatb_dst_V_cap_bc = __xlx_dst_V_size_Reader.read_size();
  __cosim_sC__* __xlx_dst_input_buffer= new __cosim_sC__[ap_apatb_dst_V_cap_bc];
  // DUT call
  colordetect_accel(__xlx_src_input_buffer, __xlx_low_thresh__input_buffer, __xlx_high_thresh__input_buffer, __xlx_dst_input_buffer, __xlx_apatb_param_rows, __xlx_apatb_param_cols);
// print __xlx_apatb_param_low_thresh
  sc_bv<8>*__xlx_low_thresh_output_buffer = new sc_bv<8>[__xlx_size_param_low_thresh];
  for (int i = 0; i < __xlx_size_param_low_thresh; ++i) {
    __xlx_low_thresh_output_buffer[i] = __xlx_low_thresh__input_buffer[i+__xlx_offset_param_low_thresh];
  }
  for (int i = 0; i < __xlx_size_param_low_thresh; ++i) {
    ((char*)__xlx_apatb_param_low_thresh)[i] = __xlx_low_thresh_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_high_thresh
  sc_bv<8>*__xlx_high_thresh_output_buffer = new sc_bv<8>[__xlx_size_param_high_thresh];
  for (int i = 0; i < __xlx_size_param_high_thresh; ++i) {
    __xlx_high_thresh_output_buffer[i] = __xlx_high_thresh__input_buffer[i+__xlx_offset_param_high_thresh];
  }
  for (int i = 0; i < __xlx_size_param_high_thresh; ++i) {
    ((char*)__xlx_apatb_param_high_thresh)[i] = __xlx_high_thresh_output_buffer[i].to_uint64();
  }
  for (unsigned i = 0; i <ap_apatb_dst_V_cap_bc; ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->write(__xlx_dst_input_buffer[i]);
}
