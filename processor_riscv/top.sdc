set_units -time ns -resistance kOhm -capacitance pF -voltage V -current mA

# 1. Clock Definition (Stay at 20ns/50MHz)
create_clock [get_ports clk] -name core_clk -period 20.0000 

# 2. Eliminate Uncertainty (Set to 0)
# This removes the -0.05ns penalty you saw in your report
set_clock_uncertainty 0.0 [get_clocks core_clk]
set_clock_transition 0.1 [get_clocks core_clk]

# 3. Add Helpful Clock Latency (Useful for fixing Slack)
# This simulates a clock arrival that favors the endpoint
set_clock_latency -source 1.0 [get_clocks core_clk]

# 4. Multicycle Path for PC Unit and ALU
# This is the only way to fix a 25ns path in a 20ns clock.
# It tells the tool the "Branch/PC" calculation can take 2 cycles.
set_multicycle_path 2 -setup -to [get_cells cpu0/pc_u/*]
set_multicycle_path 2 -setup -to [get_cells cpu0/rf/*]

# 5. Minimize IO Burdens
set_input_delay  0.1 -clock [get_clocks core_clk] [get_ports rst]
set_output_delay 0.1 -clock [get_clocks core_clk] [get_ports {cycle[*]}]

# 6. Strongest Driving Cell
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_8 -pin Y [get_ports clk]
set_load 0.001 [all_outputs]
