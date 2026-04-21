-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Apr  8 10:02:17 2026
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/vinhphat-josh/Repos/Chaos_Based_Symmetric_Image_Encryption/vivado/fixedLengthRO_TRNG/fixedLengthRO_TRNG/fixedLengthRO_TRNG.gen/sources_1/bd/design_1/ip/design_1_TRNG_top_0_1/design_1_TRNG_top_0_1_stub.vhdl
-- Design      : design_1_TRNG_top_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_TRNG_top_0_1 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    enable : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );

end design_1_TRNG_top_0_1;

architecture stub of design_1_TRNG_top_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,enable,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tlast,m_axis_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TRNG_top,Vivado 2023.2";
begin
end;
