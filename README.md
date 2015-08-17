# Keypad-Scanner-and-Encoder

Steps to be followed for Simulation -:
-> Type the following commands in the terminal window -:
   1) cd Project
   2) vcs +v2k controller.v decoder.v fifo.v keypad.v kse.v kse_test.v;./simv | tee Prekse.txt
   3) gtkwave KSE.vcd
-> View the simulation waveforms by adding the signals.



Steps to be followed for synthesis -:
-> Type the following commands in the terminal window -:
   1) cd Project
   2) dc_shell -xg -f sysnthesist.script | tee report.txt
   3) design_vision

-> go to 'file' and 'execute synthesist.script'.
-> Before executing the script, make the changes for the file name,library, clock, delay in the following as it opens in the editor window and save it:

set link_library {/apps/toshiba/sjsu/synopsys/tc240c/tc240c.db_WCCOM25}
set target_library {/apps/toshiba/sjsu/synopsys/tc240c/tc240c.db_WCCOM25}
read_file -format verilog {/home/ba/baxi6350/project/combined_final.v}
analyze -library WORK -format verilog {/home/ba/baxi6350/project/combined_final.v}
elaborate counter -architecture verilog -library WORK

write -f verilog -o count_netlist_generic
check_design
create_clock -name "clock" -period 5 -waveform { 2.5 5 }  { clk }
set_clock_uncertainty 0.20 clock
set_output_delay 2.5 -clock clk  [all_inputs]
set_input_delay 2.5 clock clk [all_outputs]
set_load 1000.000000 [all_outputs]
set_wire_load_model -name T8G10TW8_W -library tc240c
set_operating_conditions -library tc240c WCCOM25
compile -map_effort medium
write -f verilog -o count_netlist_target
update_timing
report_area >> 
report_power -analysis_effort low >> 
report_timing -max_paths 5 >> 

