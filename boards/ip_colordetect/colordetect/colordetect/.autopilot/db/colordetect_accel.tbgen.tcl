set moduleName colordetect_accel
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {colordetect_accel}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_V_data_V int 24 regular {axi_s 0 volatile  { src Data } }  }
	{ src_V_keep_V int 3 regular {axi_s 0 volatile  { src Keep } }  }
	{ src_V_strb_V int 3 regular {axi_s 0 volatile  { src Strb } }  }
	{ src_V_user_V int 1 regular {axi_s 0 volatile  { src User } }  }
	{ src_V_last_V int 1 regular {axi_s 0 volatile  { src Last } }  }
	{ src_V_id_V int 1 regular {axi_s 0 volatile  { src ID } }  }
	{ src_V_dest_V int 1 regular {axi_s 0 volatile  { src Dest } }  }
	{ low_thresh int 8 regular {axi_slave 0}  }
	{ high_thresh int 8 regular {axi_slave 0}  }
	{ dst_V_data_V int 24 regular {axi_s 1 volatile  { dst Data } }  }
	{ dst_V_keep_V int 3 regular {axi_s 1 volatile  { dst Keep } }  }
	{ dst_V_strb_V int 3 regular {axi_s 1 volatile  { dst Strb } }  }
	{ dst_V_user_V int 1 regular {axi_s 1 volatile  { dst User } }  }
	{ dst_V_last_V int 1 regular {axi_s 1 volatile  { dst Last } }  }
	{ dst_V_id_V int 1 regular {axi_s 1 volatile  { dst ID } }  }
	{ dst_V_dest_V int 1 regular {axi_s 1 volatile  { dst Dest } }  }
	{ rows int 32 regular {axi_slave 0}  }
	{ cols int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.data.V","cData": "int24","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.keep.V","cData": "int3","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.strb.V","cData": "int3","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.user.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.id.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "src_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "src.V.dest.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "low_thresh", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "low_thresh","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":31}} , 
 	{ "Name" : "high_thresh", "interface" : "axi_slave", "bundle":"control","type":"ap_memory","bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "high_thresh","cData": "char","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":47}} , 
 	{ "Name" : "dst_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.data.V","cData": "int24","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dst_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.keep.V","cData": "int3","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dst_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.strb.V","cData": "int3","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dst_V_user_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.user.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dst_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dst_V_id_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.id.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "dst_V_dest_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "dst.V.dest.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":48}, "offset_end" : {"in":55}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":56}, "offset_end" : {"in":63}} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ src_TDATA sc_in sc_lv 24 signal 0 } 
	{ src_TKEEP sc_in sc_lv 3 signal 1 } 
	{ src_TSTRB sc_in sc_lv 3 signal 2 } 
	{ src_TUSER sc_in sc_lv 1 signal 3 } 
	{ src_TLAST sc_in sc_lv 1 signal 4 } 
	{ src_TID sc_in sc_lv 1 signal 5 } 
	{ src_TDEST sc_in sc_lv 1 signal 6 } 
	{ dst_TDATA sc_out sc_lv 24 signal 9 } 
	{ dst_TKEEP sc_out sc_lv 3 signal 10 } 
	{ dst_TSTRB sc_out sc_lv 3 signal 11 } 
	{ dst_TUSER sc_out sc_lv 1 signal 12 } 
	{ dst_TLAST sc_out sc_lv 1 signal 13 } 
	{ dst_TID sc_out sc_lv 1 signal 14 } 
	{ dst_TDEST sc_out sc_lv 1 signal 15 } 
	{ src_TVALID sc_in sc_logic 1 invld 6 } 
	{ src_TREADY sc_out sc_logic 1 inacc 6 } 
	{ dst_TVALID sc_out sc_logic 1 outvld 15 } 
	{ dst_TREADY sc_in sc_logic 1 outacc 15 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"colordetect_accel","role":"start","value":"0","valid_bit":"0"},{"name":"colordetect_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"colordetect_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"low_thresh","role":"data","value":"16"},{"name":"high_thresh","role":"data","value":"32"},{"name":"rows","role":"data","value":"48"},{"name":"cols","role":"data","value":"56"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"colordetect_accel","role":"start","value":"0","valid_bit":"0"},{"name":"colordetect_accel","role":"done","value":"0","valid_bit":"1"},{"name":"colordetect_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"colordetect_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"colordetect_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "src_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "src_V_data_V", "role": "default" }} , 
 	{ "name": "src_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src_V_keep_V", "role": "default" }} , 
 	{ "name": "src_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "src_V_strb_V", "role": "default" }} , 
 	{ "name": "src_TUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_user_V", "role": "default" }} , 
 	{ "name": "src_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_last_V", "role": "default" }} , 
 	{ "name": "src_TID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_id_V", "role": "default" }} , 
 	{ "name": "src_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "dst_V_data_V", "role": "default" }} , 
 	{ "name": "dst_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dst_V_keep_V", "role": "default" }} , 
 	{ "name": "dst_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dst_V_strb_V", "role": "default" }} , 
 	{ "name": "dst_TUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_user_V", "role": "default" }} , 
 	{ "name": "dst_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_last_V", "role": "default" }} , 
 	{ "name": "dst_TID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_id_V", "role": "default" }} , 
 	{ "name": "dst_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_dest_V", "role": "default" }} , 
 	{ "name": "src_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "src_V_dest_V", "role": "default" }} , 
 	{ "name": "src_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "src_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dst_V_dest_V", "role": "default" }} , 
 	{ "name": "dst_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "dst_V_dest_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "11", "18", "47", "57", "67", "77", "87", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124"],
		"CDFG" : "colordetect_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56", "EstimateLatencyMax" : "8319416",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0"},
			{"ID" : "18", "Name" : "colorthresholding_9_0_3_2160_3840_1_U0"}],
		"OutputProcess" : [
			{"ID" : "87", "Name" : "xfMat2axis_24_0_2160_3840_1_U0"}],
		"Port" : [
			{"Name" : "src_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_data_V"}]},
			{"Name" : "src_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_keep_V"}]},
			{"Name" : "src_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_strb_V"}]},
			{"Name" : "src_V_user_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_user_V"}]},
			{"Name" : "src_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_last_V"}]},
			{"Name" : "src_V_id_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_id_V"}]},
			{"Name" : "src_V_dest_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "axis2xfMat_24_9_2160_3840_1_U0", "Port" : "AXI_video_strm_V_dest_V"}]},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_U0", "Port" : "high_thresh"}]},
			{"Name" : "dst_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_data_V"}]},
			{"Name" : "dst_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_keep_V"}]},
			{"Name" : "dst_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_strb_V"}]},
			{"Name" : "dst_V_user_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_user_V"}]},
			{"Name" : "dst_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_last_V"}]},
			{"Name" : "dst_V_id_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_id_V"}]},
			{"Name" : "dst_V_dest_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "87", "SubInstance" : "xfMat2axis_24_0_2160_3840_1_U0", "Port" : "dst_V_dest_V"}]},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "bgr2hsv_9_2160_3840_1_U0", "Port" : "xf_cv_icvSaturate8u_cv"}]},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "bgr2hsv_9_2160_3840_1_U0", "Port" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv"}]},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "bgr2hsv_9_2160_3840_1_U0", "Port" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Block_ZN2xf2cv3MatILi9ELi2160ELi3840ELi1ELi2EEC2Eii_exit1_proc_U0", "Parent" : "0",
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
			{"Name" : "imgInput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgInput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgInput_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "97", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "19", "DependentChan" : "98", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "99", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "100", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper1_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper2_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "101", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper2_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper2_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "102", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper2_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper3_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "103", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper3_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper3_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "104", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper3_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper4_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "105", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper4_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper4_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "106", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgHelper4_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "107", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgOutput_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgOutput_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "108", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "imgOutput_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "axis2xfMat_24_9_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "8300881",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_axis2xfMat_24_9_2160_3840_1_U0_U",
		"Port" : [
			{"Name" : "imgInput_499", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_499_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "AXI_video_strm_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_user_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_id_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "AXI_video_strm_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "img_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "95", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "96", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "11", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_data_V_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_keep_V_U", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_strb_V_U", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_user_V_U", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_last_V_U", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_id_V_U", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.axis2xfMat_24_9_2160_3840_1_U0.regslice_both_AXI_video_strm_V_dest_V_U", "Parent" : "3"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17"],
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
		"StartSource" : "3",
		"StartFifo" : "start_for_bgr2hsv_9_2160_3840_1_U0_U",
		"Port" : [
			{"Name" : "imgInput_499", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "109", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgInput_499_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "110", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "111", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "xf_cv_icvSaturate8u_cv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0.xf_cv_icvSaturate8u_cv_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0.void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0.mul_32ns_32ns_64_1_1_U36", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0.mac_muladd_20s_8ns_13ns_20_4_1_U37", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2hsv_9_2160_3840_1_U0.ama_addmuladd_13s_9s_17ns_13ns_30_4_1_U38", "Parent" : "11"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0", "Parent" : "0", "Child" : ["19", "20", "21", "22", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46"],
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
			{"ID" : "19", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry29_U0"},
			{"ID" : "20", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_4100"}]},
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_4101"}]},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_thresh"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "97", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry29_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "98", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry29_U0", "Port" : "p_src_mat_cols"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_entry29_U0", "Parent" : "18",
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "97", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "98", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "21", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Parent" : "18",
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
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0", "Parent" : "18",
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
		"StartSource" : "19",
		"StartFifo" : "start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U",
		"Port" : [
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "19", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Parent" : "18", "Child" : ["23"],
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
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "11", "DependentChan" : "112", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "47", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_4101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "27", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "28", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "32", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "33", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "34", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "38", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "39", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "40", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "29", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "30", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "31", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "35", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "36", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "37", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "41", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "42", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "20", "DependentChan" : "43", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "44", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "21", "DependentChan" : "45", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U57", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_rows_c_i_U", "Parent" : "18"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.p_src_mat_cols_c_i_U", "Parent" : "18"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_0_U", "Parent" : "18"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_1_U", "Parent" : "18"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_0_2_U", "Parent" : "18"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_0_U", "Parent" : "18"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_1_U", "Parent" : "18"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_0_2_U", "Parent" : "18"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_0_U", "Parent" : "18"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_1_U", "Parent" : "18"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_1_2_U", "Parent" : "18"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_0_U", "Parent" : "18"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_1_U", "Parent" : "18"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_1_2_U", "Parent" : "18"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_0_U", "Parent" : "18"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_1_U", "Parent" : "18"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.low_th_2_2_U", "Parent" : "18"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_0_U", "Parent" : "18"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_1_U", "Parent" : "18"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.high_th_2_2_U", "Parent" : "18"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.img_height_loc_i_channel_U", "Parent" : "18"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.img_width_loc_i_channel_U", "Parent" : "18"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_U0.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U", "Parent" : "18"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0", "Parent" : "0", "Child" : ["48"],
		"CDFG" : "erode_0_0_2160_3840_0_3_3_1_1_11",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U",
		"Port" : [
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "113", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper1_4101"}]},
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "57", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper2_4102"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "99", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "100", "DependentChanDepth" : "5", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Parent" : "47", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56"],
		"CDFG" : "xferode_2160_3840_1_0_1_0_3841_3_3_s",
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
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgHelper1_4101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgHelper2_4102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_0_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_1_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_2_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_0_1_xfExtractPixels_1_1_0_s_fu_460", "Parent" : "48",
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
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_1_1_xfExtractPixels_1_1_0_s_fu_466", "Parent" : "48",
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
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_2_1_xfExtractPixels_1_1_0_s_fu_472", "Parent" : "48",
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U111", "Parent" : "48"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_11_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U112", "Parent" : "48"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0", "Parent" : "0", "Child" : ["58"],
		"CDFG" : "dilate_0_0_2160_3840_0_3_3_1_1_12",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U",
		"Port" : [
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "47", "DependentChan" : "114", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper2_4102"}]},
			{"Name" : "imgHelper3_4103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "67", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper3_4103"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "101", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "102", "DependentChanDepth" : "6", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Parent" : "57", "Child" : ["59", "60", "61", "62", "63", "64", "65", "66"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_0_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_1_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_2_U", "Parent" : "58"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_0_1_xfExtractPixels_1_1_0_s_fu_460", "Parent" : "58",
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
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_1_1_xfExtractPixels_1_1_0_s_fu_466", "Parent" : "58",
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
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_2_1_xfExtractPixels_1_1_0_s_fu_472", "Parent" : "58",
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
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U123", "Parent" : "58"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_12_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U124", "Parent" : "58"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0", "Parent" : "0", "Child" : ["68"],
		"CDFG" : "dilate_0_0_2160_3840_0_3_3_1_1_s",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U",
		"Port" : [
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "57", "DependentChan" : "115", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper2_4102"}]},
			{"Name" : "imgHelper3_4103", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper3_4103"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "103", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "104", "DependentChanDepth" : "7", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Parent" : "67", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76"],
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
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_1_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_2_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_0_1_xfExtractPixels_1_1_0_s_fu_460", "Parent" : "68",
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
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_1_1_xfExtractPixels_1_1_0_s_fu_466", "Parent" : "68",
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
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_2_1_xfExtractPixels_1_1_0_s_fu_472", "Parent" : "68",
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
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U123", "Parent" : "68"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dilate_0_0_2160_3840_0_3_3_1_1_U0.grp_xfdilate_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U124", "Parent" : "68"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0", "Parent" : "0", "Child" : ["78"],
		"CDFG" : "erode_0_0_2160_3840_0_3_3_1_1_s",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U",
		"Port" : [
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "67", "DependentChan" : "116", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper1_4101"}]},
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "87", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Port" : "imgHelper2_4102"}]},
			{"Name" : "p_src_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "105", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "106", "DependentChanDepth" : "8", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42", "Parent" : "77", "Child" : ["79", "80", "81", "82", "83", "84", "85", "86"],
		"CDFG" : "xferode_2160_3840_1_0_1_0_3841_3_3_s",
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
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "imgHelper1_4101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper2_4102", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgHelper2_4102_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_height", "Type" : "None", "Direction" : "I"},
			{"Name" : "img_width", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_0_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_1_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.buf_V_2_U", "Parent" : "78"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_0_1_xfExtractPixels_1_1_0_s_fu_460", "Parent" : "78",
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
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_1_1_xfExtractPixels_1_1_0_s_fu_466", "Parent" : "78",
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
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.src_buf_V_2_1_xfExtractPixels_1_1_0_s_fu_472", "Parent" : "78",
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
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U111", "Parent" : "78"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.erode_0_0_2160_3840_0_3_3_1_1_U0.grp_xferode_2160_3840_1_0_1_0_3841_3_3_s_fu_42.mux_32_8_1_1_U112", "Parent" : "78"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0", "Parent" : "0", "Child" : ["88", "89", "90", "91", "92", "93", "94"],
		"CDFG" : "xfMat2axis_24_0_2160_3840_1_s",
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
		"StartSource" : "2",
		"StartFifo" : "start_for_xfMat2axis_24_0_2160_3840_1_U0_U",
		"Port" : [
			{"Name" : "imgOutput_4105", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "117", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgOutput_4105_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "107", "DependentChanDepth" : "9", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "108", "DependentChanDepth" : "9", "DependentChanType" : "2",
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
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_data_V_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_keep_V_U", "Parent" : "87"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_strb_V_U", "Parent" : "87"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_user_V_U", "Parent" : "87"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_last_V_U", "Parent" : "87"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_id_V_U", "Parent" : "87"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xfMat2axis_24_0_2160_3840_1_U0.regslice_both_dst_V_dest_V_U", "Parent" : "87"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_rows_c_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_cols_c_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb2hsv_rows_c_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb2hsv_cols_c_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper1_rows_c_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper1_cols_c_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper2_rows_c_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper2_cols_c_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper3_rows_c_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper3_cols_c_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper4_rows_c_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper4_cols_c_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_rows_c_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_cols_c_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_data_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_rows_c19_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgInput_cols_c20_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.rgb2hsv_data_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper1_data_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper2_data_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper3_data_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgHelper4_data_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.imgOutput_data_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_axis2xfMat_24_9_2160_3840_1_U0_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_erode_0_0_2160_3840_0_3_3_1_1_11_U0_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dilate_0_0_2160_3840_0_3_3_1_1_12_U0_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_dilate_0_0_2160_3840_0_3_3_1_1_U0_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_erode_0_0_2160_3840_0_3_3_1_1_U0_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_xfMat2axis_24_0_2160_3840_1_U0_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_bgr2hsv_9_2160_3840_1_U0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colordetect_accel {
		src_V_data_V {Type I LastRead 2 FirstWrite -1}
		src_V_keep_V {Type I LastRead 2 FirstWrite -1}
		src_V_strb_V {Type I LastRead 2 FirstWrite -1}
		src_V_user_V {Type I LastRead 2 FirstWrite -1}
		src_V_last_V {Type I LastRead 2 FirstWrite -1}
		src_V_id_V {Type I LastRead 2 FirstWrite -1}
		src_V_dest_V {Type I LastRead 2 FirstWrite -1}
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}
		dst_V_data_V {Type O LastRead -1 FirstWrite 3}
		dst_V_keep_V {Type O LastRead -1 FirstWrite 3}
		dst_V_strb_V {Type O LastRead -1 FirstWrite 3}
		dst_V_user_V {Type O LastRead -1 FirstWrite 3}
		dst_V_last_V {Type O LastRead -1 FirstWrite 3}
		dst_V_id_V {Type O LastRead -1 FirstWrite 3}
		dst_V_dest_V {Type O LastRead -1 FirstWrite 3}
		rows {Type I LastRead 0 FirstWrite -1}
		cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}
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
		imgOutput_cols_out {Type O LastRead -1 FirstWrite 0}}
	axis2xfMat_24_9_2160_3840_1_s {
		imgInput_499 {Type O LastRead -1 FirstWrite 3}
		AXI_video_strm_V_data_V {Type I LastRead 2 FirstWrite -1}
		AXI_video_strm_V_keep_V {Type I LastRead 2 FirstWrite -1}
		AXI_video_strm_V_strb_V {Type I LastRead 2 FirstWrite -1}
		AXI_video_strm_V_user_V {Type I LastRead 2 FirstWrite -1}
		AXI_video_strm_V_last_V {Type I LastRead 2 FirstWrite -1}
		AXI_video_strm_V_id_V {Type I LastRead 2 FirstWrite -1}
		AXI_video_strm_V_dest_V {Type I LastRead 2 FirstWrite -1}
		img_rows {Type I LastRead 0 FirstWrite -1}
		img_cols {Type I LastRead 0 FirstWrite -1}
		img_rows_out {Type O LastRead -1 FirstWrite 0}
		img_cols_out {Type O LastRead -1 FirstWrite 0}}
	bgr2hsv_9_2160_3840_1_s {
		imgInput_499 {Type I LastRead 3 FirstWrite -1}
		rgb2hsv_4100 {Type O LastRead -1 FirstWrite 12}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		xf_cv_icvSaturate8u_cv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_sdiv {Type I LastRead -1 FirstWrite -1}
		void_bgr2hsv_9_2160_3840_1_Mat_9_2160_3840_1_2_Mat_9_2160_3840_1_2_hdiv {Type I LastRead -1 FirstWrite -1}}
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
		p_read19 {Type I LastRead 0 FirstWrite -1}}
	erode_0_0_2160_3840_0_3_3_1_1_11 {
		imgHelper1_4101 {Type I LastRead 9 FirstWrite -1}
		imgHelper2_4102 {Type O LastRead -1 FirstWrite 13}
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}}
	xferode_2160_3840_1_0_1_0_3841_3_3_s {
		imgHelper1_4101 {Type I LastRead 9 FirstWrite -1}
		imgHelper2_4102 {Type O LastRead -1 FirstWrite 13}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	dilate_0_0_2160_3840_0_3_3_1_1_12 {
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
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	dilate_0_0_2160_3840_0_3_3_1_1_s {
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
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	erode_0_0_2160_3840_0_3_3_1_1_s {
		imgHelper1_4101 {Type I LastRead 9 FirstWrite -1}
		imgHelper2_4102 {Type O LastRead -1 FirstWrite 13}
		p_src_rows {Type I LastRead 0 FirstWrite -1}
		p_src_cols {Type I LastRead 0 FirstWrite -1}}
	xferode_2160_3840_1_0_1_0_3841_3_3_s {
		imgHelper1_4101 {Type I LastRead 9 FirstWrite -1}
		imgHelper2_4102 {Type O LastRead -1 FirstWrite 13}
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfExtractPixels_1_1_0_s {
		p_read1 {Type I LastRead 0 FirstWrite -1}}
	xfMat2axis_24_0_2160_3840_1_s {
		imgOutput_4105 {Type I LastRead 3 FirstWrite -1}
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
	{"Name" : "Latency", "Min" : "56", "Max" : "8319416"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "8319374"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	src_V_data_V { axis {  { src_TDATA in_data 0 24 } } }
	src_V_keep_V { axis {  { src_TKEEP in_data 0 3 } } }
	src_V_strb_V { axis {  { src_TSTRB in_data 0 3 } } }
	src_V_user_V { axis {  { src_TUSER in_data 0 1 } } }
	src_V_last_V { axis {  { src_TLAST in_data 0 1 } } }
	src_V_id_V { axis {  { src_TID in_data 0 1 } } }
	src_V_dest_V { axis {  { src_TDEST in_data 0 1 }  { src_TVALID in_vld 0 1 }  { src_TREADY in_acc 1 1 } } }
	dst_V_data_V { axis {  { dst_TDATA out_data 1 24 } } }
	dst_V_keep_V { axis {  { dst_TKEEP out_data 1 3 } } }
	dst_V_strb_V { axis {  { dst_TSTRB out_data 1 3 } } }
	dst_V_user_V { axis {  { dst_TUSER out_data 1 1 } } }
	dst_V_last_V { axis {  { dst_TLAST out_data 1 1 } } }
	dst_V_id_V { axis {  { dst_TID out_data 1 1 } } }
	dst_V_dest_V { axis {  { dst_TDEST out_data 1 1 }  { dst_TVALID out_vld 1 1 }  { dst_TREADY out_acc 0 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
