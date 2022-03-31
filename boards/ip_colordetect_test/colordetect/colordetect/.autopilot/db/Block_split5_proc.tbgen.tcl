set moduleName Block_split5_proc
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
set C_modelName {Block_.split5_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ t1 int 32 regular {fifo 0}  }
	{ low_t int 8 regular {array 9 { 1 3 } 1 1 }  }
	{ high_t int 8 regular {array 9 { 1 3 } 1 1 }  }
	{ t2 int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t1_dout sc_in sc_lv 32 signal 0 } 
	{ t1_empty_n sc_in sc_logic 1 signal 0 } 
	{ t1_read sc_out sc_logic 1 signal 0 } 
	{ low_t_address0 sc_out sc_lv 4 signal 1 } 
	{ low_t_ce0 sc_out sc_logic 1 signal 1 } 
	{ low_t_q0 sc_in sc_lv 8 signal 1 } 
	{ high_t_address0 sc_out sc_lv 4 signal 2 } 
	{ high_t_ce0 sc_out sc_logic 1 signal 2 } 
	{ high_t_q0 sc_in sc_lv 8 signal 2 } 
	{ t2 sc_out sc_lv 32 signal 3 } 
	{ t2_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t1", "role": "dout" }} , 
 	{ "name": "t1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "empty_n" }} , 
 	{ "name": "t1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "read" }} , 
 	{ "name": "low_t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_t", "role": "address0" }} , 
 	{ "name": "low_t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_t", "role": "ce0" }} , 
 	{ "name": "low_t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_t", "role": "q0" }} , 
 	{ "name": "high_t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_t", "role": "address0" }} , 
 	{ "name": "high_t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_t", "role": "ce0" }} , 
 	{ "name": "high_t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_t", "role": "q0" }} , 
 	{ "name": "t2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t2", "role": "default" }} , 
 	{ "name": "t2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t2", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_split5_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "t1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_t", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "high_t", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "t2", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Block_split5_proc {
		t1 {Type I LastRead 0 FirstWrite -1}
		low_t {Type I LastRead 0 FirstWrite -1}
		high_t {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t1 { ap_fifo {  { t1_dout fifo_data 0 32 }  { t1_empty_n fifo_status 0 1 }  { t1_read fifo_update 1 1 } } }
	low_t { ap_memory {  { low_t_address0 mem_address 1 4 }  { low_t_ce0 mem_ce 1 1 }  { low_t_q0 mem_dout 0 8 } } }
	high_t { ap_memory {  { high_t_address0 mem_address 1 4 }  { high_t_ce0 mem_ce 1 1 }  { high_t_q0 mem_dout 0 8 } } }
	t2 { ap_vld {  { t2 out_data 1 32 }  { t2_ap_vld out_vld 1 1 } } }
}
set moduleName Block_split5_proc
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
set C_modelName {Block_.split5_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ t1 int 32 regular {fifo 0}  }
	{ low_t int 8 regular {array 9 { 1 3 } 1 1 }  }
	{ high_t int 8 regular {array 9 { 1 3 } 1 1 }  }
	{ t2 int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "t1", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_t", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "t2", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ t1_dout sc_in sc_lv 32 signal 0 } 
	{ t1_empty_n sc_in sc_logic 1 signal 0 } 
	{ t1_read sc_out sc_logic 1 signal 0 } 
	{ low_t_address0 sc_out sc_lv 4 signal 1 } 
	{ low_t_ce0 sc_out sc_logic 1 signal 1 } 
	{ low_t_q0 sc_in sc_lv 8 signal 1 } 
	{ high_t_address0 sc_out sc_lv 4 signal 2 } 
	{ high_t_ce0 sc_out sc_logic 1 signal 2 } 
	{ high_t_q0 sc_in sc_lv 8 signal 2 } 
	{ t2 sc_out sc_lv 32 signal 3 } 
	{ t2_ap_vld sc_out sc_logic 1 outvld 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "t1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t1", "role": "dout" }} , 
 	{ "name": "t1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "empty_n" }} , 
 	{ "name": "t1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "t1", "role": "read" }} , 
 	{ "name": "low_t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_t", "role": "address0" }} , 
 	{ "name": "low_t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_t", "role": "ce0" }} , 
 	{ "name": "low_t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_t", "role": "q0" }} , 
 	{ "name": "high_t_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_t", "role": "address0" }} , 
 	{ "name": "high_t_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_t", "role": "ce0" }} , 
 	{ "name": "high_t_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_t", "role": "q0" }} , 
 	{ "name": "t2", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "t2", "role": "default" }} , 
 	{ "name": "t2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t2", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "Block_split5_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "t1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "t1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_t", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "high_t", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "t2", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	Block_split5_proc {
		t1 {Type I LastRead 0 FirstWrite -1}
		low_t {Type I LastRead 0 FirstWrite -1}
		high_t {Type I LastRead 0 FirstWrite -1}
		t2 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	t1 { ap_fifo {  { t1_dout fifo_data 0 32 }  { t1_empty_n fifo_status 0 1 }  { t1_read fifo_update 1 1 } } }
	low_t { ap_memory {  { low_t_address0 mem_address 1 4 }  { low_t_ce0 mem_ce 1 1 }  { low_t_q0 mem_dout 0 8 } } }
	high_t { ap_memory {  { high_t_address0 mem_address 1 4 }  { high_t_ce0 mem_ce 1 1 }  { high_t_q0 mem_dout 0 8 } } }
	t2 { ap_vld {  { t2 out_data 1 32 }  { t2_ap_vld out_vld 1 1 } } }
}
