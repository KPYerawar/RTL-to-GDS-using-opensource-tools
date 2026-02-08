# Match the library units: 1ps, 1ff, 1uA
set_units -time ps -capacitance ff -current ua -voltage v

# 1. Create a Virtual Clock with a 1000ps (1ns) period
create_clock -name vclk -period 1000

# 2. Input Constraints (200ps delay)
set_input_delay 200 -clock vclk [get_ports in1]
set_input_delay 200 -clock vclk [get_ports in2]

# 3. Output Constraints (200ps requirement)
set_output_delay 200 -clock vclk [get_ports out1]

# 4. Load (Simulate a small load)
set_load 0.5 [get_ports out1]
