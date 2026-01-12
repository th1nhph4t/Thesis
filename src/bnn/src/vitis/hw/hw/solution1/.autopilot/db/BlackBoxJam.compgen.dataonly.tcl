# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
in_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
out_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
doInit { 
	dir I
	width 1
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
targetLayer { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
targetMem { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
targetInd { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
targetThresh { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
val_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 80
	offset_end 91
}
numReps { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 92
	offset_end 99
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


