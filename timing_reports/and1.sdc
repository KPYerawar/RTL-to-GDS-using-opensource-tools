# 1. Define a Virtual Clock (1 GHz frequency = 1.0ns period)
create_clock -name clk -period 1.0

# 2. Input Delay (Assume data arrives 0.1ns after the clock edge)
set_input_delay 0.1 -clock clk [get_ports {in1 in2}]

# 3. Output Delay (Data must be ready 0.1ns before the next clock edge)
set_output_delay 0.1 -clock clk [get_ports out1]
