# 1. SET UNITS (Crucial Fix)
# Tell OpenSTA we are writing numbers in Nanoseconds and FemtoFarads
set_cmd_units -time ns -capacitance fF -current uA -voltage V -resistance kOhm

# 2. OPERATING CONDITIONS
# Force the "typical" mode defined in your library header
set_operating_conditions typical

# 3. CLOCK (1GHz = 1.0ns)
create_clock -name clk -period 1.0

# 4. CONSTRAINTS
# Input Delay: 0.05ns (50ps)
set_input_delay 0.05 -clock clk [get_ports {in1 in2}]
# Output Delay: 0.05ns (50ps)
set_output_delay 0.05 -clock clk [get_ports out1]

# 5. ENVIRONMENT (The Real Fix)
# Input Transition: 0.05ns (50ps) - A healthy sharp edge
set_input_transition 0.05 [get_ports {in1 in2}]

# Output Load: 5.0 fF - A healthy standard load (not too small, not too big)
set_load 5.0 [get_ports out1]
