# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
low_thresh { 
	dir I
	width 8
	depth 9
	mode ap_memory
	offset 16
	offset_end 31
}
high_thresh { 
	dir I
	width 8
	depth 9
	mode ap_memory
	offset 32
	offset_end 47
}
rows { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
cols { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


