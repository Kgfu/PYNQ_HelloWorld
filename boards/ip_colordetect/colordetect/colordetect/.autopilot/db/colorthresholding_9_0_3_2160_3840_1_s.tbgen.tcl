set moduleName colorthresholding_9_0_3_2160_3840_1_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {colorthresholding<9, 0, 3, 2160, 3840, 1>}
set C_modelType { void 0 }
set C_modelArgList {
	{ rgb2hsv_4100 int 24 regular {fifo 0 volatile }  }
	{ imgHelper1_4101 int 8 regular {fifo 1 volatile }  }
	{ low_thresh int 8 regular {array 9 { 1 } 1 1 }  }
	{ high_thresh int 8 regular {array 9 { 1 } 1 1 }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_4101", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ rgb2hsv_4100_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_4100_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_4101_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_4101_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_4101_write sc_out sc_logic 1 signal 1 } 
	{ low_thresh_address0 sc_out sc_lv 4 signal 2 } 
	{ low_thresh_ce0 sc_out sc_logic 1 signal 2 } 
	{ low_thresh_d0 sc_out sc_lv 8 signal 2 } 
	{ low_thresh_q0 sc_in sc_lv 8 signal 2 } 
	{ low_thresh_we0 sc_out sc_logic 1 signal 2 } 
	{ high_thresh_address0 sc_out sc_lv 4 signal 3 } 
	{ high_thresh_ce0 sc_out sc_logic 1 signal 3 } 
	{ high_thresh_d0 sc_out sc_lv 8 signal 3 } 
	{ high_thresh_q0 sc_in sc_lv 8 signal 3 } 
	{ high_thresh_we0 sc_out sc_logic 1 signal 3 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 4 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 4 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 5 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rgb2hsv_4100_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "dout" }} , 
 	{ "name": "rgb2hsv_4100_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_4100_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_4100", "role": "read" }} , 
 	{ "name": "imgHelper1_4101_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper1_4101", "role": "din" }} , 
 	{ "name": "imgHelper1_4101_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_4101", "role": "full_n" }} , 
 	{ "name": "imgHelper1_4101_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_4101", "role": "write" }} , 
 	{ "name": "low_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address0" }} , 
 	{ "name": "low_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce0" }} , 
 	{ "name": "low_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d0" }} , 
 	{ "name": "low_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q0" }} , 
 	{ "name": "low_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we0" }} , 
 	{ "name": "high_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address0" }} , 
 	{ "name": "high_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce0" }} , 
 	{ "name": "high_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d0" }} , 
 	{ "name": "high_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q0" }} , 
 	{ "name": "high_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we0" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "8294418",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry29_U0"},
			{"ID" : "2", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_4100"}]},
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_4101"}]},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_thresh"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry29_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry29_U0", "Port" : "p_src_mat_cols"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry29_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry29",
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "1",
		"StartFifo" : "start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "8294406",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_4101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "8", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "9", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "10", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U57", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_rows_c_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_cols_c_i_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_0_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_1_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_2_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_0_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_2_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_1_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_2_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_0_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_1_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_2_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_0_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_1_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_2_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_s {
		rgb2hsv_4100 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_4101 {Type O LastRead -1 FirstWrite 6}
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry29 {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols_out {Type O LastRead -1 FirstWrite 0}}
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc {
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	xFInRange_9_0_2160_3840_15_0_1_9_1_3_s {
		rgb2hsv_4100 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_4101 {Type O LastRead -1 FirstWrite 6}
		p_read {Type I LastRead 3 FirstWrite -1}
		p_read1 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 3 FirstWrite -1}
		p_read3 {Type I LastRead 3 FirstWrite -1}
		p_read4 {Type I LastRead 3 FirstWrite -1}
		p_read5 {Type I LastRead 3 FirstWrite -1}
		p_read6 {Type I LastRead 3 FirstWrite -1}
		p_read7 {Type I LastRead 3 FirstWrite -1}
		p_read8 {Type I LastRead 3 FirstWrite -1}
		p_read9 {Type I LastRead 3 FirstWrite -1}
		p_read10 {Type I LastRead 3 FirstWrite -1}
		p_read11 {Type I LastRead 3 FirstWrite -1}
		p_read12 {Type I LastRead 3 FirstWrite -1}
		p_read13 {Type I LastRead 3 FirstWrite -1}
		p_read14 {Type I LastRead 3 FirstWrite -1}
		p_read15 {Type I LastRead 3 FirstWrite -1}
		p_read16 {Type I LastRead 3 FirstWrite -1}
		p_read17 {Type I LastRead 3 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "8294418"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_dout fifo_data 0 24 }  { rgb2hsv_4100_empty_n fifo_status 0 1 }  { rgb2hsv_4100_read fifo_update 1 1 } } }
	imgHelper1_4101 { ap_fifo {  { imgHelper1_4101_din fifo_data 1 8 }  { imgHelper1_4101_full_n fifo_status 0 1 }  { imgHelper1_4101_write fifo_update 1 1 } } }
	low_thresh { ap_memory {  { low_thresh_address0 mem_address 1 4 }  { low_thresh_ce0 mem_ce 1 1 }  { low_thresh_d0 mem_din 1 8 }  { low_thresh_q0 mem_dout 0 8 }  { low_thresh_we0 mem_we 1 1 } } }
	high_thresh { ap_memory {  { high_thresh_address0 mem_address 1 4 }  { high_thresh_ce0 mem_ce 1 1 }  { high_thresh_d0 mem_din 1 8 }  { high_thresh_q0 mem_dout 0 8 }  { high_thresh_we0 mem_we 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
