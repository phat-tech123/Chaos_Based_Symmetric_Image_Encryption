-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Tue Mar 31 13:31:05 2026
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_TRNG_top_0_0_sim_netlist.vhdl
-- Design      : design_1_TRNG_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : out STD_LOGIC;
    enable : in STD_LOGIC;
    \in\ : in STD_LOGIC;
    pdl_ctrl_reg : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6 : entity is "RO";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6 is
  signal \^out\ : STD_LOGIC;
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  signal z2 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
begin
  \out\ <= \^out\;
LUT4_and: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8888"
    )
        port map (
      I0 => \in\,
      I1 => enable,
      I2 => '0',
      I3 => '0',
      O => z0
    );
LUT4_not1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z0,
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => pdl_ctrl_reg(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl_ctrl_reg(2),
      I2 => pdl_ctrl_reg(0),
      I3 => pdl_ctrl_reg(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl_ctrl_reg(1),
      I2 => pdl_ctrl_reg(2),
      I3 => pdl_ctrl_reg(0),
      O => \^out\
    );
\ro_sampled[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \^out\,
      O => D(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_0 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    enable : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG is
  signal \RO_GEN[0].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[1].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[2].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[3].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[4].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[5].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[6].my_ro_inst_n_0\ : STD_LOGIC;
  signal \RO_GEN[7].my_ro_inst_n_0\ : STD_LOGIC;
  signal \^aresetn_0\ : STD_LOGIC;
  signal final_bit_i_1_n_0 : STD_LOGIC;
  signal final_bit_i_2_n_0 : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \pdl_ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \pdl_ctrl[1]_i_1_n_0\ : STD_LOGIC;
  signal \pdl_ctrl[2]_i_1_n_0\ : STD_LOGIC;
  signal pdl_ctrl_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ro_feedback : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ro_feedback : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ro_feedback : signal is std.standard.true;
  signal ro_sampled : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \pdl_ctrl[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pdl_ctrl[2]_i_1\ : label is "soft_lutpair0";
begin
  aresetn_0 <= \^aresetn_0\;
  p_0_in(0) <= \^p_0_in\(0);
\RO_GEN[0].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO
     port map (
      D(0) => \RO_GEN[0].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(0),
      \out\ => ro_feedback(0),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[1].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_0
     port map (
      D(0) => \RO_GEN[1].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(1),
      \out\ => ro_feedback(1),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[2].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_1
     port map (
      D(0) => \RO_GEN[2].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(2),
      \out\ => ro_feedback(2),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[3].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_2
     port map (
      D(0) => \RO_GEN[3].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(3),
      \out\ => ro_feedback(3),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[4].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_3
     port map (
      D(0) => \RO_GEN[4].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(4),
      \out\ => ro_feedback(4),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[5].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_4
     port map (
      D(0) => \RO_GEN[5].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(5),
      \out\ => ro_feedback(5),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[6].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_5
     port map (
      D(0) => \RO_GEN[6].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(6),
      \out\ => ro_feedback(6),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
\RO_GEN[7].my_ro_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_RO_6
     port map (
      D(0) => \RO_GEN[7].my_ro_inst_n_0\,
      enable => enable,
      \in\ => ro_feedback(7),
      \out\ => ro_feedback(7),
      pdl_ctrl_reg(2 downto 0) => pdl_ctrl_reg(2 downto 0)
    );
final_bit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699600000000"
    )
        port map (
      I0 => final_bit_i_2_n_0,
      I1 => ro_sampled(1),
      I2 => ro_sampled(0),
      I3 => ro_sampled(5),
      I4 => ro_sampled(4),
      I5 => enable,
      O => final_bit_i_1_n_0
    );
final_bit_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => ro_sampled(3),
      I1 => ro_sampled(2),
      I2 => ro_sampled(7),
      I3 => ro_sampled(6),
      O => final_bit_i_2_n_0
    );
final_bit_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => final_bit_i_1_n_0,
      Q => \^p_0_in\(0)
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^aresetn_0\
    );
\pdl_ctrl[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => enable,
      I2 => pdl_ctrl_reg(0),
      O => \pdl_ctrl[0]_i_1_n_0\
    );
\pdl_ctrl[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => pdl_ctrl_reg(0),
      I2 => enable,
      I3 => pdl_ctrl_reg(1),
      O => \pdl_ctrl[1]_i_1_n_0\
    );
\pdl_ctrl[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => pdl_ctrl_reg(0),
      I2 => pdl_ctrl_reg(1),
      I3 => enable,
      I4 => pdl_ctrl_reg(2),
      O => \pdl_ctrl[2]_i_1_n_0\
    );
\pdl_ctrl_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \pdl_ctrl[0]_i_1_n_0\,
      Q => pdl_ctrl_reg(0)
    );
\pdl_ctrl_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \pdl_ctrl[1]_i_1_n_0\,
      Q => pdl_ctrl_reg(1)
    );
\pdl_ctrl_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \pdl_ctrl[2]_i_1_n_0\,
      Q => pdl_ctrl_reg(2)
    );
\ro_sampled_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[0].my_ro_inst_n_0\,
      Q => ro_sampled(0)
    );
\ro_sampled_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[1].my_ro_inst_n_0\,
      Q => ro_sampled(1)
    );
\ro_sampled_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[2].my_ro_inst_n_0\,
      Q => ro_sampled(2)
    );
\ro_sampled_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[3].my_ro_inst_n_0\,
      Q => ro_sampled(3)
    );
\ro_sampled_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[4].my_ro_inst_n_0\,
      Q => ro_sampled(4)
    );
\ro_sampled_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[5].my_ro_inst_n_0\,
      Q => ro_sampled(5)
    );
\ro_sampled_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[6].my_ro_inst_n_0\,
      Q => ro_sampled(6)
    );
\ro_sampled_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \^aresetn_0\,
      D => \RO_GEN[7].my_ro_inst_n_0\,
      Q => ro_sampled(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top is
  port (
    m_axis_tvalid_reg_0 : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    enable : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top is
  signal \bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal bit_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \m_axis_tdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[31]_i_3_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_5_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_i_2_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal shift_reg0 : STD_LOGIC;
  signal trng_core_inst_n_1 : STD_LOGIC;
  signal word_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \word_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \word_cnt[7]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tlast_i_3 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of m_axis_tlast_i_4 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tlast_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of m_axis_tvalid_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \word_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \word_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \word_cnt[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \word_cnt[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \word_cnt[6]_i_1\ : label is "soft_lutpair4";
begin
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid_reg_0 <= \^m_axis_tvalid_reg_0\;
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => enable,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      I3 => bit_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2828AA28"
    )
        port map (
      I0 => enable,
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(1),
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      O => \p_0_in__0\(1)
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F0F040F040F040"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => enable,
      I3 => bit_cnt_reg(2),
      I4 => bit_cnt_reg(1),
      I5 => bit_cnt_reg(0),
      O => \p_0_in__0\(2)
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B8B8"
    )
        port map (
      I0 => enable,
      I1 => \m_axis_tdata[31]_i_3_n_0\,
      I2 => bit_cnt_reg(3),
      I3 => bit_cnt_reg(0),
      I4 => bit_cnt_reg(1),
      I5 => bit_cnt_reg(2),
      O => \p_0_in__0\(3)
    );
\bit_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => enable,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid_reg_0\,
      O => \bit_cnt[4]_i_1_n_0\
    );
\bit_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40F0F040"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => enable,
      I3 => bit_cnt_reg(4),
      I4 => m_axis_tvalid_i_2_n_0,
      O => \p_0_in__0\(4)
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bit_cnt[4]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \p_0_in__0\(0),
      Q => bit_cnt_reg(0)
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bit_cnt[4]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \p_0_in__0\(1),
      Q => bit_cnt_reg(1)
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bit_cnt[4]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \p_0_in__0\(2),
      Q => bit_cnt_reg(2)
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bit_cnt[4]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \p_0_in__0\(3),
      Q => bit_cnt_reg(3)
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \bit_cnt[4]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \p_0_in__0\(4),
      Q => bit_cnt_reg(4)
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_3_n_0\,
      I1 => bit_cnt_reg(3),
      I2 => bit_cnt_reg(0),
      I3 => bit_cnt_reg(1),
      I4 => bit_cnt_reg(2),
      I5 => bit_cnt_reg(4),
      O => \m_axis_tdata[31]_i_1_n_0\
    );
\m_axis_tdata[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => enable,
      O => \m_axis_tdata[31]_i_3_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(0),
      Q => m_axis_tdata(0)
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(10),
      Q => m_axis_tdata(10)
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(11),
      Q => m_axis_tdata(11)
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(12),
      Q => m_axis_tdata(12)
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(13),
      Q => m_axis_tdata(13)
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(14),
      Q => m_axis_tdata(14)
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(15),
      Q => m_axis_tdata(15)
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(16),
      Q => m_axis_tdata(16)
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(17),
      Q => m_axis_tdata(17)
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(18),
      Q => m_axis_tdata(18)
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(19),
      Q => m_axis_tdata(19)
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(1),
      Q => m_axis_tdata(1)
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(20),
      Q => m_axis_tdata(20)
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(21),
      Q => m_axis_tdata(21)
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(22),
      Q => m_axis_tdata(22)
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(23),
      Q => m_axis_tdata(23)
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(24),
      Q => m_axis_tdata(24)
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(25),
      Q => m_axis_tdata(25)
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(26),
      Q => m_axis_tdata(26)
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(27),
      Q => m_axis_tdata(27)
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(28),
      Q => m_axis_tdata(28)
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(29),
      Q => m_axis_tdata(29)
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(2),
      Q => m_axis_tdata(2)
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(30),
      Q => m_axis_tdata(30)
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(31),
      Q => m_axis_tdata(31)
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(3),
      Q => m_axis_tdata(3)
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(4),
      Q => m_axis_tdata(4)
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(5),
      Q => m_axis_tdata(5)
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(6),
      Q => m_axis_tdata(6)
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(7),
      Q => m_axis_tdata(7)
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(8),
      Q => m_axis_tdata(8)
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_0_in(9),
      Q => m_axis_tdata(9)
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040004"
    )
        port map (
      I0 => m_axis_tlast_i_2_n_0,
      I1 => m_axis_tlast_i_3_n_0,
      I2 => \m_axis_tdata[31]_i_3_n_0\,
      I3 => m_axis_tlast_i_4_n_0,
      I4 => m_axis_tlast_i_5_n_0,
      I5 => \^m_axis_tlast\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => word_cnt(7),
      I1 => word_cnt(6),
      I2 => word_cnt(5),
      I3 => word_cnt(4),
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => word_cnt(1),
      I1 => word_cnt(0),
      I2 => word_cnt(3),
      I3 => word_cnt(2),
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => bit_cnt_reg(4),
      I1 => bit_cnt_reg(2),
      I2 => bit_cnt_reg(1),
      I3 => bit_cnt_reg(0),
      I4 => bit_cnt_reg(3),
      O => m_axis_tlast_i_4_n_0
    );
m_axis_tlast_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid_reg_0\,
      O => m_axis_tlast_i_5_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => trng_core_inst_n_1,
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8080FF80"
    )
        port map (
      I0 => bit_cnt_reg(4),
      I1 => m_axis_tvalid_i_2_n_0,
      I2 => enable,
      I3 => \^m_axis_tvalid_reg_0\,
      I4 => m_axis_tready,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => bit_cnt_reg(3),
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(1),
      I3 => bit_cnt_reg(2),
      O => m_axis_tvalid_i_2_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => trng_core_inst_n_1,
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid_reg_0\
    );
\shift_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
        port map (
      I0 => enable,
      I1 => \^m_axis_tvalid_reg_0\,
      I2 => m_axis_tready,
      O => shift_reg0
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(0),
      Q => p_0_in(1)
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(10),
      Q => p_0_in(11)
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(11),
      Q => p_0_in(12)
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(12),
      Q => p_0_in(13)
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(13),
      Q => p_0_in(14)
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(14),
      Q => p_0_in(15)
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(15),
      Q => p_0_in(16)
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(16),
      Q => p_0_in(17)
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(17),
      Q => p_0_in(18)
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(18),
      Q => p_0_in(19)
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(19),
      Q => p_0_in(20)
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(1),
      Q => p_0_in(2)
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(20),
      Q => p_0_in(21)
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(21),
      Q => p_0_in(22)
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(22),
      Q => p_0_in(23)
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(23),
      Q => p_0_in(24)
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(24),
      Q => p_0_in(25)
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(25),
      Q => p_0_in(26)
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(26),
      Q => p_0_in(27)
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(27),
      Q => p_0_in(28)
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(28),
      Q => p_0_in(29)
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(29),
      Q => p_0_in(30)
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(2),
      Q => p_0_in(3)
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(30),
      Q => p_0_in(31)
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(3),
      Q => p_0_in(4)
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(4),
      Q => p_0_in(5)
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(5),
      Q => p_0_in(6)
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(6),
      Q => p_0_in(7)
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(7),
      Q => p_0_in(8)
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(8),
      Q => p_0_in(9)
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => shift_reg0,
      CLR => trng_core_inst_n_1,
      D => p_0_in(9),
      Q => p_0_in(10)
    );
trng_core_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG
     port map (
      aclk => aclk,
      aresetn => aresetn,
      aresetn_0 => trng_core_inst_n_1,
      enable => enable,
      p_0_in(0) => p_0_in(0)
    );
\word_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enable,
      I1 => word_cnt(0),
      O => p_1_in(0)
    );
\word_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => word_cnt(1),
      I1 => word_cnt(0),
      I2 => enable,
      O => \word_cnt[1]_i_1_n_0\
    );
\word_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7800"
    )
        port map (
      I0 => word_cnt(0),
      I1 => word_cnt(1),
      I2 => word_cnt(2),
      I3 => enable,
      O => \word_cnt[2]_i_1_n_0\
    );
\word_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => enable,
      I1 => word_cnt(2),
      I2 => word_cnt(1),
      I3 => word_cnt(0),
      I4 => word_cnt(3),
      O => p_1_in(3)
    );
\word_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => word_cnt(1),
      I1 => word_cnt(0),
      I2 => word_cnt(3),
      I3 => word_cnt(2),
      I4 => word_cnt(4),
      I5 => enable,
      O => \word_cnt[4]_i_1_n_0\
    );
\word_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => enable,
      I1 => word_cnt(4),
      I2 => m_axis_tlast_i_3_n_0,
      I3 => word_cnt(5),
      O => p_1_in(5)
    );
\word_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => enable,
      I1 => word_cnt(5),
      I2 => m_axis_tlast_i_3_n_0,
      I3 => word_cnt(4),
      I4 => word_cnt(6),
      O => p_1_in(6)
    );
\word_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^m_axis_tvalid_reg_0\,
      I1 => m_axis_tready,
      I2 => enable,
      O => \word_cnt[7]_i_1_n_0\
    );
\word_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800000000000"
    )
        port map (
      I0 => word_cnt(4),
      I1 => m_axis_tlast_i_3_n_0,
      I2 => word_cnt(5),
      I3 => word_cnt(6),
      I4 => word_cnt(7),
      I5 => enable,
      O => \word_cnt[7]_i_2_n_0\
    );
\word_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_1_in(0),
      Q => word_cnt(0)
    );
\word_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \word_cnt[1]_i_1_n_0\,
      Q => word_cnt(1)
    );
\word_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \word_cnt[2]_i_1_n_0\,
      Q => word_cnt(2)
    );
\word_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_1_in(3),
      Q => word_cnt(3)
    );
\word_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \word_cnt[4]_i_1_n_0\,
      Q => word_cnt(4)
    );
\word_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_1_in(5),
      Q => word_cnt(5)
    );
\word_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => p_1_in(6),
      Q => word_cnt(6)
    );
\word_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \word_cnt[7]_i_1_n_0\,
      CLR => trng_core_inst_n_1,
      D => \word_cnt[7]_i_2_n_0\,
      Q => word_cnt(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    enable : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_TRNG_top_0_0,TRNG_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "TRNG_top,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TRNG_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      enable => enable,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid_reg_0 => m_axis_tvalid
    );
end STRUCTURE;
