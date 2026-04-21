set_max_delay -datapath_only -from [get_clocks clk_fpga_0] -to [get_clocks clk_out1_design_1_clk_wiz_0_2] 40.000

set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -hierarchical -filter {NAME =~ *out*}]

# Cho phép vòng lặp trên các dây z0, z1, z2, z3 của toàn bộ 8 bộ RO
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -hierarchical -filter {NAME =~ *my_ro_inst/z0*}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -hierarchical -filter {NAME =~ *my_ro_inst/z1*}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -hierarchical -filter {NAME =~ *my_ro_inst/z2*}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -hierarchical -filter {NAME =~ *my_ro_inst/z3*}]

# Cho phép vòng lặp trên dây phản hồi (feedback)
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[0]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[1]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[2]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[3]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[4]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[5]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[6]}]
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[7]}]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 2 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[0]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[1]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[2]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[3]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[4]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[5]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[6]} {design_1_i/TRNG_top_0/inst/trng_core_inst/ro_feedback[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[0].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[3].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[1].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[2].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[4].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[5].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[6].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[7].my_ro_inst/z1}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe9]
set_property port_width 1 [get_debug_ports u_ila_0/probe9]
connect_debug_port u_ila_0/probe9 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[0].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe10]
set_property port_width 1 [get_debug_ports u_ila_0/probe10]
connect_debug_port u_ila_0/probe10 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[1].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe11]
set_property port_width 1 [get_debug_ports u_ila_0/probe11]
connect_debug_port u_ila_0/probe11 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[2].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe12]
set_property port_width 1 [get_debug_ports u_ila_0/probe12]
connect_debug_port u_ila_0/probe12 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[3].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe13]
set_property port_width 1 [get_debug_ports u_ila_0/probe13]
connect_debug_port u_ila_0/probe13 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[4].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe14]
set_property port_width 1 [get_debug_ports u_ila_0/probe14]
connect_debug_port u_ila_0/probe14 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[5].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe15]
set_property port_width 1 [get_debug_ports u_ila_0/probe15]
connect_debug_port u_ila_0/probe15 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[6].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe16]
set_property port_width 1 [get_debug_ports u_ila_0/probe16]
connect_debug_port u_ila_0/probe16 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[7].my_ro_inst/z2}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe17]
set_property port_width 1 [get_debug_ports u_ila_0/probe17]
connect_debug_port u_ila_0/probe17 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[0].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe18]
set_property port_width 1 [get_debug_ports u_ila_0/probe18]
connect_debug_port u_ila_0/probe18 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[7].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe19]
set_property port_width 1 [get_debug_ports u_ila_0/probe19]
connect_debug_port u_ila_0/probe19 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[1].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe20]
set_property port_width 1 [get_debug_ports u_ila_0/probe20]
connect_debug_port u_ila_0/probe20 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[2].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe21]
set_property port_width 1 [get_debug_ports u_ila_0/probe21]
connect_debug_port u_ila_0/probe21 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[4].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe22]
set_property port_width 1 [get_debug_ports u_ila_0/probe22]
connect_debug_port u_ila_0/probe22 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[3].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe23]
set_property port_width 1 [get_debug_ports u_ila_0/probe23]
connect_debug_port u_ila_0/probe23 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[5].my_ro_inst/z3}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe24]
set_property port_width 1 [get_debug_ports u_ila_0/probe24]
connect_debug_port u_ila_0/probe24 [get_nets [list {design_1_i/TRNG_top_0/inst/trng_core_inst/RO_GEN[6].my_ro_inst/z3}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
