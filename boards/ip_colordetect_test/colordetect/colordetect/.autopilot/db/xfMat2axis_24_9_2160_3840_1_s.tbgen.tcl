set moduleName xfMat2axis_24_9_2160_3840_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {xfMat2axis<24, 9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rgb2hsv_421 int 24 regular {fifo 0 volatile }  }
	{ img_rows int 32 regular {fifo 0}  }
	{ img_cols int 32 regular {fifo 0}  }
	{ dst_V_data_V int 24 regular {axi_s 1 volatile  { dst Data } }  }
	{ dst_V_keep_V int 3 regular {axi_s 1 volatile  { dst Keep } }  }
	{ dst_V_strb_V int 3 regular {axi_s 1 volatile  { dst Strb } }  }
	{ dst_V_user_V int 1 regular {axi_s 1 volatile  { dst User } }  }
	{ dst_V_last_V int 1 regular {axi_s 1 volatile  { dst Last } }  }
	{ dst_V_id_V int 1 regular {axi_s 1 volatile  { dst ID } }  }
	{ dst_V_dest_V int 1 regular {axi_s 1 volatile  { dst Dest } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_421", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "img_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "img_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dst_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dst_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ rgb2hsv_421_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_421_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_421_read sc_out sc_logic 1 signal 0 } 
	{ img_rows_dout sc_in sc_lv 32 signal 1 } 
	{ img_rows_empty_n sc_in sc_logic 1 signal 1 } 
	{ img_rows_read sc_out sc_logic 1 signal 1 } 
	{ img_cols_dout sc_in sc_lv 32 signal 2 } 
	{ img_cols_empty_n sc_in sc_logic 1 signal 2 } 
	{ img_cols_read sc_out sc_logic 1 signal 2 } 
	{ dst_TDATA sc_out sc_lv 24 signal 3 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 9 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 9 } 
	{ dst_TKEEP sc_out sc_lv 3 signal 4 } 
	{ dst_TSTRB sc_out sc_lv 3 signal 5 } 
	{ dst_TUSER sc_out sc_lv 1 signal 6 } 
	{ dst_TLAST sc_out sc_lv 1 signal 7 } 
	{ dst_TID sc_out sc_lv 1 signal 8 } 
	{ dst_TDEST sc_out sc_lv 1 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "rgb2hsv_421_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_421", "role": "dout" }} , 
 	{ "name": "rgb2hsv_421_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_421", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_421_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_421", "role": "read" }} , 
 	{ "name": "img_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_rows", "role": "dout" }} , 
 	{ "name": "img_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows", "role": "empty_n" }} , 
 	{ "name": "img_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_rows", "role": "read" }} , 
 	{ "name": "img_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "img_cols", "role": "dout" }} , 
 	{ "name": "img_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols", "role": "empty_n" }} , 
 	{ "name": "img_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "img_cols", "role": "read" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "dst_V_data_V", "role": "default" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dst_V_keep_V", "role": "default" }} , 
 	{ "name": "dst_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dst_V_strb_V", "role": "default" }} , 
 	{ "name": "dst_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_user_V", "role": "default" }} , 
 	{ "name": "dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_last_V", "role": "default" }} , 
 	{ "name": "dst_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_id_V", "role": "default" }} , 
 	{ "name": "dst_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "xfMat2axis_24_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "8303041",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rgb2hsv_421", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_421_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_user_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_id_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "dst_V_dest_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_data_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_keep_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_strb_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_user_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_id_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_dst_V_dest_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	xfMat2axis_24_9_2160_3840_1_s {
		rgb2hsv_421 {Type I LastRead 3 FirstWrite -1}
		img_rows {Type I LastRead 0 FirstWrite -1}
		img_cols {Type I LastRead 0 FirstWrite -1}
		dst_V_data_V {Type O LastRead -1 FirstWrite 3}
		dst_V_keep_V {Type O LastRead -1 FirstWrite 3}
		dst_V_strb_V {Type O LastRead -1 FirstWrite 3}
		dst_V_user_V {Type O LastRead -1 FirstWrite 3}
		dst_V_last_V {Type O LastRead -1 FirstWrite 3}
		dst_V_id_V {Type O LastRead -1 FirstWrite 3}
		dst_V_dest_V {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "8303041"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "8303041"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	rgb2hsv_421 { ap_fifo {  { rgb2hsv_421_dout fifo_data 0 24 }  { rgb2hsv_421_empty_n fifo_status 0 1 }  { rgb2hsv_421_read fifo_update 1 1 } } }
	img_rows { ap_fifo {  { img_rows_dout fifo_data 0 32 }  { img_rows_empty_n fifo_status 0 1 }  { img_rows_read fifo_update 1 1 } } }
	img_cols { ap_fifo {  { img_cols_dout fifo_data 0 32 }  { img_cols_empty_n fifo_status 0 1 }  { img_cols_read fifo_update 1 1 } } }
	dst_V_data_V { axis {  { dst_TDATA out_data 1 24 } } }
	dst_V_keep_V { axis {  { dst_TKEEP out_data 1 3 } } }
	dst_V_strb_V { axis {  { dst_TSTRB out_data 1 3 } } }
	dst_V_user_V { axis {  { dst_TUSER out_data 1 1 } } }
	dst_V_last_V { axis {  { dst_TLAST out_data 1 1 } } }
	dst_V_id_V { axis {  { dst_TID out_data 1 1 } } }
	dst_V_dest_V { axis {  { dst_TVALID out_vld 1 1 }  { dst_TREADY out_acc 0 1 }  { dst_TDEST out_data 1 1 } } }
}
