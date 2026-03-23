transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib activehdl/xbip_utils_v3_0_11
vlib activehdl/axi_utils_v2_0_7
vlib activehdl/xbip_pipe_v3_0_7
vlib activehdl/xbip_dsp48_wrapper_v3_0_5
vlib activehdl/xbip_dsp48_addsub_v3_0_7
vlib activehdl/xbip_dsp48_multadd_v3_0_7
vlib activehdl/xbip_bram18k_v3_0_7
vlib activehdl/mult_gen_v12_0_19
vlib activehdl/floating_point_v7_1_16
vlib activehdl/xil_defaultlib

vmap xbip_utils_v3_0_11 activehdl/xbip_utils_v3_0_11
vmap axi_utils_v2_0_7 activehdl/axi_utils_v2_0_7
vmap xbip_pipe_v3_0_7 activehdl/xbip_pipe_v3_0_7
vmap xbip_dsp48_wrapper_v3_0_5 activehdl/xbip_dsp48_wrapper_v3_0_5
vmap xbip_dsp48_addsub_v3_0_7 activehdl/xbip_dsp48_addsub_v3_0_7
vmap xbip_dsp48_multadd_v3_0_7 activehdl/xbip_dsp48_multadd_v3_0_7
vmap xbip_bram18k_v3_0_7 activehdl/xbip_bram18k_v3_0_7
vmap mult_gen_v12_0_19 activehdl/mult_gen_v12_0_19
vmap floating_point_v7_1_16 activehdl/floating_point_v7_1_16
vmap xil_defaultlib activehdl/xil_defaultlib

vcom -work xbip_utils_v3_0_11 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_7 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_7 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_5 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_7 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_7 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_7 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_19 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_16 -  \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/floating_point_v7_1_rfs.vhd" \

vlog -work floating_point_v7_1_16  -v2k5 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l xbip_pipe_v3_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_dsp48_addsub_v3_0_7 -l xbip_dsp48_multadd_v3_0_7 -l xbip_bram18k_v3_0_7 -l mult_gen_v12_0_19 -l floating_point_v7_1_16 -l xil_defaultlib \
"../../../ipstatic/chaos_cryptor_0/src/floating_point_div/hdl/floating_point_v7_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l xbip_pipe_v3_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_dsp48_addsub_v3_0_7 -l xbip_dsp48_multadd_v3_0_7 -l xbip_bram18k_v3_0_7 -l mult_gen_v12_0_19 -l floating_point_v7_1_16 -l xil_defaultlib \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/floating_point_div/sim/floating_point_div.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/floating_point_add/sim/floating_point_add.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/floating_point_mul/sim/floating_point_mul.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/hdl/chaos_cryptor_v1_0_S00_AXI.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/CTR_mode_feistel_encrypt.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/Crypto_Engine.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/F.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/PRNG.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/addroundkey.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/affine_transform.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/extractor.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/feistel_encrypt.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/key_generator.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/mixcolumns.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/mixer.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/sawtooth.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/sbox_generator.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/shiftrows.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/subbytes.v" \

vlog -work xil_defaultlib  -sv2k12 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l xbip_pipe_v3_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_dsp48_addsub_v3_0_7 -l xbip_dsp48_multadd_v3_0_7 -l xbip_bram18k_v3_0_7 -l mult_gen_v12_0_19 -l floating_point_v7_1_16 -l xil_defaultlib \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/src/controller.sv" \

vlog -work xil_defaultlib  -v2k5 -l xbip_utils_v3_0_11 -l axi_utils_v2_0_7 -l xbip_pipe_v3_0_7 -l xbip_dsp48_wrapper_v3_0_5 -l xbip_dsp48_addsub_v3_0_7 -l xbip_dsp48_multadd_v3_0_7 -l xbip_bram18k_v3_0_7 -l mult_gen_v12_0_19 -l floating_point_v7_1_16 -l xil_defaultlib \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/hdl/chaos_cryptor_v1_0.v" \
"../../../../Chaos_Based_Symmetric_Image_Encryption.gen/sources_1/ip/chaos_cryptor_0/sim/chaos_cryptor_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

