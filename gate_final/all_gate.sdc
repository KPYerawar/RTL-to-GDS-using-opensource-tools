# Create a virtual clock (100MHz / 10ns period)
create_clock -name vclk -period 10

# Set input delays (assuming signals arrive 2ns after clock edge)
set_input_delay 2.0 -clock vclk [get_ports {a b}]

# Set output delays (assuming 2ns required before next clock edge)
set_output_delay 2.0 -clock vclk [get_ports {and1 or1 xor1 nand1 nor1 xnor1}]

# Set load for outputs (representing the capacitance of next gates)
set_load 0.034 [all_outputs]
