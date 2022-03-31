set moduleName colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29
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
set C_modelName {colorthresholding<9, 0, 3, 2160, 3840, 1>_Loop_VITIS_LOOP_138_1_proc29}
set C_modelType { int 144 }
set C_modelArgList {
	{ low_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ high_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ p_read18 int 12 regular  }
	{ p_read119 int 12 regular  }
	{ p_read_out int 12 regular {fifo 1}  }
	{ p_read1_out int 12 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "low_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_read119", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_read_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read1_out", "interface" : "fifo", "bitwidth" : 12, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 144} ]}
# RTL Port declarations: 
set portNum 45
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ low_thresh_address0 sc_out sc_lv 4 signal 0 } 
	{ low_thresh_ce0 sc_out sc_logic 1 signal 0 } 
	{ low_thresh_q0 sc_in sc_lv 8 signal 0 } 
	{ low_thresh_address1 sc_out sc_lv 4 signal 0 } 
	{ low_thresh_ce1 sc_out sc_logic 1 signal 0 } 
	{ low_thresh_q1 sc_in sc_lv 8 signal 0 } 
	{ high_thresh_address0 sc_out sc_lv 4 signal 1 } 
	{ high_thresh_ce0 sc_out sc_logic 1 signal 1 } 
	{ high_thresh_q0 sc_in sc_lv 8 signal 1 } 
	{ high_thresh_address1 sc_out sc_lv 4 signal 1 } 
	{ high_thresh_ce1 sc_out sc_logic 1 signal 1 } 
	{ high_thresh_q1 sc_in sc_lv 8 signal 1 } 
	{ p_read18 sc_in sc_lv 12 signal 2 } 
	{ p_read119 sc_in sc_lv 12 signal 3 } 
	{ p_read_out_din sc_out sc_lv 12 signal 4 } 
	{ p_read_out_full_n sc_in sc_logic 1 signal 4 } 
	{ p_read_out_write sc_out sc_logic 1 signal 4 } 
	{ p_read1_out_din sc_out sc_lv 12 signal 5 } 
	{ p_read1_out_full_n sc_in sc_logic 1 signal 5 } 
	{ p_read1_out_write sc_out sc_logic 1 signal 5 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
	{ ap_return_5 sc_out sc_lv 8 signal -1 } 
	{ ap_return_6 sc_out sc_lv 8 signal -1 } 
	{ ap_return_7 sc_out sc_lv 8 signal -1 } 
	{ ap_return_8 sc_out sc_lv 8 signal -1 } 
	{ ap_return_9 sc_out sc_lv 8 signal -1 } 
	{ ap_return_10 sc_out sc_lv 8 signal -1 } 
	{ ap_return_11 sc_out sc_lv 8 signal -1 } 
	{ ap_return_12 sc_out sc_lv 8 signal -1 } 
	{ ap_return_13 sc_out sc_lv 8 signal -1 } 
	{ ap_return_14 sc_out sc_lv 8 signal -1 } 
	{ ap_return_15 sc_out sc_lv 8 signal -1 } 
	{ ap_return_16 sc_out sc_lv 8 signal -1 } 
	{ ap_return_17 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "low_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address0" }} , 
 	{ "name": "low_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce0" }} , 
 	{ "name": "low_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q0" }} , 
 	{ "name": "low_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address1" }} , 
 	{ "name": "low_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce1" }} , 
 	{ "name": "low_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q1" }} , 
 	{ "name": "high_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address0" }} , 
 	{ "name": "high_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce0" }} , 
 	{ "name": "high_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q0" }} , 
 	{ "name": "high_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address1" }} , 
 	{ "name": "high_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce1" }} , 
 	{ "name": "high_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q1" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read119", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read119", "role": "default" }} , 
 	{ "name": "p_read_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read_out", "role": "din" }} , 
 	{ "name": "p_read_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read_out", "role": "full_n" }} , 
 	{ "name": "p_read_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read_out", "role": "write" }} , 
 	{ "name": "p_read1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read1_out", "role": "din" }} , 
 	{ "name": "p_read1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read1_out", "role": "full_n" }} , 
 	{ "name": "p_read1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_read1_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read119", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_read1_out_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29 {
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read119 {Type I LastRead 0 FirstWrite -1}
		p_read_out {Type O LastRead -1 FirstWrite 0}
		p_read1_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8", "Max" : "8"}
	, {"Name" : "Interval", "Min" : "8", "Max" : "8"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	low_thresh { ap_memory {  { low_thresh_address0 mem_address 1 4 }  { low_thresh_ce0 mem_ce 1 1 }  { low_thresh_q0 mem_dout 0 8 }  { low_thresh_address1 MemPortADDR2 1 4 }  { low_thresh_ce1 MemPortCE2 1 1 }  { low_thresh_q1 MemPortDOUT2 0 8 } } }
	high_thresh { ap_memory {  { high_thresh_address0 mem_address 1 4 }  { high_thresh_ce0 mem_ce 1 1 }  { high_thresh_q0 mem_dout 0 8 }  { high_thresh_address1 MemPortADDR2 1 4 }  { high_thresh_ce1 MemPortCE2 1 1 }  { high_thresh_q1 MemPortDOUT2 0 8 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 12 } } }
	p_read119 { ap_none {  { p_read119 in_data 0 12 } } }
	p_read_out { ap_fifo {  { p_read_out_din fifo_data 1 12 }  { p_read_out_full_n fifo_status 0 1 }  { p_read_out_write fifo_update 1 1 } } }
	p_read1_out { ap_fifo {  { p_read1_out_din fifo_data 1 12 }  { p_read1_out_full_n fifo_status 0 1 }  { p_read1_out_write fifo_update 1 1 } } }
}
