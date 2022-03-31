#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_gmem0 "../tv/cdatafile/c.colordetect_accel.autotvin_gmem0.dat"
#define AUTOTB_TVOUT_gmem0 "../tv/cdatafile/c.colordetect_accel.autotvout_gmem0.dat"
// wrapc file define:
#define AUTOTB_TVIN_gmem1 "../tv/cdatafile/c.colordetect_accel.autotvin_gmem1.dat"
#define AUTOTB_TVOUT_gmem1 "../tv/cdatafile/c.colordetect_accel.autotvout_gmem1.dat"
// wrapc file define:
#define AUTOTB_TVIN_src_V_data_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_data_V.dat"
#define AUTOTB_TVOUT_src_V_data_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_data_V.dat"
#define AUTOTB_TVIN_src_V_keep_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_keep_V.dat"
#define AUTOTB_TVOUT_src_V_keep_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_keep_V.dat"
#define AUTOTB_TVIN_src_V_strb_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_strb_V.dat"
#define AUTOTB_TVOUT_src_V_strb_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_strb_V.dat"
#define AUTOTB_TVIN_src_V_user_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_user_V.dat"
#define AUTOTB_TVOUT_src_V_user_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_user_V.dat"
#define AUTOTB_TVIN_src_V_last_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_last_V.dat"
#define AUTOTB_TVOUT_src_V_last_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_last_V.dat"
#define AUTOTB_TVIN_src_V_id_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_id_V.dat"
#define AUTOTB_TVOUT_src_V_id_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_id_V.dat"
#define AUTOTB_TVIN_src_V_dest_V "../tv/cdatafile/c.colordetect_accel.autotvin_src_V_dest_V.dat"
#define AUTOTB_TVOUT_src_V_dest_V "../tv/cdatafile/c.colordetect_accel.autotvout_src_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_data_V "../tv/stream_size/stream_size_in_src_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_data_V "../tv/stream_size/stream_ingress_status_src_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_keep_V "../tv/stream_size/stream_size_in_src_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V "../tv/stream_size/stream_ingress_status_src_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_strb_V "../tv/stream_size/stream_size_in_src_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V "../tv/stream_size/stream_ingress_status_src_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_user_V "../tv/stream_size/stream_size_in_src_V_user_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_user_V "../tv/stream_size/stream_ingress_status_src_V_user_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_last_V "../tv/stream_size/stream_size_in_src_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_last_V "../tv/stream_size/stream_ingress_status_src_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_id_V "../tv/stream_size/stream_size_in_src_V_id_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_id_V "../tv/stream_size/stream_ingress_status_src_V_id_V.dat"
#define WRAPC_STREAM_SIZE_IN_src_V_dest_V "../tv/stream_size/stream_size_in_src_V_dest_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V "../tv/stream_size/stream_ingress_status_src_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_low_thresh "../tv/cdatafile/c.colordetect_accel.autotvin_low_thresh.dat"
#define AUTOTB_TVOUT_low_thresh "../tv/cdatafile/c.colordetect_accel.autotvout_low_thresh.dat"
// wrapc file define:
#define AUTOTB_TVIN_high_thresh "../tv/cdatafile/c.colordetect_accel.autotvin_high_thresh.dat"
#define AUTOTB_TVOUT_high_thresh "../tv/cdatafile/c.colordetect_accel.autotvout_high_thresh.dat"
// wrapc file define:
#define AUTOTB_TVIN_dst_V_data_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_data_V.dat"
#define AUTOTB_TVOUT_dst_V_data_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_data_V.dat"
#define AUTOTB_TVIN_dst_V_keep_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_keep_V.dat"
#define AUTOTB_TVOUT_dst_V_keep_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_keep_V.dat"
#define AUTOTB_TVIN_dst_V_strb_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_strb_V.dat"
#define AUTOTB_TVOUT_dst_V_strb_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_strb_V.dat"
#define AUTOTB_TVIN_dst_V_user_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_user_V.dat"
#define AUTOTB_TVOUT_dst_V_user_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_user_V.dat"
#define AUTOTB_TVIN_dst_V_last_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_last_V.dat"
#define AUTOTB_TVOUT_dst_V_last_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_last_V.dat"
#define AUTOTB_TVIN_dst_V_id_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_id_V.dat"
#define AUTOTB_TVOUT_dst_V_id_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_id_V.dat"
#define AUTOTB_TVIN_dst_V_dest_V "../tv/cdatafile/c.colordetect_accel.autotvin_dst_V_dest_V.dat"
#define AUTOTB_TVOUT_dst_V_dest_V "../tv/cdatafile/c.colordetect_accel.autotvout_dst_V_dest_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_data_V "../tv/stream_size/stream_size_out_dst_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_data_V "../tv/stream_size/stream_egress_status_dst_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_keep_V "../tv/stream_size/stream_size_out_dst_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_keep_V "../tv/stream_size/stream_egress_status_dst_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_strb_V "../tv/stream_size/stream_size_out_dst_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_strb_V "../tv/stream_size/stream_egress_status_dst_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_user_V "../tv/stream_size/stream_size_out_dst_V_user_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_user_V "../tv/stream_size/stream_egress_status_dst_V_user_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_last_V "../tv/stream_size/stream_size_out_dst_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_last_V "../tv/stream_size/stream_egress_status_dst_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_id_V "../tv/stream_size/stream_size_out_dst_V_id_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_id_V "../tv/stream_size/stream_egress_status_dst_V_id_V.dat"
#define WRAPC_STREAM_SIZE_OUT_dst_V_dest_V "../tv/stream_size/stream_size_out_dst_V_dest_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_dst_V_dest_V "../tv/stream_size/stream_egress_status_dst_V_dest_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_rows "../tv/cdatafile/c.colordetect_accel.autotvin_rows.dat"
#define AUTOTB_TVOUT_rows "../tv/cdatafile/c.colordetect_accel.autotvout_rows.dat"
// wrapc file define:
#define AUTOTB_TVIN_cols "../tv/cdatafile/c.colordetect_accel.autotvin_cols.dat"
#define AUTOTB_TVOUT_cols "../tv/cdatafile/c.colordetect_accel.autotvout_cols.dat"
// wrapc file define:
#define AUTOTB_TVIN_t1 "../tv/cdatafile/c.colordetect_accel.autotvin_t1.dat"
#define AUTOTB_TVOUT_t1 "../tv/cdatafile/c.colordetect_accel.autotvout_t1.dat"
// wrapc file define:
#define AUTOTB_TVIN_t2 "../tv/cdatafile/c.colordetect_accel.autotvin_t2.dat"
#define AUTOTB_TVOUT_t2 "../tv/cdatafile/c.colordetect_accel.autotvout_t2.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_gmem0 "../tv/rtldatafile/rtl.colordetect_accel.autotvout_gmem0.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_gmem1 "../tv/rtldatafile/rtl.colordetect_accel.autotvout_gmem1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_src_V_data_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_data_V.dat"
#define AUTOTB_TVOUT_PC_src_V_keep_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_src_V_strb_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_src_V_user_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_user_V.dat"
#define AUTOTB_TVOUT_PC_src_V_last_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_last_V.dat"
#define AUTOTB_TVOUT_PC_src_V_id_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_id_V.dat"
#define AUTOTB_TVOUT_PC_src_V_dest_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_src_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_low_thresh "../tv/rtldatafile/rtl.colordetect_accel.autotvout_low_thresh.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_high_thresh "../tv/rtldatafile/rtl.colordetect_accel.autotvout_high_thresh.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dst_V_data_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_data_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_keep_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_strb_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_user_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_user_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_last_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_last_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_id_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_id_V.dat"
#define AUTOTB_TVOUT_PC_dst_V_dest_V "../tv/rtldatafile/rtl.colordetect_accel.autotvout_dst_V_dest_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_rows "../tv/rtldatafile/rtl.colordetect_accel.autotvout_rows.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_cols "../tv/rtldatafile/rtl.colordetect_accel.autotvout_cols.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_t1 "../tv/rtldatafile/rtl.colordetect_accel.autotvout_t1.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_t2 "../tv/rtldatafile/rtl.colordetect_accel.autotvout_t2.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  gmem0_depth = 0;
  gmem1_depth = 0;
  src_V_data_V_depth = 0;
  src_V_keep_V_depth = 0;
  src_V_strb_V_depth = 0;
  src_V_user_V_depth = 0;
  src_V_last_V_depth = 0;
  src_V_id_V_depth = 0;
  src_V_dest_V_depth = 0;
  low_thresh_depth = 0;
  high_thresh_depth = 0;
  dst_V_data_V_depth = 0;
  dst_V_keep_V_depth = 0;
  dst_V_strb_V_depth = 0;
  dst_V_user_V_depth = 0;
  dst_V_last_V_depth = 0;
  dst_V_id_V_depth = 0;
  dst_V_dest_V_depth = 0;
  rows_depth = 0;
  cols_depth = 0;
  t1_depth = 0;
  t2_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{gmem0 " << gmem0_depth << "}\n";
  total_list << "{gmem1 " << gmem1_depth << "}\n";
  total_list << "{src_V_data_V " << src_V_data_V_depth << "}\n";
  total_list << "{src_V_keep_V " << src_V_keep_V_depth << "}\n";
  total_list << "{src_V_strb_V " << src_V_strb_V_depth << "}\n";
  total_list << "{src_V_user_V " << src_V_user_V_depth << "}\n";
  total_list << "{src_V_last_V " << src_V_last_V_depth << "}\n";
  total_list << "{src_V_id_V " << src_V_id_V_depth << "}\n";
  total_list << "{src_V_dest_V " << src_V_dest_V_depth << "}\n";
  total_list << "{low_thresh " << low_thresh_depth << "}\n";
  total_list << "{high_thresh " << high_thresh_depth << "}\n";
  total_list << "{dst_V_data_V " << dst_V_data_V_depth << "}\n";
  total_list << "{dst_V_keep_V " << dst_V_keep_V_depth << "}\n";
  total_list << "{dst_V_strb_V " << dst_V_strb_V_depth << "}\n";
  total_list << "{dst_V_user_V " << dst_V_user_V_depth << "}\n";
  total_list << "{dst_V_last_V " << dst_V_last_V_depth << "}\n";
  total_list << "{dst_V_id_V " << dst_V_id_V_depth << "}\n";
  total_list << "{dst_V_dest_V " << dst_V_dest_V_depth << "}\n";
  total_list << "{rows " << rows_depth << "}\n";
  total_list << "{cols " << cols_depth << "}\n";
  total_list << "{t1 " << t1_depth << "}\n";
  total_list << "{t2 " << t2_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int gmem0_depth;
    int gmem1_depth;
    int src_V_data_V_depth;
    int src_V_keep_V_depth;
    int src_V_strb_V_depth;
    int src_V_user_V_depth;
    int src_V_last_V_depth;
    int src_V_id_V_depth;
    int src_V_dest_V_depth;
    int low_thresh_depth;
    int high_thresh_depth;
    int dst_V_data_V_depth;
    int dst_V_keep_V_depth;
    int dst_V_strb_V_depth;
    int dst_V_user_V_depth;
    int dst_V_last_V_depth;
    int dst_V_id_V_depth;
    int dst_V_dest_V_depth;
    int rows_depth;
    int cols_depth;
    int t1_depth;
    int t2_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
struct __cosim_sC__ { char data[12]; };
extern "C" void colordetect_accel_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, int, int, int, volatile void *);

extern "C" void apatb_colordetect_accel_hw(volatile void * __xlx_apatb_param_src, volatile void * __xlx_apatb_param_low_thresh, volatile void * __xlx_apatb_param_high_thresh, volatile void * __xlx_apatb_param_dst, int __xlx_apatb_param_rows, int __xlx_apatb_param_cols, int __xlx_apatb_param_t1, volatile void * __xlx_apatb_param_t2) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;long __xlx_apatb_param_src_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_src_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_src_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_src_stream_buf_final_size; ++i)((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->read();
{sc_bv<96> xlx_stream_dst_pc_buffer;
unsigned xlx_stream_dst_size = 0;

          std::vector<sc_bv<24> > dst_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_data_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_data_V_pc_buffer.size();
dst_V_data_V_pc_buffer_Copy=dst_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > dst_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_keep_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_keep_V_pc_buffer.size();
dst_V_keep_V_pc_buffer_Copy=dst_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > dst_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_strb_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_strb_V_pc_buffer.size();
dst_V_strb_V_pc_buffer_Copy=dst_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > dst_V_user_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_user_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_user_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_user_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_user_V_pc_buffer.size();
dst_V_user_V_pc_buffer_Copy=dst_V_user_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > dst_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_last_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_last_V_pc_buffer.size();
dst_V_last_V_pc_buffer_Copy=dst_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > dst_V_id_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_id_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_id_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_id_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_id_V_pc_buffer.size();
dst_V_id_V_pc_buffer_Copy=dst_V_id_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<24> > dst_V_dest_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dst_V_dest_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<24> > dst_V_dest_V_pc_buffer;
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "dst");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dst_V_dest_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {xlx_stream_dst_size=dst_V_dest_V_pc_buffer.size();
dst_V_dest_V_pc_buffer_Copy=dst_V_dest_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_dst_size; j != e; ++j) {
xlx_stream_dst_pc_buffer.range(31, 0) = dst_V_data_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(39, 32) = dst_V_keep_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(47, 40) = dst_V_strb_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(55, 48) = dst_V_user_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(63, 56) = dst_V_last_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(71, 64) = dst_V_id_V_pc_buffer_Copy[j];
xlx_stream_dst_pc_buffer.range(95, 72) = dst_V_dest_V_pc_buffer_Copy[j];
__cosim_sC__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*1+0] = xlx_stream_dst_pc_buffer.range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*1+1] = xlx_stream_dst_pc_buffer.range(95,64).to_int64();
((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->write(xlx_stream_elt);
}}{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_t2);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > t2_pc_buffer(1);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "t2");
  
            // push token into output port buffer
            if (AESL_token != "") {
              t2_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {
            ((int*)__xlx_apatb_param_t2)[0] = t2_pc_buffer[0].to_int64();
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//gmem0
aesl_fh.touch(AUTOTB_TVIN_gmem0);
aesl_fh.touch(AUTOTB_TVOUT_gmem0);
//gmem1
aesl_fh.touch(AUTOTB_TVIN_gmem1);
aesl_fh.touch(AUTOTB_TVOUT_gmem1);
//src
aesl_fh.touch(AUTOTB_TVIN_src_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_src_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_src_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_user_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_id_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_src_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V);
//low_thresh
aesl_fh.touch(AUTOTB_TVIN_low_thresh);
aesl_fh.touch(AUTOTB_TVOUT_low_thresh);
//high_thresh
aesl_fh.touch(AUTOTB_TVIN_high_thresh);
aesl_fh.touch(AUTOTB_TVOUT_high_thresh);
//dst
aesl_fh.touch(AUTOTB_TVIN_dst_V_data_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_data_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_keep_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_keep_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_strb_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_strb_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_user_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_user_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_last_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_last_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_id_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_id_V);
aesl_fh.touch(AUTOTB_TVIN_dst_V_dest_V);
aesl_fh.touch(AUTOTB_TVOUT_dst_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_user_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_user_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_id_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_id_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_dst_V_dest_V);
//rows
aesl_fh.touch(AUTOTB_TVIN_rows);
aesl_fh.touch(AUTOTB_TVOUT_rows);
//cols
aesl_fh.touch(AUTOTB_TVIN_cols);
aesl_fh.touch(AUTOTB_TVOUT_cols);
//t1
aesl_fh.touch(AUTOTB_TVIN_t1);
aesl_fh.touch(AUTOTB_TVOUT_t1);
//t2
aesl_fh.touch(AUTOTB_TVIN_t2);
aesl_fh.touch(AUTOTB_TVOUT_t2);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_low_thresh = 0;
// print gmem0 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_low_thresh = 0*1;
  if (__xlx_apatb_param_low_thresh) {
    for (int j = 0  - 0, e = 9 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_low_thresh)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(9, &tcl_file.gmem0_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem0, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_high_thresh = 0;
// print gmem1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_high_thresh = 0*1;
  if (__xlx_apatb_param_high_thresh) {
    for (int j = 0  - 0, e = 9 - 0; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv = ((char*)__xlx_apatb_param_high_thresh)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(9, &tcl_file.gmem1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_gmem1, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_sC__> __xlx_apatb_param_src_stream_buf;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->empty())
    __xlx_apatb_param_src_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->read());
  for (int i = 0; i < __xlx_apatb_param_src_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->write(__xlx_apatb_param_src_stream_buf[i]);
  }
long __xlx_apatb_param_src_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->size();
// print low_thresh Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_low_thresh, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_low_thresh;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_low_thresh, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.low_thresh_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_low_thresh, __xlx_sprintf_buffer.data());
}
// print high_thresh Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_high_thresh, __xlx_sprintf_buffer.data());
  {
    sc_bv<64> __xlx_tmp_lv = __xlx_offset_byte_param_high_thresh;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_high_thresh, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.high_thresh_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_high_thresh, __xlx_sprintf_buffer.data());
}
std::vector<__cosim_sC__> __xlx_apatb_param_dst_stream_buf;
long __xlx_apatb_param_dst_stream_buf_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->size();
// print rows Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_rows);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.rows_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_rows, __xlx_sprintf_buffer.data());
}
// print cols Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_cols);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.cols_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_cols, __xlx_sprintf_buffer.data());
}
// print t1 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_t1, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)&__xlx_apatb_param_t1);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_t1, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.t1_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_t1, __xlx_sprintf_buffer.data());
}
// print t2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_t2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_t2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_t2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.t2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_t2, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
colordetect_accel_hw_stub_wrapper(__xlx_apatb_param_src, __xlx_apatb_param_low_thresh, __xlx_apatb_param_high_thresh, __xlx_apatb_param_dst, __xlx_apatb_param_rows, __xlx_apatb_param_cols, __xlx_apatb_param_t1, __xlx_apatb_param_t2);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_src_stream_buf_final_size = __xlx_apatb_param_src_stream_buf_size - ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_src)->size();

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_src_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_src_stream_buf[j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_src_stream_buf[j])[0*1+1];
sc_bv<24> __xlx_tmp_0_lv = __xlx_tmp_lv.range(23, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(55, 48);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(63, 56);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_src_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_src_stream_buf_final_size, &tcl_file.src_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_src_V_dest_V, __xlx_sprintf_buffer.data());

// dump stream ingress status to file

// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_data_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_data_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_keep_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_keep_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_strb_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_strb_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_user_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_user_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_user_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_user_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_user_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_last_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_last_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_id_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_id_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_id_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_id_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_id_V, __xlx_sprintf_buffer.data());
}
// dump stream ingress status to file
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
  if (__xlx_apatb_param_src_stream_buf_final_size > 0) {
  long src_V_dest_V_stream_ingress_size = __xlx_apatb_param_src_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_src_stream_buf_final_size; j != e; j++) {
    src_V_dest_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
  }
} else {
  long src_V_dest_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", src_V_dest_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
}

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_src_V_dest_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_src_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_IN_src_V_dest_V, __xlx_sprintf_buffer.data());
}
//********************** dump C output stream *******************
long __xlx_apatb_param_dst_stream_buf_final_size = ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->size() - __xlx_apatb_param_dst_stream_buf_size;
{
  while (!((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->empty())
    __xlx_apatb_param_dst_stream_buf.push_back(((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->read());
  for (int i = 0; i < __xlx_apatb_param_dst_stream_buf.size(); ++i)
    ((hls::stream<__cosim_sC__>*)__xlx_apatb_param_dst)->write(__xlx_apatb_param_dst_stream_buf[i]);
  }

  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_data_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_user_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_last_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_id_V, __xlx_sprintf_buffer.data());
  
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_dst_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*1+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_dst_stream_buf[__xlx_apatb_param_dst_stream_buf_size+j])[0*1+1];
sc_bv<24> __xlx_tmp_0_lv = __xlx_tmp_lv.range(23, 0);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = __xlx_tmp_lv.range(39, 32);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = __xlx_tmp_lv.range(47, 40);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_3_lv = __xlx_tmp_lv.range(55, 48);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_3_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_user_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_4_lv = __xlx_tmp_lv.range(63, 56);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_last_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_5_lv = __xlx_tmp_lv.range(71, 64);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_5_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_id_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_6_lv = __xlx_tmp_lv.range(79, 72);
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_6_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_data_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_data_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_keep_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_strb_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_user_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_user_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_last_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_last_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_id_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_id_V, __xlx_sprintf_buffer.data());
tcl_file.set_num(__xlx_apatb_param_dst_stream_buf_final_size, &tcl_file.dst_V_dest_V_depth);

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_data_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_data_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_data_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_keep_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_strb_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_user_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_user_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_user_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_last_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_last_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_last_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_id_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_id_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_id_V, __xlx_sprintf_buffer.data());
}{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
  sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_dst_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V, __xlx_sprintf_buffer.data());

  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(WRAPC_STREAM_SIZE_OUT_dst_V_dest_V, __xlx_sprintf_buffer.data());
}// print t2 Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_t2, __xlx_sprintf_buffer.data());
  {
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_t2);

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_t2, __xlx_sprintf_buffer.data()); 
  }
  tcl_file.set_num(1, &tcl_file.t2_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_t2, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
