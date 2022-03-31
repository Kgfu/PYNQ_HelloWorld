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
	{ rgb2hsv_436 int 24 regular {fifo 0 volatile }  }
	{ imgHelper1_437 int 8 regular {fifo 1 volatile }  }
	{ gmem0 int 8 regular {axi_master 0}  }
	{ gmem1 int 8 regular {axi_master 0}  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ low_thresh int 64 regular {fifo 0}  }
	{ high_thresh int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_437", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ rgb2hsv_436_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_436_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_436_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_437_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_437_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_437_write sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 8 signal 3 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 3 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 4 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 4 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 5 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 5 } 
	{ low_thresh_dout sc_in sc_lv 64 signal 6 } 
	{ low_thresh_empty_n sc_in sc_logic 1 signal 6 } 
	{ low_thresh_read sc_out sc_logic 1 signal 6 } 
	{ high_thresh_dout sc_in sc_lv 64 signal 7 } 
	{ high_thresh_empty_n sc_in sc_logic 1 signal 7 } 
	{ high_thresh_read sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rgb2hsv_436_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "dout" }} , 
 	{ "name": "rgb2hsv_436_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_436_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "read" }} , 
 	{ "name": "imgHelper1_437_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "din" }} , 
 	{ "name": "imgHelper1_437_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "full_n" }} , 
 	{ "name": "imgHelper1_437_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "write" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "low_thresh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "low_thresh", "role": "dout" }} , 
 	{ "name": "low_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "empty_n" }} , 
 	{ "name": "low_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "read" }} , 
 	{ "name": "high_thresh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "high_thresh", "role": "dout" }} , 
 	{ "name": "high_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "empty_n" }} , 
 	{ "name": "high_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "8294426",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0"},
			{"ID" : "2", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_436"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_437"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "gmem1"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "low_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "high_thresh"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry12",
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
			{"Name" : "low_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_thresh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_thresh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_thresh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_thresh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "high_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]}]},
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
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_437_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U59", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_rows_c_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_cols_c_i_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_thresh_c_i_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_thresh_c_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_2_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
		gmem0 {Type I LastRead 11 FirstWrite -1}
		gmem1 {Type I LastRead 11 FirstWrite -1}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 0 FirstWrite -1}
		high_thresh {Type I LastRead 0 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry12 {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 0 FirstWrite -1}
		high_thresh {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		low_thresh_out {Type O LastRead -1 FirstWrite 0}
		high_thresh_out {Type O LastRead -1 FirstWrite 0}}
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc {
		low_thresh {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 11 FirstWrite -1}
		high_thresh {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 11 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	xFInRange_9_0_2160_3840_15_0_1_9_1_3_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
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
	{"Name" : "Latency", "Min" : "25", "Max" : "8294426"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_dout fifo_data 0 24 }  { rgb2hsv_436_empty_n fifo_status 0 1 }  { rgb2hsv_436_read fifo_update 1 1 } } }
	imgHelper1_437 { ap_fifo {  { imgHelper1_437_din fifo_data 1 8 }  { imgHelper1_437_full_n fifo_status 0 1 }  { imgHelper1_437_write fifo_update 1 1 } } }
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN LEN 1 32 }  { m_axi_gmem0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_AWBURST BURST 1 2 }  { m_axi_gmem0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_AWPROT PROT 1 3 }  { m_axi_gmem0_AWQOS QOS 1 4 }  { m_axi_gmem0_AWREGION REGION 1 4 }  { m_axi_gmem0_AWUSER USER 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA DATA 1 8 }  { m_axi_gmem0_WSTRB STRB 1 1 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER USER 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN LEN 1 32 }  { m_axi_gmem0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_ARBURST BURST 1 2 }  { m_axi_gmem0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_ARPROT PROT 1 3 }  { m_axi_gmem0_ARQOS QOS 1 4 }  { m_axi_gmem0_ARREGION REGION 1 4 }  { m_axi_gmem0_ARUSER USER 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA DATA 0 8 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER USER 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER USER 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 32 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 32 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	low_thresh { ap_fifo {  { low_thresh_dout fifo_data 0 64 }  { low_thresh_empty_n fifo_status 0 1 }  { low_thresh_read fifo_update 1 1 } } }
	high_thresh { ap_fifo {  { high_thresh_dout fifo_data 0 64 }  { high_thresh_empty_n fifo_status 0 1 }  { high_thresh_read fifo_update 1 1 } } }
}
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
	{ rgb2hsv_436 int 24 regular {fifo 0 volatile }  }
	{ imgHelper1_437 int 8 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_437", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ rgb2hsv_436_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_436_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_436_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_437_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_437_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_437_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rgb2hsv_436_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "dout" }} , 
 	{ "name": "rgb2hsv_436_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_436_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "read" }} , 
 	{ "name": "imgHelper1_437_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "din" }} , 
 	{ "name": "imgHelper1_437_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "full_n" }} , 
 	{ "name": "imgHelper1_437_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "6", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0"},
			{"ID" : "2", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_436"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_437"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "low_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_r"}]},
			{"Name" : "high_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_r"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry12",
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
			{"Name" : "p_src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "high_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.low_r_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.high_r_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0", "Parent" : "0",
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Parent" : "0", "Child" : ["7"],
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
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_437_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "10", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "27", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U49", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_rows_c_i_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_cols_c_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_2_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_r {Type I LastRead -1 FirstWrite -1}
		high_r {Type I LastRead -1 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry12 {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols_out {Type O LastRead -1 FirstWrite 0}}
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc {
		low_r {Type I LastRead -1 FirstWrite -1}
		high_r {Type I LastRead -1 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	xFInRange_9_0_2160_3840_15_0_1_9_1_3_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
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
	{"Name" : "Latency", "Min" : "11", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_dout fifo_data 0 24 }  { rgb2hsv_436_empty_n fifo_status 0 1 }  { rgb2hsv_436_read fifo_update 1 1 } } }
	imgHelper1_437 { ap_fifo {  { imgHelper1_437_din fifo_data 1 8 }  { imgHelper1_437_full_n fifo_status 0 1 }  { imgHelper1_437_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
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
	{ rgb2hsv_436 int 24 regular {fifo 0 volatile }  }
	{ imgHelper1_437 int 8 regular {fifo 1 volatile }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_437", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ rgb2hsv_436_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_436_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_436_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_437_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_437_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_437_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rgb2hsv_436_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "dout" }} , 
 	{ "name": "rgb2hsv_436_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_436_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "read" }} , 
 	{ "name": "imgHelper1_437_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "din" }} , 
 	{ "name": "imgHelper1_437_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "full_n" }} , 
 	{ "name": "imgHelper1_437_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "write" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "5", "6", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "8294412",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0"},
			{"ID" : "2", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "6", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_436"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_437"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "low_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_r"}]},
			{"Name" : "high_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_r"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry12",
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
			{"Name" : "p_src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Parent" : "0", "Child" : ["3", "4"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "high_r", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.low_r_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0.high_r_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc_U0", "Parent" : "0",
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Parent" : "0", "Child" : ["7"],
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
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_437_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "10", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "27", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U49", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_rows_c_i_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_cols_c_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_2_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_r {Type I LastRead -1 FirstWrite -1}
		high_r {Type I LastRead -1 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry12 {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols_out {Type O LastRead -1 FirstWrite 0}}
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc {
		low_r {Type I LastRead -1 FirstWrite -1}
		high_r {Type I LastRead -1 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	xFInRange_9_0_2160_3840_15_0_1_9_1_3_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
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
	{"Name" : "Latency", "Min" : "11", "Max" : "8294412"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_dout fifo_data 0 24 }  { rgb2hsv_436_empty_n fifo_status 0 1 }  { rgb2hsv_436_read fifo_update 1 1 } } }
	imgHelper1_437 { ap_fifo {  { imgHelper1_437_din fifo_data 1 8 }  { imgHelper1_437_full_n fifo_status 0 1 }  { imgHelper1_437_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
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
	{ rgb2hsv_436 int 24 regular {fifo 0 volatile }  }
	{ imgHelper1_437 int 8 regular {fifo 1 volatile }  }
	{ gmem0 int 8 regular {axi_master 0}  }
	{ gmem1 int 8 regular {axi_master 0}  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ low_thresh int 64 regular {fifo 0}  }
	{ high_thresh int 64 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_437", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 115
set portList { 
	{ rgb2hsv_436_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_436_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_436_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_437_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_437_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_437_write sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 8 signal 2 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 8 signal 3 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 3 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 4 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 4 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 4 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 5 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 5 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 5 } 
	{ low_thresh_dout sc_in sc_lv 64 signal 6 } 
	{ low_thresh_empty_n sc_in sc_logic 1 signal 6 } 
	{ low_thresh_read sc_out sc_logic 1 signal 6 } 
	{ high_thresh_dout sc_in sc_lv 64 signal 7 } 
	{ high_thresh_empty_n sc_in sc_logic 1 signal 7 } 
	{ high_thresh_read sc_out sc_logic 1 signal 7 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "rgb2hsv_436_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "dout" }} , 
 	{ "name": "rgb2hsv_436_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_436_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "read" }} , 
 	{ "name": "imgHelper1_437_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "din" }} , 
 	{ "name": "imgHelper1_437_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "full_n" }} , 
 	{ "name": "imgHelper1_437_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "write" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "low_thresh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "low_thresh", "role": "dout" }} , 
 	{ "name": "low_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "empty_n" }} , 
 	{ "name": "low_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "read" }} , 
 	{ "name": "high_thresh_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "high_thresh", "role": "dout" }} , 
 	{ "name": "high_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "empty_n" }} , 
 	{ "name": "high_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "read" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "8294426",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0"},
			{"ID" : "2", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_436"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_437"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "gmem0"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "gmem1"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "low_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "high_thresh"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry12",
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
			{"Name" : "low_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_rows_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_rows_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_src_mat_cols_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_src_mat_cols_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "low_thresh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_thresh_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "high_thresh_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_thresh_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "low_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "high_thresh", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "high_thresh_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]}]},
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
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_437_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "24", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "25", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "26", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "27", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "28", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "29", "DependentChanDepth" : "2", "DependentChanType" : "1"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U59", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_rows_c_i_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_src_mat_cols_c_i_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_thresh_c_i_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_thresh_c_i_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_0_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_1_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_2_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_1_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_2_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_0_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_1_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_2_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_0_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_1_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_2_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_0_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_1_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_2_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_height_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.img_width_loc_i_channel_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2dEe_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
		gmem0 {Type I LastRead 11 FirstWrite -1}
		gmem1 {Type I LastRead 11 FirstWrite -1}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 0 FirstWrite -1}
		high_thresh {Type I LastRead 0 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry12 {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 0 FirstWrite -1}
		high_thresh {Type I LastRead 0 FirstWrite -1}
		p_src_mat_rows_out {Type O LastRead -1 FirstWrite 0}
		p_src_mat_cols_out {Type O LastRead -1 FirstWrite 0}
		low_thresh_out {Type O LastRead -1 FirstWrite 0}
		high_thresh_out {Type O LastRead -1 FirstWrite 0}}
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc {
		low_thresh {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 11 FirstWrite -1}
		high_thresh {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 11 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_Block_colorthresholding_9_0_3_2160_3840_1_exit_proc {
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	xFInRange_9_0_2160_3840_15_0_1_9_1_3_s {
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
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
	{"Name" : "Latency", "Min" : "25", "Max" : "8294426"}
	, {"Name" : "Interval", "Min" : "19", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_dout fifo_data 0 24 }  { rgb2hsv_436_empty_n fifo_status 0 1 }  { rgb2hsv_436_read fifo_update 1 1 } } }
	imgHelper1_437 { ap_fifo {  { imgHelper1_437_din fifo_data 1 8 }  { imgHelper1_437_full_n fifo_status 0 1 }  { imgHelper1_437_write fifo_update 1 1 } } }
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN LEN 1 32 }  { m_axi_gmem0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_AWBURST BURST 1 2 }  { m_axi_gmem0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_AWPROT PROT 1 3 }  { m_axi_gmem0_AWQOS QOS 1 4 }  { m_axi_gmem0_AWREGION REGION 1 4 }  { m_axi_gmem0_AWUSER USER 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA DATA 1 8 }  { m_axi_gmem0_WSTRB STRB 1 1 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER USER 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN LEN 1 32 }  { m_axi_gmem0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_ARBURST BURST 1 2 }  { m_axi_gmem0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_ARPROT PROT 1 3 }  { m_axi_gmem0_ARQOS QOS 1 4 }  { m_axi_gmem0_ARREGION REGION 1 4 }  { m_axi_gmem0_ARUSER USER 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA DATA 0 8 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER USER 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER USER 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 32 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 32 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	low_thresh { ap_fifo {  { low_thresh_dout fifo_data 0 64 }  { low_thresh_empty_n fifo_status 0 1 }  { low_thresh_read fifo_update 1 1 } } }
	high_thresh { ap_fifo {  { high_thresh_dout fifo_data 0 64 }  { high_thresh_empty_n fifo_status 0 1 }  { high_thresh_read fifo_update 1 1 } } }
}
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
	{ rgb2hsv_436 int 24 regular {fifo 0 volatile }  }
	{ imgHelper1_437 int 8 regular {fifo 1 volatile }  }
	{ low_thresh int 8 regular {array 9 { 1 } 1 1 }  }
	{ high_thresh int 8 regular {array 9 { 1 } 1 1 }  }
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_436", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_437", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ rgb2hsv_436_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_436_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_436_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_437_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_437_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_437_write sc_out sc_logic 1 signal 1 } 
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
	{ "name": "rgb2hsv_436_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "dout" }} , 
 	{ "name": "rgb2hsv_436_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "empty_n" }} , 
 	{ "name": "rgb2hsv_436_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb2hsv_436", "role": "read" }} , 
 	{ "name": "imgHelper1_437_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "din" }} , 
 	{ "name": "imgHelper1_437_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "full_n" }} , 
 	{ "name": "imgHelper1_437_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "imgHelper1_437", "role": "write" }} , 
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
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0"},
			{"ID" : "2", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_436"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_437"}]},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_thresh"}]},
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Port" : "p_src_mat_cols"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry12_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry12",
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
			{"Name" : "rgb2hsv_436", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_436_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_437", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2", "DependentChanType" : "0",
				"BlockSignal" : [
					{"Name" : "imgHelper1_437_blk_n", "Type" : "RtlSignal"}]},
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U49", "Parent" : "4"},
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
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry12 {
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
		rgb2hsv_436 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_437 {Type O LastRead -1 FirstWrite 6}
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
	rgb2hsv_436 { ap_fifo {  { rgb2hsv_436_dout fifo_data 0 24 }  { rgb2hsv_436_empty_n fifo_status 0 1 }  { rgb2hsv_436_read fifo_update 1 1 } } }
	imgHelper1_437 { ap_fifo {  { imgHelper1_437_din fifo_data 1 8 }  { imgHelper1_437_full_n fifo_status 0 1 }  { imgHelper1_437_write fifo_update 1 1 } } }
	low_thresh { ap_memory {  { low_thresh_address0 mem_address 1 4 }  { low_thresh_ce0 mem_ce 1 1 }  { low_thresh_d0 mem_din 1 8 }  { low_thresh_q0 mem_dout 0 8 }  { low_thresh_we0 mem_we 1 1 } } }
	high_thresh { ap_memory {  { high_thresh_address0 mem_address 1 4 }  { high_thresh_ce0 mem_ce 1 1 }  { high_thresh_d0 mem_din 1 8 }  { high_thresh_q0 mem_dout 0 8 }  { high_thresh_we0 mem_we 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
}
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
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ low_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ high_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_4101", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ rgb2hsv_4100_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_4100_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_4101_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_4101_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_4101_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
	{ low_thresh_address0 sc_out sc_lv 4 signal 4 } 
	{ low_thresh_ce0 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_d0 sc_out sc_lv 8 signal 4 } 
	{ low_thresh_q0 sc_in sc_lv 8 signal 4 } 
	{ low_thresh_we0 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_address1 sc_out sc_lv 4 signal 4 } 
	{ low_thresh_ce1 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_d1 sc_out sc_lv 8 signal 4 } 
	{ low_thresh_q1 sc_in sc_lv 8 signal 4 } 
	{ low_thresh_we1 sc_out sc_logic 1 signal 4 } 
	{ high_thresh_address0 sc_out sc_lv 4 signal 5 } 
	{ high_thresh_ce0 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_d0 sc_out sc_lv 8 signal 5 } 
	{ high_thresh_q0 sc_in sc_lv 8 signal 5 } 
	{ high_thresh_we0 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_address1 sc_out sc_lv 4 signal 5 } 
	{ high_thresh_ce1 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_d1 sc_out sc_lv 8 signal 5 } 
	{ high_thresh_q1 sc_in sc_lv 8 signal 5 } 
	{ high_thresh_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ low_thresh_empty_n sc_in sc_logic 1 signal -1 } 
	{ low_thresh_read sc_out sc_logic 1 signal -1 } 
	{ high_thresh_empty_n sc_in sc_logic 1 signal -1 } 
	{ high_thresh_read sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "low_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address0" }} , 
 	{ "name": "low_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce0" }} , 
 	{ "name": "low_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d0" }} , 
 	{ "name": "low_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q0" }} , 
 	{ "name": "low_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we0" }} , 
 	{ "name": "low_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address1" }} , 
 	{ "name": "low_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce1" }} , 
 	{ "name": "low_thresh_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d1" }} , 
 	{ "name": "low_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q1" }} , 
 	{ "name": "low_thresh_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we1" }} , 
 	{ "name": "high_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address0" }} , 
 	{ "name": "high_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce0" }} , 
 	{ "name": "high_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d0" }} , 
 	{ "name": "high_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q0" }} , 
 	{ "name": "high_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we0" }} , 
 	{ "name": "high_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address1" }} , 
 	{ "name": "high_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce1" }} , 
 	{ "name": "high_thresh_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d1" }} , 
 	{ "name": "high_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q1" }} , 
 	{ "name": "high_thresh_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "low_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh_empty_n", "role": "default" }} , 
 	{ "name": "low_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh_read", "role": "default" }} , 
 	{ "name": "high_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh_empty_n", "role": "default" }} , 
 	{ "name": "high_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh_read", "role": "default" }} , 
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "8294415",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry28_U0"},
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry28_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry28_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_thresh"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry28_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry28",
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"}]},
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U75", "Parent" : "4"},
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
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry28 {
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
	{"Name" : "Latency", "Min" : "14", "Max" : "8294415"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_dout fifo_data 0 24 }  { rgb2hsv_4100_empty_n fifo_status 0 1 }  { rgb2hsv_4100_read fifo_update 1 1 } } }
	imgHelper1_4101 { ap_fifo {  { imgHelper1_4101_din fifo_data 1 8 }  { imgHelper1_4101_full_n fifo_status 0 1 }  { imgHelper1_4101_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	low_thresh { ap_memory {  { low_thresh_address0 mem_address 1 4 }  { low_thresh_ce0 mem_ce 1 1 }  { low_thresh_d0 mem_din 1 8 }  { low_thresh_q0 mem_dout 0 8 }  { low_thresh_we0 mem_we 1 1 }  { low_thresh_address1 MemPortADDR2 1 4 }  { low_thresh_ce1 MemPortCE2 1 1 }  { low_thresh_d1 mem_din 1 8 }  { low_thresh_q1 MemPortDOUT2 0 8 }  { low_thresh_we1 mem_we 1 1 } } }
	high_thresh { ap_memory {  { high_thresh_address0 mem_address 1 4 }  { high_thresh_ce0 mem_ce 1 1 }  { high_thresh_d0 mem_din 1 8 }  { high_thresh_q0 mem_dout 0 8 }  { high_thresh_we0 mem_we 1 1 }  { high_thresh_address1 MemPortADDR2 1 4 }  { high_thresh_ce1 MemPortCE2 1 1 }  { high_thresh_d1 mem_din 1 8 }  { high_thresh_q1 MemPortDOUT2 0 8 }  { high_thresh_we1 mem_we 1 1 } } }
}
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
	{ p_read int 12 regular  }
	{ p_read1 int 12 regular  }
	{ low_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ high_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_4101", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ rgb2hsv_4100_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_4100_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_4101_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_4101_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_4101_write sc_out sc_logic 1 signal 1 } 
	{ p_read sc_in sc_lv 12 signal 2 } 
	{ p_read1 sc_in sc_lv 12 signal 3 } 
	{ low_thresh_address0 sc_out sc_lv 4 signal 4 } 
	{ low_thresh_ce0 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_d0 sc_out sc_lv 8 signal 4 } 
	{ low_thresh_q0 sc_in sc_lv 8 signal 4 } 
	{ low_thresh_we0 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_address1 sc_out sc_lv 4 signal 4 } 
	{ low_thresh_ce1 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_d1 sc_out sc_lv 8 signal 4 } 
	{ low_thresh_q1 sc_in sc_lv 8 signal 4 } 
	{ low_thresh_we1 sc_out sc_logic 1 signal 4 } 
	{ high_thresh_address0 sc_out sc_lv 4 signal 5 } 
	{ high_thresh_ce0 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_d0 sc_out sc_lv 8 signal 5 } 
	{ high_thresh_q0 sc_in sc_lv 8 signal 5 } 
	{ high_thresh_we0 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_address1 sc_out sc_lv 4 signal 5 } 
	{ high_thresh_ce1 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_d1 sc_out sc_lv 8 signal 5 } 
	{ high_thresh_q1 sc_in sc_lv 8 signal 5 } 
	{ high_thresh_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 2 } 
	{ p_read1_ap_vld sc_in sc_logic 1 invld 3 } 
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
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "low_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address0" }} , 
 	{ "name": "low_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce0" }} , 
 	{ "name": "low_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d0" }} , 
 	{ "name": "low_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q0" }} , 
 	{ "name": "low_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we0" }} , 
 	{ "name": "low_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address1" }} , 
 	{ "name": "low_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce1" }} , 
 	{ "name": "low_thresh_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d1" }} , 
 	{ "name": "low_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q1" }} , 
 	{ "name": "low_thresh_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we1" }} , 
 	{ "name": "high_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address0" }} , 
 	{ "name": "high_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce0" }} , 
 	{ "name": "high_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d0" }} , 
 	{ "name": "high_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q0" }} , 
 	{ "name": "high_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we0" }} , 
 	{ "name": "high_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address1" }} , 
 	{ "name": "high_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce1" }} , 
 	{ "name": "high_thresh_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d1" }} , 
 	{ "name": "high_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q1" }} , 
 	{ "name": "high_thresh_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "p_read1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read1", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "8294415",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0"}],
		"Port" : [
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "rgb2hsv_4100"}]},
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Port" : "imgHelper1_4101"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29_U0", "Port" : "high_thresh"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29_U0", "Parent" : "0",
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
			{"Name" : "p_read_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_read_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "5", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "p_read1_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0", "Parent" : "0", "Child" : ["3"],
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
			{"Name" : "rgb2hsv_4100", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rgb2hsv_4100_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "imgHelper1_4101", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "imgHelper1_4101_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "6", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "7", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "8", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "12", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "13", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "14", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "18", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "19", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "20", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "9", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "10", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "11", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "15", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "16", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "17", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "21", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "22", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "23", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "img_height", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_height_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "img_width", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5", "DependentChanDepth" : "2", "DependentChanType" : "2",
				"BlockSignal" : [
					{"Name" : "img_width_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_12ns_12ns_24_4_1_U20", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_read_c_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_read1_c_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_0_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_0_2_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_0_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_1_2_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_0_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_1_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_1_2_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_0_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.low_th_2_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_0_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_1_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.high_th_2_2_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	colorthresholding_9_0_3_2160_3840_1_s {
		rgb2hsv_4100 {Type I LastRead 5 FirstWrite -1}
		imgHelper1_4101 {Type O LastRead -1 FirstWrite 6}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc29 {
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read119 {Type I LastRead 0 FirstWrite -1}
		p_read_out {Type O LastRead -1 FirstWrite 0}
		p_read1_out {Type O LastRead -1 FirstWrite 0}}
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
		img_height {Type I LastRead 0 FirstWrite -1}
		img_width {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "8294415"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_dout fifo_data 0 24 }  { rgb2hsv_4100_empty_n fifo_status 0 1 }  { rgb2hsv_4100_read fifo_update 1 1 } } }
	imgHelper1_4101 { ap_fifo {  { imgHelper1_4101_din fifo_data 1 8 }  { imgHelper1_4101_full_n fifo_status 0 1 }  { imgHelper1_4101_write fifo_update 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 12 }  { p_read_ap_vld in_vld 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 12 }  { p_read1_ap_vld in_vld 0 1 } } }
	low_thresh { ap_memory {  { low_thresh_address0 mem_address 1 4 }  { low_thresh_ce0 mem_ce 1 1 }  { low_thresh_d0 mem_din 1 8 }  { low_thresh_q0 mem_dout 0 8 }  { low_thresh_we0 mem_we 1 1 }  { low_thresh_address1 MemPortADDR2 1 4 }  { low_thresh_ce1 MemPortCE2 1 1 }  { low_thresh_d1 mem_din 1 8 }  { low_thresh_q1 MemPortDOUT2 0 8 }  { low_thresh_we1 mem_we 1 1 } } }
	high_thresh { ap_memory {  { high_thresh_address0 mem_address 1 4 }  { high_thresh_ce0 mem_ce 1 1 }  { high_thresh_d0 mem_din 1 8 }  { high_thresh_q0 mem_dout 0 8 }  { high_thresh_we0 mem_we 1 1 }  { high_thresh_address1 MemPortADDR2 1 4 }  { high_thresh_ce1 MemPortCE2 1 1 }  { high_thresh_d1 mem_din 1 8 }  { high_thresh_q1 MemPortDOUT2 0 8 }  { high_thresh_we1 mem_we 1 1 } } }
}
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
	{ p_src_mat_rows int 32 regular {fifo 0}  }
	{ p_src_mat_cols int 32 regular {fifo 0}  }
	{ low_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
	{ high_thresh int 8 regular {array 9 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "rgb2hsv_4100", "interface" : "fifo", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "imgHelper1_4101", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_src_mat_rows", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_src_mat_cols", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "low_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "high_thresh", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ rgb2hsv_4100_dout sc_in sc_lv 24 signal 0 } 
	{ rgb2hsv_4100_empty_n sc_in sc_logic 1 signal 0 } 
	{ rgb2hsv_4100_read sc_out sc_logic 1 signal 0 } 
	{ imgHelper1_4101_din sc_out sc_lv 8 signal 1 } 
	{ imgHelper1_4101_full_n sc_in sc_logic 1 signal 1 } 
	{ imgHelper1_4101_write sc_out sc_logic 1 signal 1 } 
	{ p_src_mat_rows_dout sc_in sc_lv 32 signal 2 } 
	{ p_src_mat_rows_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_src_mat_rows_read sc_out sc_logic 1 signal 2 } 
	{ p_src_mat_cols_dout sc_in sc_lv 32 signal 3 } 
	{ p_src_mat_cols_empty_n sc_in sc_logic 1 signal 3 } 
	{ p_src_mat_cols_read sc_out sc_logic 1 signal 3 } 
	{ low_thresh_address0 sc_out sc_lv 4 signal 4 } 
	{ low_thresh_ce0 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_d0 sc_out sc_lv 8 signal 4 } 
	{ low_thresh_q0 sc_in sc_lv 8 signal 4 } 
	{ low_thresh_we0 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_address1 sc_out sc_lv 4 signal 4 } 
	{ low_thresh_ce1 sc_out sc_logic 1 signal 4 } 
	{ low_thresh_d1 sc_out sc_lv 8 signal 4 } 
	{ low_thresh_q1 sc_in sc_lv 8 signal 4 } 
	{ low_thresh_we1 sc_out sc_logic 1 signal 4 } 
	{ high_thresh_address0 sc_out sc_lv 4 signal 5 } 
	{ high_thresh_ce0 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_d0 sc_out sc_lv 8 signal 5 } 
	{ high_thresh_q0 sc_in sc_lv 8 signal 5 } 
	{ high_thresh_we0 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_address1 sc_out sc_lv 4 signal 5 } 
	{ high_thresh_ce1 sc_out sc_logic 1 signal 5 } 
	{ high_thresh_d1 sc_out sc_lv 8 signal 5 } 
	{ high_thresh_q1 sc_in sc_lv 8 signal 5 } 
	{ high_thresh_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ low_thresh_empty_n sc_in sc_logic 1 signal -1 } 
	{ low_thresh_read sc_out sc_logic 1 signal -1 } 
	{ high_thresh_empty_n sc_in sc_logic 1 signal -1 } 
	{ high_thresh_read sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "p_src_mat_rows_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "dout" }} , 
 	{ "name": "p_src_mat_rows_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_rows_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_rows", "role": "read" }} , 
 	{ "name": "p_src_mat_cols_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "dout" }} , 
 	{ "name": "p_src_mat_cols_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "empty_n" }} , 
 	{ "name": "p_src_mat_cols_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_src_mat_cols", "role": "read" }} , 
 	{ "name": "low_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address0" }} , 
 	{ "name": "low_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce0" }} , 
 	{ "name": "low_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d0" }} , 
 	{ "name": "low_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q0" }} , 
 	{ "name": "low_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we0" }} , 
 	{ "name": "low_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "low_thresh", "role": "address1" }} , 
 	{ "name": "low_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "ce1" }} , 
 	{ "name": "low_thresh_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "d1" }} , 
 	{ "name": "low_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "low_thresh", "role": "q1" }} , 
 	{ "name": "low_thresh_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh", "role": "we1" }} , 
 	{ "name": "high_thresh_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address0" }} , 
 	{ "name": "high_thresh_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce0" }} , 
 	{ "name": "high_thresh_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d0" }} , 
 	{ "name": "high_thresh_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q0" }} , 
 	{ "name": "high_thresh_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we0" }} , 
 	{ "name": "high_thresh_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "high_thresh", "role": "address1" }} , 
 	{ "name": "high_thresh_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "ce1" }} , 
 	{ "name": "high_thresh_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "d1" }} , 
 	{ "name": "high_thresh_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "high_thresh", "role": "q1" }} , 
 	{ "name": "high_thresh_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "low_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh_empty_n", "role": "default" }} , 
 	{ "name": "low_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "low_thresh_read", "role": "default" }} , 
 	{ "name": "high_thresh_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh_empty_n", "role": "default" }} , 
 	{ "name": "high_thresh_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "high_thresh_read", "role": "default" }} , 
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "8294415",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "colorthresholding_9_0_3_2160_3840_1_entry28_U0"},
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
			{"Name" : "p_src_mat_rows", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry28_U0", "Port" : "p_src_mat_rows"}]},
			{"Name" : "p_src_mat_cols", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4", "DependentChanType" : "2",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_entry28_U0", "Port" : "p_src_mat_cols"}]},
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "low_thresh"}]},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc_U0", "Port" : "high_thresh"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.colorthresholding_9_0_3_2160_3840_1_entry28_U0", "Parent" : "0",
		"CDFG" : "colorthresholding_9_0_3_2160_3840_1_entry28",
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8", "EstimateLatencyMax" : "8",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "low_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "high_thresh", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"}]},
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.xFInRange_9_0_2160_3840_15_0_1_9_1_3_U0.mul_mul_16ns_16ns_32_4_1_U75", "Parent" : "4"},
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
		p_src_mat_rows {Type I LastRead 0 FirstWrite -1}
		p_src_mat_cols {Type I LastRead 0 FirstWrite -1}
		low_thresh {Type I LastRead 3 FirstWrite -1}
		high_thresh {Type I LastRead 3 FirstWrite -1}}
	colorthresholding_9_0_3_2160_3840_1_entry28 {
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
	{"Name" : "Latency", "Min" : "14", "Max" : "8294415"}
	, {"Name" : "Interval", "Min" : "9", "Max" : "8294407"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb2hsv_4100 { ap_fifo {  { rgb2hsv_4100_dout fifo_data 0 24 }  { rgb2hsv_4100_empty_n fifo_status 0 1 }  { rgb2hsv_4100_read fifo_update 1 1 } } }
	imgHelper1_4101 { ap_fifo {  { imgHelper1_4101_din fifo_data 1 8 }  { imgHelper1_4101_full_n fifo_status 0 1 }  { imgHelper1_4101_write fifo_update 1 1 } } }
	p_src_mat_rows { ap_fifo {  { p_src_mat_rows_dout fifo_data 0 32 }  { p_src_mat_rows_empty_n fifo_status 0 1 }  { p_src_mat_rows_read fifo_update 1 1 } } }
	p_src_mat_cols { ap_fifo {  { p_src_mat_cols_dout fifo_data 0 32 }  { p_src_mat_cols_empty_n fifo_status 0 1 }  { p_src_mat_cols_read fifo_update 1 1 } } }
	low_thresh { ap_memory {  { low_thresh_address0 mem_address 1 4 }  { low_thresh_ce0 mem_ce 1 1 }  { low_thresh_d0 mem_din 1 8 }  { low_thresh_q0 mem_dout 0 8 }  { low_thresh_we0 mem_we 1 1 }  { low_thresh_address1 MemPortADDR2 1 4 }  { low_thresh_ce1 MemPortCE2 1 1 }  { low_thresh_d1 mem_din 1 8 }  { low_thresh_q1 MemPortDOUT2 0 8 }  { low_thresh_we1 mem_we 1 1 } } }
	high_thresh { ap_memory {  { high_thresh_address0 mem_address 1 4 }  { high_thresh_ce0 mem_ce 1 1 }  { high_thresh_d0 mem_din 1 8 }  { high_thresh_q0 mem_dout 0 8 }  { high_thresh_we0 mem_we 1 1 }  { high_thresh_address1 MemPortADDR2 1 4 }  { high_thresh_ce1 MemPortCE2 1 1 }  { high_thresh_d1 mem_din 1 8 }  { high_thresh_q1 MemPortDOUT2 0 8 }  { high_thresh_we1 mem_we 1 1 } } }
}
