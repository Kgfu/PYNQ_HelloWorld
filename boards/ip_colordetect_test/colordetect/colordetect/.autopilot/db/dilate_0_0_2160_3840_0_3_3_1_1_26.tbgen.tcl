set moduleName dilate_0_0_2160_3840_0_3_3_1_1_26
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
set C_modelName {dilate<0, 0, 2160, 3840, 0, 3, 3, 1, 1>26}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgHelper2_4102 int 8 regular {fifo 0 volatile }  }
	{ imgHelper3_4103 int 8 regular {fifo 1 volatile }  }
	{ p_src_rows int 32 regular {fifo 0}  }
	{ p_src_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgHelper2_4102", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper3_4103", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ imgHelper2_4102_dout sc_in sc_lv 8 signal 0 } 
	{ imgHelper2_4102_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgHelper2_4102_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper3_4103_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper3_4103_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper3_4103_write sc_out sc_logic 1 signal 1 } 
	{ p_src_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgHelper2_4102_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper2_4102", "role": "dout" }} , 
 	{ "name": "imgHelper2_4102_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_4102", "role": "empty_n" }} , 
 	{ "name": "imgHelper2_4102_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_4102", "role": "read" }} , 
 	{ "name": "imgHelper3_4103_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper3_4103", "role": "din" }} , 
 	{ "name": "imgHelper3_4103_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_4103", "role": "full_n" }} , 
 	{ "name": "imgHelper3_4103_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_4103", "role": "write" }} , 
 	{ "name": "p_src_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_rows", "role": "dout" }} , 
 	{ "name": "p_src_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "read" }} , 
 	{ "name": "p_src_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_cols", "role": "dout" }} , 
 	{ "name": "p_src_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dilate_0_0_2160_3840_0_3_3_1_1_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "8319373",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper2_4102"}]},
			{"Name" : "imgHelper3_4103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper3_4103"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "xfdilate_2160_3840_1_0_1_0_3841_3_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "8319372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgHelper2_4102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper3_4103", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgHelper3_4103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_0_1_xfExtractPixels_1_1_0_s_fu_460", "Parent" : "1",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_1_1_xfExtractPixels_1_1_0_s_fu_466", "Parent" : "1",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_2_1_xfExtractPixels_1_1_0_s_fu_472", "Parent" : "1",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U145", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U146", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dilate_0_0_2160_3840_0_3_3_1_1_26 {
		imgHelper2_4102 {Type I LastRead 9 FirstWrite -1}
		imgHelper3_4103 {Type O LastRead -1 FirstWrite 13}
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}}
	xfdilate_2160_3840_1_0_1_0_3841_3_3_s {
		imgHelper2_4102 {Type I LastRead 9 FirstWrite -1}
		imgHelper3_4103 {Type O LastRead -1 FirstWrite 13}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "8319373"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "8319373"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgHelper2_4102 { ap_fifo {  { imgHelper2_4102_dout fifo_data 0 8 }  { imgHelper2_4102_empty_n fifo_status 0 1 }  { imgHelper2_4102_read fifo_update 1 1 } } }
	imgHelper3_4103 { ap_fifo {  { imgHelper3_4103_din fifo_data 1 8 }  { imgHelper3_4103_full_n fifo_status 0 1 }  { imgHelper3_4103_write fifo_update 1 1 } } }
	p_src_rows { ap_fifo {  { p_src_rows_dout fifo_data 0 32 }  { p_src_rows_empty_n fifo_status 0 1 }  { p_src_rows_read fifo_update 1 1 } } }
	p_src_cols { ap_fifo {  { p_src_cols_dout fifo_data 0 32 }  { p_src_cols_empty_n fifo_status 0 1 }  { p_src_cols_read fifo_update 1 1 } } }
}
set moduleName dilate_0_0_2160_3840_0_3_3_1_1_26
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
set C_modelName {dilate<0, 0, 2160, 3840, 0, 3, 3, 1, 1>26}
set C_modelType { void 0 }
set C_modelArgList {
	{ imgHelper2_4102 int 8 regular {fifo 0 volatile }  }
	{ imgHelper3_4103 int 8 regular {fifo 1 volatile }  }
	{ p_src_rows int 32 regular {fifo 0}  }
	{ p_src_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "imgHelper2_4102", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper3_4103", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
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
	{ imgHelper2_4102_dout sc_in sc_lv 8 signal 0 } 
	{ imgHelper2_4102_empty_n sc_in sc_logic 1 signal 0 } 
	{ imgHelper2_4102_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper3_4103_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper3_4103_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper3_4103_write sc_out sc_logic 1 signal 1 } 
	{ p_src_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_cols_read sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "imgHelper2_4102_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper2_4102", "role": "dout" }} , 
 	{ "name": "imgHelper2_4102_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_4102", "role": "empty_n" }} , 
 	{ "name": "imgHelper2_4102_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_4102", "role": "read" }} , 
 	{ "name": "imgHelper3_4103_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper3_4103", "role": "din" }} , 
 	{ "name": "imgHelper3_4103_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_4103", "role": "full_n" }} , 
 	{ "name": "imgHelper3_4103_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_4103", "role": "write" }} , 
 	{ "name": "p_src_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_rows", "role": "dout" }} , 
 	{ "name": "p_src_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_rows", "role": "read" }} , 
 	{ "name": "p_src_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_cols", "role": "dout" }} , 
 	{ "name": "p_src_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_cols", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dilate_0_0_2160_3840_0_3_3_1_1_26",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "8319373",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper2_4102"}]},
			{"Name" : "imgHelper3_4103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper3_4103"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "xfdilate_2160_3840_1_0_1_0_3841_3_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "8319372",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgHelper2_4102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper3_4103", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgHelper3_4103_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_0_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_1_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_2_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_0_1_xfExtractPixels_1_1_0_s_fu_460", "Parent" : "1",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_1_1_xfExtractPixels_1_1_0_s_fu_466", "Parent" : "1",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_2_1_xfExtractPixels_1_1_0_s_fu_472", "Parent" : "1",
		"CDFG" : "xfExtractPixels_1_1_0_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U145", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U146", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dilate_0_0_2160_3840_0_3_3_1_1_26 {
		imgHelper2_4102 {Type I LastRead 9 FirstWrite -1}
		imgHelper3_4103 {Type O LastRead -1 FirstWrite 13}
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}}
	xfdilate_2160_3840_1_0_1_0_3841_3_3_s {
		imgHelper2_4102 {Type I LastRead 9 FirstWrite -1}
		imgHelper3_4103 {Type O LastRead -1 FirstWrite 13}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "8319373"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "8319373"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	imgHelper2_4102 { ap_fifo {  { imgHelper2_4102_dout fifo_data 0 8 }  { imgHelper2_4102_empty_n fifo_status 0 1 }  { imgHelper2_4102_read fifo_update 1 1 } } }
	imgHelper3_4103 { ap_fifo {  { imgHelper3_4103_din fifo_data 1 8 }  { imgHelper3_4103_full_n fifo_status 0 1 }  { imgHelper3_4103_write fifo_update 1 1 } } }
	p_src_rows { ap_fifo {  { p_src_rows_dout fifo_data 0 32 }  { p_src_rows_empty_n fifo_status 0 1 }  { p_src_rows_read fifo_update 1 1 } } }
	p_src_cols { ap_fifo {  { p_src_cols_dout fifo_data 0 32 }  { p_src_cols_empty_n fifo_status 0 1 }  { p_src_cols_read fifo_update 1 1 } } }
}
