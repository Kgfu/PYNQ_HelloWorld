set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_435 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_436 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_435", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_435_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_435_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_435_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_436_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_436_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_436_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_435_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_435", "role": "dout" }} , 
 	{ "name": "imgInput_435_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "empty_n" }} , 
 	{ "name": "imgInput_435_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "read" }} , 
 	{ "name": "rgb2hsv_436_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "din" }} , 
 	{ "name": "rgb2hsv_436_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_436_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_435", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_435_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U32", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U33", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U34", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_435 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_436 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_435 { ap_fifo {  { imgInput_435_dout fifo_data 0 24 }  { imgInput_435_empty_n fifo_status 0 1 }  { imgInput_435_read fifo_update 1 1 } } }
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_din fifo_data 1 24 }  { rgb2hsv_436_full_n fifo_status 0 1 }  { rgb2hsv_436_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_420 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_421 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_420", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_421", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_420_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_420_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_420_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_421_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_421_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_421_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_420_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_420", "role": "dout" }} , 
 	{ "name": "imgInput_420_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_420", "role": "empty_n" }} , 
 	{ "name": "imgInput_420_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_420", "role": "read" }} , 
 	{ "name": "rgb2hsv_421_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_421", "role": "din" }} , 
 	{ "name": "rgb2hsv_421_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_421", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_421_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_421", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_420", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_420_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_421", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_421_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U26", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U27", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U28", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_420 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_421 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_420 { ap_fifo {  { imgInput_420_dout fifo_data 0 24 }  { imgInput_420_empty_n fifo_status 0 1 }  { imgInput_420_read fifo_update 1 1 } } }
	rgb2hsv_421 { ap_fifo {  { rgb2hsv_421_din fifo_data 1 24 }  { rgb2hsv_421_full_n fifo_status 0 1 }  { rgb2hsv_421_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_435 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_436 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_435", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_435_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_435_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_435_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_436_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_436_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_436_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_435_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_435", "role": "dout" }} , 
 	{ "name": "imgInput_435_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "empty_n" }} , 
 	{ "name": "imgInput_435_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "read" }} , 
 	{ "name": "rgb2hsv_436_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "din" }} , 
 	{ "name": "rgb2hsv_436_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_436_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_435", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_435_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U28", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U29", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_435 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_436 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_435 { ap_fifo {  { imgInput_435_dout fifo_data 0 24 }  { imgInput_435_empty_n fifo_status 0 1 }  { imgInput_435_read fifo_update 1 1 } } }
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_din fifo_data 1 24 }  { rgb2hsv_436_full_n fifo_status 0 1 }  { rgb2hsv_436_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_435 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_436 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_435", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_435_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_435_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_435_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_436_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_436_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_436_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_435_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_435", "role": "dout" }} , 
 	{ "name": "imgInput_435_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "empty_n" }} , 
 	{ "name": "imgInput_435_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "read" }} , 
 	{ "name": "rgb2hsv_436_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "din" }} , 
 	{ "name": "rgb2hsv_436_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_436_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_435", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_435_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U28", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U29", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_435 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_436 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_435 { ap_fifo {  { imgInput_435_dout fifo_data 0 24 }  { imgInput_435_empty_n fifo_status 0 1 }  { imgInput_435_read fifo_update 1 1 } } }
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_din fifo_data 1 24 }  { rgb2hsv_436_full_n fifo_status 0 1 }  { rgb2hsv_436_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_435 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_436 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_435", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_435_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_435_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_435_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_436_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_436_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_436_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_435_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_435", "role": "dout" }} , 
 	{ "name": "imgInput_435_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "empty_n" }} , 
 	{ "name": "imgInput_435_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "read" }} , 
 	{ "name": "rgb2hsv_436_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "din" }} , 
 	{ "name": "rgb2hsv_436_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_436_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_435", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_435_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U32", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U33", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U34", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_435 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_436 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_435 { ap_fifo {  { imgInput_435_dout fifo_data 0 24 }  { imgInput_435_empty_n fifo_status 0 1 }  { imgInput_435_read fifo_update 1 1 } } }
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_din fifo_data 1 24 }  { rgb2hsv_436_full_n fifo_status 0 1 }  { rgb2hsv_436_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_435 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_436 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_435", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_435_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_435_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_435_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_436_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_436_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_436_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_435_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_435", "role": "dout" }} , 
 	{ "name": "imgInput_435_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "empty_n" }} , 
 	{ "name": "imgInput_435_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_435", "role": "read" }} , 
 	{ "name": "rgb2hsv_436_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "din" }} , 
 	{ "name": "rgb2hsv_436_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_436_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_435", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_435_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U28", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U29", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U30", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_435 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_436 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_435 { ap_fifo {  { imgInput_435_dout fifo_data 0 24 }  { imgInput_435_empty_n fifo_status 0 1 }  { imgInput_435_read fifo_update 1 1 } } }
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_din fifo_data 1 24 }  { rgb2hsv_436_full_n fifo_status 0 1 }  { rgb2hsv_436_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_499 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_4100 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_499", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_499_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_499_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_499_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_4100_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_4100_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_499_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_499", "role": "dout" }} , 
 	{ "name": "imgInput_499_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "empty_n" }} , 
 	{ "name": "imgInput_499_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "read" }} , 
 	{ "name": "rgb2hsv_4100_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "din" }} , 
 	{ "name": "rgb2hsv_4100_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_4100_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_499", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_499_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U36", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U37", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U38", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_499 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_4100 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_499 { ap_fifo {  { imgInput_499_dout fifo_data 0 24 }  { imgInput_499_empty_n fifo_status 0 1 }  { imgInput_499_read fifo_update 1 1 } } }
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_din fifo_data 1 24 }  { rgb2hsv_4100_full_n fifo_status 0 1 }  { rgb2hsv_4100_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_499 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_4100 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_499", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_499_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_499_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_499_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_4100_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_4100_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_499_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_499", "role": "dout" }} , 
 	{ "name": "imgInput_499_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "empty_n" }} , 
 	{ "name": "imgInput_499_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "read" }} , 
 	{ "name": "rgb2hsv_4100_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "din" }} , 
 	{ "name": "rgb2hsv_4100_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_4100_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_499", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_499_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U54", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U55", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U56", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_499 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_4100 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_499 { ap_fifo {  { imgInput_499_dout fifo_data 0 24 }  { imgInput_499_empty_n fifo_status 0 1 }  { imgInput_499_read fifo_update 1 1 } } }
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_din fifo_data 1 24 }  { rgb2hsv_4100_full_n fifo_status 0 1 }  { rgb2hsv_4100_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_499 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_4100 int 24 regular {fifo 1 volatile }  }
	{ p_read int 12 regular  }
	{ p_read1 int 12 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_499", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_499_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_499_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_499_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_4100_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_4100_write sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 12 signal 2 } 
	{ p_read1 sc_in sc_lv 12 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_499_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_499", "role": "dout" }} , 
 	{ "name": "imgInput_499_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "empty_n" }} , 
 	{ "name": "imgInput_499_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "read" }} , 
 	{ "name": "rgb2hsv_4100_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "din" }} , 
 	{ "name": "rgb2hsv_4100_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_4100_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "write" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "8294414",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_499", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgInput_499_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_12ns_24_4_1_U1", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U2", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U3", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_499 {Type I LastRead 5 FirstWrite -1}
		rgb2hsv_4100 {Type O LastRead -1 FirstWrite 14}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5", "Max" : "8294414"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "8294414"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_499 { ap_fifo {  { imgInput_499_dout fifo_data 0 24 }  { imgInput_499_empty_n fifo_status 0 1 }  { imgInput_499_read fifo_update 1 1 } } }
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_din fifo_data 1 24 }  { rgb2hsv_4100_full_n fifo_status 0 1 }  { rgb2hsv_4100_write fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 12 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 12 } } }
}
set moduleName bgr2hsv_9_2160_3840_1_s
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
set C_modelName {bgr2hsv<9, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgInput_499 int 24 regular {fifo 0 volatile }  }
	{ rgb2hsv_4100 int 24 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgInput_499", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ imgInput_499_dout sc_in sc_lv 24 signal 0 } 
	{ imgInput_499_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgInput_499_read sc_out sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_din sc_out sc_lv 24 signal 1 } 
	{ rgb2hsv_4100_full_n sc_in sc_logic 1 signal 1 } 
	{ rgb2hsv_4100_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgInput_499_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "imgInput_499", "role": "dout" }} , 
 	{ "name": "imgInput_499_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "empty_n" }} , 
 	{ "name": "imgInput_499_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_499", "role": "read" }} , 
 	{ "name": "rgb2hsv_4100_din", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "din" }} , 
 	{ "name": "rgb2hsv_4100_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_4100_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "write" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "bgr2hsv_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgInput_499", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_499_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xf_cv_icvSaturate8u_cv_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U54", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_20s_8ns_13ns_20_4_1_U55", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U56", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	bgr2hsv_9_2160_3840_1_s {
		imgInput_499 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_4100 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "8294412"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	imgInput_499 { ap_fifo {  { imgInput_499_dout fifo_data 0 24 }  { imgInput_499_empty_n fifo_status 0 1 }  { imgInput_499_read fifo_update 1 1 } } }
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_din fifo_data 1 24 }  { rgb2hsv_4100_full_n fifo_status 0 1 }  { rgb2hsv_4100_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
