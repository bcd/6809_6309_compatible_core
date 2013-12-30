#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file /home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/syn/lattice/P6809/launch_synplify.tcl
#-- Written on Sun Dec 29 07:16:20 2013

project -close
set filename "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/syn/lattice/P6809/P6809_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -4

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency auto
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	set_option -frequency 1
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
}
#-- add_file options
set_option -include_path "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/syn/lattice"
add_file -verilog "/usr/local/diamond/2.2_x64/cae_library/synthesis/verilog/machxo2.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/syn/lattice/CC3_top.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/rtl/verilog/alu16.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/rtl/verilog/decoders.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/rtl/verilog/defs.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/rtl/verilog/MC6809_cpu.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/rtl/verilog/regblock.v"
add_file -verilog "/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/syn/lattice/bios2k.v"
project -result_file {/home/pacito/02_Elektronik/020_V6809/6809/opencores/trunk/syn/lattice/P6809/P6809.edi}
project -save "$filename"