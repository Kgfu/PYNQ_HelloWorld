set moduleName Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii.exit1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ imgInput_rows_out int 32 regular {fifo 1}  }
	{ imgInput_cols_out int 32 regular {fifo 1}  }
	{ rgb2hsv_rows_out int 32 regular {fifo 1}  }
	{ rgb2hsv_cols_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgInput_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 24
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ imgInput_rows_out_din sc_out sc_lv 32 signal 2 } 
	{ imgInput_rows_out_full_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_rows_out_write sc_out sc_logic 1 signal 2 } 
	{ imgInput_cols_out_din sc_out sc_lv 32 signal 3 } 
	{ imgInput_cols_out_full_n sc_in sc_logic 1 signal 3 } 
	{ imgInput_cols_out_write sc_out sc_logic 1 signal 3 } 
	{ rgb2hsv_rows_out_din sc_out sc_lv 32 signal 4 } 
	{ rgb2hsv_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ rgb2hsv_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ rgb2hsv_cols_out_din sc_out sc_lv 32 signal 5 } 
	{ rgb2hsv_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ rgb2hsv_cols_out_write sc_out sc_logic 1 signal 5 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "imgInput_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "din" }} , 
 	{ "name": "imgInput_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "full_n" }} , 
 	{ "name": "imgInput_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "write" }} , 
 	{ "name": "imgInput_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "din" }} , 
 	{ "name": "imgInput_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "full_n" }} , 
 	{ "name": "imgInput_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		imgInput_rows_out {Type O LastRead -1 FirstWrite 0}
		imgInput_cols_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_rows_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	imgInput_rows_out { ap_fifo {  { imgInput_rows_out_din fifo_data 1 32 }  { imgInput_rows_out_full_n fifo_status 0 1 }  { imgInput_rows_out_write fifo_update 1 1 } } }
	imgInput_cols_out { ap_fifo {  { imgInput_cols_out_din fifo_data 1 32 }  { imgInput_cols_out_full_n fifo_status 0 1 }  { imgInput_cols_out_write fifo_update 1 1 } } }
	rgb2hsv_rows_out { ap_fifo {  { rgb2hsv_rows_out_din fifo_data 1 32 }  { rgb2hsv_rows_out_full_n fifo_status 0 1 }  { rgb2hsv_rows_out_write fifo_update 1 1 } } }
	rgb2hsv_cols_out { ap_fifo {  { rgb2hsv_cols_out_din fifo_data 1 32 }  { rgb2hsv_cols_out_full_n fifo_status 0 1 }  { rgb2hsv_cols_out_write fifo_update 1 1 } } }
}
set moduleName Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii.exit1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ imgInput_rows_out int 32 regular {fifo 1}  }
	{ imgInput_cols_out int 32 regular {fifo 1}  }
	{ rgb2hsv_rows_out int 32 regular {fifo 1}  }
	{ rgb2hsv_cols_out int 32 regular {fifo 1}  }
	{ imgHelper1_rows_out int 32 regular {fifo 1}  }
	{ imgHelper1_cols_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgInput_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ imgInput_rows_out_din sc_out sc_lv 32 signal 2 } 
	{ imgInput_rows_out_full_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_rows_out_write sc_out sc_logic 1 signal 2 } 
	{ imgInput_cols_out_din sc_out sc_lv 32 signal 3 } 
	{ imgInput_cols_out_full_n sc_in sc_logic 1 signal 3 } 
	{ imgInput_cols_out_write sc_out sc_logic 1 signal 3 } 
	{ rgb2hsv_rows_out_din sc_out sc_lv 32 signal 4 } 
	{ rgb2hsv_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ rgb2hsv_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ rgb2hsv_cols_out_din sc_out sc_lv 32 signal 5 } 
	{ rgb2hsv_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ rgb2hsv_cols_out_write sc_out sc_logic 1 signal 5 } 
	{ imgHelper1_rows_out_din sc_out sc_lv 32 signal 6 } 
	{ imgHelper1_rows_out_full_n sc_in sc_logic 1 signal 6 } 
	{ imgHelper1_rows_out_write sc_out sc_logic 1 signal 6 } 
	{ imgHelper1_cols_out_din sc_out sc_lv 32 signal 7 } 
	{ imgHelper1_cols_out_full_n sc_in sc_logic 1 signal 7 } 
	{ imgHelper1_cols_out_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "imgInput_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "din" }} , 
 	{ "name": "imgInput_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "full_n" }} , 
 	{ "name": "imgInput_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "write" }} , 
 	{ "name": "imgInput_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "din" }} , 
 	{ "name": "imgInput_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "full_n" }} , 
 	{ "name": "imgInput_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper1_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper1_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper1_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper1_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		imgInput_rows_out {Type O LastRead -1 FirstWrite 0}
		imgInput_cols_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_rows_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	imgInput_rows_out { ap_fifo {  { imgInput_rows_out_din fifo_data 1 32 }  { imgInput_rows_out_full_n fifo_status 0 1 }  { imgInput_rows_out_write fifo_update 1 1 } } }
	imgInput_cols_out { ap_fifo {  { imgInput_cols_out_din fifo_data 1 32 }  { imgInput_cols_out_full_n fifo_status 0 1 }  { imgInput_cols_out_write fifo_update 1 1 } } }
	rgb2hsv_rows_out { ap_fifo {  { rgb2hsv_rows_out_din fifo_data 1 32 }  { rgb2hsv_rows_out_full_n fifo_status 0 1 }  { rgb2hsv_rows_out_write fifo_update 1 1 } } }
	rgb2hsv_cols_out { ap_fifo {  { rgb2hsv_cols_out_din fifo_data 1 32 }  { rgb2hsv_cols_out_full_n fifo_status 0 1 }  { rgb2hsv_cols_out_write fifo_update 1 1 } } }
	imgHelper1_rows_out { ap_fifo {  { imgHelper1_rows_out_din fifo_data 1 32 }  { imgHelper1_rows_out_full_n fifo_status 0 1 }  { imgHelper1_rows_out_write fifo_update 1 1 } } }
	imgHelper1_cols_out { ap_fifo {  { imgHelper1_cols_out_din fifo_data 1 32 }  { imgHelper1_cols_out_full_n fifo_status 0 1 }  { imgHelper1_cols_out_write fifo_update 1 1 } } }
}
set moduleName Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii.exit1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ imgInput_rows_out int 32 regular {fifo 1}  }
	{ imgInput_cols_out int 32 regular {fifo 1}  }
	{ rgb2hsv_rows_out int 32 regular {fifo 1}  }
	{ rgb2hsv_cols_out int 32 regular {fifo 1}  }
	{ imgHelper1_rows_out int 32 regular {fifo 1}  }
	{ imgHelper1_cols_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgInput_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ imgInput_rows_out_din sc_out sc_lv 32 signal 2 } 
	{ imgInput_rows_out_full_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_rows_out_write sc_out sc_logic 1 signal 2 } 
	{ imgInput_cols_out_din sc_out sc_lv 32 signal 3 } 
	{ imgInput_cols_out_full_n sc_in sc_logic 1 signal 3 } 
	{ imgInput_cols_out_write sc_out sc_logic 1 signal 3 } 
	{ rgb2hsv_rows_out_din sc_out sc_lv 32 signal 4 } 
	{ rgb2hsv_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ rgb2hsv_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ rgb2hsv_cols_out_din sc_out sc_lv 32 signal 5 } 
	{ rgb2hsv_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ rgb2hsv_cols_out_write sc_out sc_logic 1 signal 5 } 
	{ imgHelper1_rows_out_din sc_out sc_lv 32 signal 6 } 
	{ imgHelper1_rows_out_full_n sc_in sc_logic 1 signal 6 } 
	{ imgHelper1_rows_out_write sc_out sc_logic 1 signal 6 } 
	{ imgHelper1_cols_out_din sc_out sc_lv 32 signal 7 } 
	{ imgHelper1_cols_out_full_n sc_in sc_logic 1 signal 7 } 
	{ imgHelper1_cols_out_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "imgInput_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "din" }} , 
 	{ "name": "imgInput_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "full_n" }} , 
 	{ "name": "imgInput_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "write" }} , 
 	{ "name": "imgInput_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "din" }} , 
 	{ "name": "imgInput_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "full_n" }} , 
 	{ "name": "imgInput_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper1_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper1_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper1_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper1_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		imgInput_rows_out {Type O LastRead -1 FirstWrite 0}
		imgInput_cols_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_rows_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	imgInput_rows_out { ap_fifo {  { imgInput_rows_out_din fifo_data 1 32 }  { imgInput_rows_out_full_n fifo_status 0 1 }  { imgInput_rows_out_write fifo_update 1 1 } } }
	imgInput_cols_out { ap_fifo {  { imgInput_cols_out_din fifo_data 1 32 }  { imgInput_cols_out_full_n fifo_status 0 1 }  { imgInput_cols_out_write fifo_update 1 1 } } }
	rgb2hsv_rows_out { ap_fifo {  { rgb2hsv_rows_out_din fifo_data 1 32 }  { rgb2hsv_rows_out_full_n fifo_status 0 1 }  { rgb2hsv_rows_out_write fifo_update 1 1 } } }
	rgb2hsv_cols_out { ap_fifo {  { rgb2hsv_cols_out_din fifo_data 1 32 }  { rgb2hsv_cols_out_full_n fifo_status 0 1 }  { rgb2hsv_cols_out_write fifo_update 1 1 } } }
	imgHelper1_rows_out { ap_fifo {  { imgHelper1_rows_out_din fifo_data 1 32 }  { imgHelper1_rows_out_full_n fifo_status 0 1 }  { imgHelper1_rows_out_write fifo_update 1 1 } } }
	imgHelper1_cols_out { ap_fifo {  { imgHelper1_cols_out_din fifo_data 1 32 }  { imgHelper1_cols_out_full_n fifo_status 0 1 }  { imgHelper1_cols_out_write fifo_update 1 1 } } }
}
set moduleName Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii.exit1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ imgInput_rows_out int 32 regular {fifo 1}  }
	{ imgInput_cols_out int 32 regular {fifo 1}  }
	{ rgb2hsv_rows_out int 32 regular {fifo 1}  }
	{ rgb2hsv_cols_out int 32 regular {fifo 1}  }
	{ imgHelper1_rows_out int 32 regular {fifo 1}  }
	{ imgHelper1_cols_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgInput_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ imgInput_rows_out_din sc_out sc_lv 32 signal 2 } 
	{ imgInput_rows_out_full_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_rows_out_write sc_out sc_logic 1 signal 2 } 
	{ imgInput_cols_out_din sc_out sc_lv 32 signal 3 } 
	{ imgInput_cols_out_full_n sc_in sc_logic 1 signal 3 } 
	{ imgInput_cols_out_write sc_out sc_logic 1 signal 3 } 
	{ rgb2hsv_rows_out_din sc_out sc_lv 32 signal 4 } 
	{ rgb2hsv_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ rgb2hsv_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ rgb2hsv_cols_out_din sc_out sc_lv 32 signal 5 } 
	{ rgb2hsv_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ rgb2hsv_cols_out_write sc_out sc_logic 1 signal 5 } 
	{ imgHelper1_rows_out_din sc_out sc_lv 32 signal 6 } 
	{ imgHelper1_rows_out_full_n sc_in sc_logic 1 signal 6 } 
	{ imgHelper1_rows_out_write sc_out sc_logic 1 signal 6 } 
	{ imgHelper1_cols_out_din sc_out sc_lv 32 signal 7 } 
	{ imgHelper1_cols_out_full_n sc_in sc_logic 1 signal 7 } 
	{ imgHelper1_cols_out_write sc_out sc_logic 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "imgInput_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "din" }} , 
 	{ "name": "imgInput_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "full_n" }} , 
 	{ "name": "imgInput_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "write" }} , 
 	{ "name": "imgInput_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "din" }} , 
 	{ "name": "imgInput_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "full_n" }} , 
 	{ "name": "imgInput_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper1_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper1_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper1_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper1_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		imgInput_rows_out {Type O LastRead -1 FirstWrite 0}
		imgInput_cols_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_rows_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	imgInput_rows_out { ap_fifo {  { imgInput_rows_out_din fifo_data 1 32 }  { imgInput_rows_out_full_n fifo_status 0 1 }  { imgInput_rows_out_write fifo_update 1 1 } } }
	imgInput_cols_out { ap_fifo {  { imgInput_cols_out_din fifo_data 1 32 }  { imgInput_cols_out_full_n fifo_status 0 1 }  { imgInput_cols_out_write fifo_update 1 1 } } }
	rgb2hsv_rows_out { ap_fifo {  { rgb2hsv_rows_out_din fifo_data 1 32 }  { rgb2hsv_rows_out_full_n fifo_status 0 1 }  { rgb2hsv_rows_out_write fifo_update 1 1 } } }
	rgb2hsv_cols_out { ap_fifo {  { rgb2hsv_cols_out_din fifo_data 1 32 }  { rgb2hsv_cols_out_full_n fifo_status 0 1 }  { rgb2hsv_cols_out_write fifo_update 1 1 } } }
	imgHelper1_rows_out { ap_fifo {  { imgHelper1_rows_out_din fifo_data 1 32 }  { imgHelper1_rows_out_full_n fifo_status 0 1 }  { imgHelper1_rows_out_write fifo_update 1 1 } } }
	imgHelper1_cols_out { ap_fifo {  { imgHelper1_cols_out_din fifo_data 1 32 }  { imgHelper1_cols_out_full_n fifo_status 0 1 }  { imgHelper1_cols_out_write fifo_update 1 1 } } }
}
set moduleName Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Block__ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii.exit1_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ rows int 32 regular  }
	{ cols int 32 regular  }
	{ imgInput_rows_out int 32 regular {fifo 1}  }
	{ imgInput_cols_out int 32 regular {fifo 1}  }
	{ rgb2hsv_rows_out int 32 regular {fifo 1}  }
	{ rgb2hsv_cols_out int 32 regular {fifo 1}  }
	{ imgHelper1_rows_out int 32 regular {fifo 1}  }
	{ imgHelper1_cols_out int 32 regular {fifo 1}  }
	{ imgHelper2_rows_out int 32 regular {fifo 1}  }
	{ imgHelper2_cols_out int 32 regular {fifo 1}  }
	{ imgHelper3_rows_out int 32 regular {fifo 1}  }
	{ imgHelper3_cols_out int 32 regular {fifo 1}  }
	{ imgHelper4_rows_out int 32 regular {fifo 1}  }
	{ imgHelper4_cols_out int 32 regular {fifo 1}  }
	{ imgOutput_rows_out int 32 regular {fifo 1}  }
	{ imgOutput_cols_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rows", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "cols", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "imgInput_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgInput_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb2hsv_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper1_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper2_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper2_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper3_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper3_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper4_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgHelper4_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgOutput_rows_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "imgOutput_cols_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 54
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ rows sc_in sc_lv 32 signal 0 } 
	{ cols sc_in sc_lv 32 signal 1 } 
	{ imgInput_rows_out_din sc_out sc_lv 32 signal 2 } 
	{ imgInput_rows_out_full_n sc_in sc_logic 1 signal 2 } 
	{ imgInput_rows_out_write sc_out sc_logic 1 signal 2 } 
	{ imgInput_cols_out_din sc_out sc_lv 32 signal 3 } 
	{ imgInput_cols_out_full_n sc_in sc_logic 1 signal 3 } 
	{ imgInput_cols_out_write sc_out sc_logic 1 signal 3 } 
	{ rgb2hsv_rows_out_din sc_out sc_lv 32 signal 4 } 
	{ rgb2hsv_rows_out_full_n sc_in sc_logic 1 signal 4 } 
	{ rgb2hsv_rows_out_write sc_out sc_logic 1 signal 4 } 
	{ rgb2hsv_cols_out_din sc_out sc_lv 32 signal 5 } 
	{ rgb2hsv_cols_out_full_n sc_in sc_logic 1 signal 5 } 
	{ rgb2hsv_cols_out_write sc_out sc_logic 1 signal 5 } 
	{ imgHelper1_rows_out_din sc_out sc_lv 32 signal 6 } 
	{ imgHelper1_rows_out_full_n sc_in sc_logic 1 signal 6 } 
	{ imgHelper1_rows_out_write sc_out sc_logic 1 signal 6 } 
	{ imgHelper1_cols_out_din sc_out sc_lv 32 signal 7 } 
	{ imgHelper1_cols_out_full_n sc_in sc_logic 1 signal 7 } 
	{ imgHelper1_cols_out_write sc_out sc_logic 1 signal 7 } 
	{ imgHelper2_rows_out_din sc_out sc_lv 32 signal 8 } 
	{ imgHelper2_rows_out_full_n sc_in sc_logic 1 signal 8 } 
	{ imgHelper2_rows_out_write sc_out sc_logic 1 signal 8 } 
	{ imgHelper2_cols_out_din sc_out sc_lv 32 signal 9 } 
	{ imgHelper2_cols_out_full_n sc_in sc_logic 1 signal 9 } 
	{ imgHelper2_cols_out_write sc_out sc_logic 1 signal 9 } 
	{ imgHelper3_rows_out_din sc_out sc_lv 32 signal 10 } 
	{ imgHelper3_rows_out_full_n sc_in sc_logic 1 signal 10 } 
	{ imgHelper3_rows_out_write sc_out sc_logic 1 signal 10 } 
	{ imgHelper3_cols_out_din sc_out sc_lv 32 signal 11 } 
	{ imgHelper3_cols_out_full_n sc_in sc_logic 1 signal 11 } 
	{ imgHelper3_cols_out_write sc_out sc_logic 1 signal 11 } 
	{ imgHelper4_rows_out_din sc_out sc_lv 32 signal 12 } 
	{ imgHelper4_rows_out_full_n sc_in sc_logic 1 signal 12 } 
	{ imgHelper4_rows_out_write sc_out sc_logic 1 signal 12 } 
	{ imgHelper4_cols_out_din sc_out sc_lv 32 signal 13 } 
	{ imgHelper4_cols_out_full_n sc_in sc_logic 1 signal 13 } 
	{ imgHelper4_cols_out_write sc_out sc_logic 1 signal 13 } 
	{ imgOutput_rows_out_din sc_out sc_lv 32 signal 14 } 
	{ imgOutput_rows_out_full_n sc_in sc_logic 1 signal 14 } 
	{ imgOutput_rows_out_write sc_out sc_logic 1 signal 14 } 
	{ imgOutput_cols_out_din sc_out sc_lv 32 signal 15 } 
	{ imgOutput_cols_out_full_n sc_in sc_logic 1 signal 15 } 
	{ imgOutput_cols_out_write sc_out sc_logic 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "rows", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rows", "role": "default" }} , 
 	{ "name": "cols", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cols", "role": "default" }} , 
 	{ "name": "imgInput_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "din" }} , 
 	{ "name": "imgInput_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "full_n" }} , 
 	{ "name": "imgInput_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_rows_out", "role": "write" }} , 
 	{ "name": "imgInput_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "din" }} , 
 	{ "name": "imgInput_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "full_n" }} , 
 	{ "name": "imgInput_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgInput_cols_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_rows_out", "role": "write" }} , 
 	{ "name": "rgb2hsv_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "din" }} , 
 	{ "name": "rgb2hsv_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "full_n" }} , 
 	{ "name": "rgb2hsv_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper1_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper1_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper1_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper1_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper1_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper2_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper2_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper2_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper2_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper2_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper2_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper2_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper2_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper2_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper3_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper3_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper3_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper3_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper3_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper3_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper3_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper3_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper3_cols_out", "role": "write" }} , 
 	{ "name": "imgHelper4_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper4_rows_out", "role": "din" }} , 
 	{ "name": "imgHelper4_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper4_rows_out", "role": "full_n" }} , 
 	{ "name": "imgHelper4_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper4_rows_out", "role": "write" }} , 
 	{ "name": "imgHelper4_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgHelper4_cols_out", "role": "din" }} , 
 	{ "name": "imgHelper4_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper4_cols_out", "role": "full_n" }} , 
 	{ "name": "imgHelper4_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper4_cols_out", "role": "write" }} , 
 	{ "name": "imgOutput_rows_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgOutput_rows_out", "role": "din" }} , 
 	{ "name": "imgOutput_rows_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_rows_out", "role": "full_n" }} , 
 	{ "name": "imgOutput_rows_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_rows_out", "role": "write" }} , 
 	{ "name": "imgOutput_cols_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "imgOutput_cols_out", "role": "din" }} , 
 	{ "name": "imgOutput_cols_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_cols_out", "role": "full_n" }} , 
 	{ "name": "imgOutput_cols_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgOutput_cols_out", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "imgInput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper2_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper2_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper2_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper2_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper3_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper3_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper3_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper3_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper4_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper4_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper4_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper4_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgOutput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgOutput_cols_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc {
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		imgInput_rows_out {Type O LastRead -1 FirstWrite 0}
		imgInput_cols_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_rows_out {Type O LastRead -1 FirstWrite 0}
		rgb2hsv_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper1_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper2_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper2_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper3_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper3_cols_out {Type O LastRead -1 FirstWrite 0}
		imgHelper4_rows_out {Type O LastRead -1 FirstWrite 0}
		imgHelper4_cols_out {Type O LastRead -1 FirstWrite 0}
		imgOutput_rows_out {Type O LastRead -1 FirstWrite 0}
		imgOutput_cols_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rows { ap_none {  { rows in_data 0 32 } } }
	cols { ap_none {  { cols in_data 0 32 } } }
	imgInput_rows_out { ap_fifo {  { imgInput_rows_out_din fifo_data 1 32 }  { imgInput_rows_out_full_n fifo_status 0 1 }  { imgInput_rows_out_write fifo_update 1 1 } } }
	imgInput_cols_out { ap_fifo {  { imgInput_cols_out_din fifo_data 1 32 }  { imgInput_cols_out_full_n fifo_status 0 1 }  { imgInput_cols_out_write fifo_update 1 1 } } }
	rgb2hsv_rows_out { ap_fifo {  { rgb2hsv_rows_out_din fifo_data 1 32 }  { rgb2hsv_rows_out_full_n fifo_status 0 1 }  { rgb2hsv_rows_out_write fifo_update 1 1 } } }
	rgb2hsv_cols_out { ap_fifo {  { rgb2hsv_cols_out_din fifo_data 1 32 }  { rgb2hsv_cols_out_full_n fifo_status 0 1 }  { rgb2hsv_cols_out_write fifo_update 1 1 } } }
	imgHelper1_rows_out { ap_fifo {  { imgHelper1_rows_out_din fifo_data 1 32 }  { imgHelper1_rows_out_full_n fifo_status 0 1 }  { imgHelper1_rows_out_write fifo_update 1 1 } } }
	imgHelper1_cols_out { ap_fifo {  { imgHelper1_cols_out_din fifo_data 1 32 }  { imgHelper1_cols_out_full_n fifo_status 0 1 }  { imgHelper1_cols_out_write fifo_update 1 1 } } }
	imgHelper2_rows_out { ap_fifo {  { imgHelper2_rows_out_din fifo_data 1 32 }  { imgHelper2_rows_out_full_n fifo_status 0 1 }  { imgHelper2_rows_out_write fifo_update 1 1 } } }
	imgHelper2_cols_out { ap_fifo {  { imgHelper2_cols_out_din fifo_data 1 32 }  { imgHelper2_cols_out_full_n fifo_status 0 1 }  { imgHelper2_cols_out_write fifo_update 1 1 } } }
	imgHelper3_rows_out { ap_fifo {  { imgHelper3_rows_out_din fifo_data 1 32 }  { imgHelper3_rows_out_full_n fifo_status 0 1 }  { imgHelper3_rows_out_write fifo_update 1 1 } } }
	imgHelper3_cols_out { ap_fifo {  { imgHelper3_cols_out_din fifo_data 1 32 }  { imgHelper3_cols_out_full_n fifo_status 0 1 }  { imgHelper3_cols_out_write fifo_update 1 1 } } }
	imgHelper4_rows_out { ap_fifo {  { imgHelper4_rows_out_din fifo_data 1 32 }  { imgHelper4_rows_out_full_n fifo_status 0 1 }  { imgHelper4_rows_out_write fifo_update 1 1 } } }
	imgHelper4_cols_out { ap_fifo {  { imgHelper4_cols_out_din fifo_data 1 32 }  { imgHelper4_cols_out_full_n fifo_status 0 1 }  { imgHelper4_cols_out_write fifo_update 1 1 } } }
	imgOutput_rows_out { ap_fifo {  { imgOutput_rows_out_din fifo_data 1 32 }  { imgOutput_rows_out_full_n fifo_status 0 1 }  { imgOutput_rows_out_write fifo_update 1 1 } } }
	imgOutput_cols_out { ap_fifo {  { imgOutput_cols_out_din fifo_data 1 32 }  { imgOutput_cols_out_full_n fifo_status 0 1 }  { imgOutput_cols_out_write fifo_update 1 1 } } }
}
