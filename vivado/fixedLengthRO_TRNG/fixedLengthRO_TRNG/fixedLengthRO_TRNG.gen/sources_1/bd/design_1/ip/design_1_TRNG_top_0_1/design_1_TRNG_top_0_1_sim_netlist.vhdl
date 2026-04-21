-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed Apr  8 10:02:17 2026
-- Host        : ubuntu running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/vinhphat-josh/Repos/Chaos_Based_Symmetric_Image_Encryption/vivado/fixedLengthRO_TRNG/fixedLengthRO_TRNG/fixedLengthRO_TRNG.gen/sources_1/bd/design_1/ip/design_1_TRNG_top_0_1/design_1_TRNG_top_0_1_sim_netlist.vhdl
-- Design      : design_1_TRNG_top_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TRNG_top_0_1_RO is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of design_1_TRNG_top_0_1_RO : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of design_1_TRNG_top_0_1_RO : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TRNG_top_0_1_RO : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of design_1_TRNG_top_0_1_RO : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of design_1_TRNG_top_0_1_RO : entity is "soft";
end design_1_TRNG_top_0_1_RO;

architecture STRUCTURE of design_1_TRNG_top_0_1_RO is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__1\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__1\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__1\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__1\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__1\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__1\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__1\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__1\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__2\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__2\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__2\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__2\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__2\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__2\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__2\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__2\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__3\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__3\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__3\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__3\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__3\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__3\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__3\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__3\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__4\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__4\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__4\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__4\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__4\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__4\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__4\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__4\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__5\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__5\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__5\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__5\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__5\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__5\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__5\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__5\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__6\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__6\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__6\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__6\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__6\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__6\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__6\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__6\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_TRNG_top_0_1_RO__7\ is
  port (
    \in\ : in STD_LOGIC;
    enable : in STD_LOGIC;
    pdl : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \out\ : out STD_LOGIC
  );
  attribute I_AND : string;
  attribute I_AND of \design_1_TRNG_top_0_1_RO__7\ : entity is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \design_1_TRNG_top_0_1_RO__7\ : entity is "16'b0101010101010101";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_TRNG_top_0_1_RO__7\ : entity is "RO";
  attribute chainLength : integer;
  attribute chainLength of \design_1_TRNG_top_0_1_RO__7\ : entity is 4;
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \design_1_TRNG_top_0_1_RO__7\ : entity is "soft";
end \design_1_TRNG_top_0_1_RO__7\;

architecture STRUCTURE of \design_1_TRNG_top_0_1_RO__7\ is
  signal z0 : STD_LOGIC;
  signal z1 : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of z1 : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of z1 : signal is std.standard.true;
  signal z2 : STD_LOGIC;
  attribute DONT_TOUCH of z2 : signal is std.standard.true;
  attribute MARK_DEBUG of z2 : signal is std.standard.true;
  signal z3 : STD_LOGIC;
  attribute DONT_TOUCH of z3 : signal is std.standard.true;
  attribute MARK_DEBUG of z3 : signal is std.standard.true;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of LUT4_and : label is "PRIMITIVE";
  attribute BOX_TYPE of LUT4_not1 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not1 : label is "soft";
  attribute BOX_TYPE of LUT4_not2 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not2 : label is "soft";
  attribute BOX_TYPE of LUT4_not3 : label is "PRIMITIVE";
  attribute KEEP_HIERARCHY of LUT4_not3 : label is "soft";
begin
  \out\ <= z3;
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
      I1 => pdl(0),
      I2 => pdl(1),
      I3 => pdl(2),
      O => z1
    );
LUT4_not2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z1,
      I1 => pdl(2),
      I2 => pdl(0),
      I3 => pdl(1),
      O => z2
    );
LUT4_not3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5555"
    )
        port map (
      I0 => z2,
      I1 => pdl(1),
      I2 => pdl(2),
      I3 => pdl(0),
      O => z3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TRNG_top_0_1_TRNG is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    enable : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TRNG_top_0_1_TRNG : entity is "TRNG";
end design_1_TRNG_top_0_1_TRNG;

architecture STRUCTURE of design_1_TRNG_top_0_1_TRNG is
  signal final_bit : STD_LOGIC;
  signal final_bit_i_2_n_0 : STD_LOGIC;
  signal \in\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \p_0_in__6\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[0]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[1]_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[2]_2\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[3]_3\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[4]_4\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[5]_5\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[6]_6\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \pdl_ctrl_reg[7]_7\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ro_feedback : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ALLOW_COMBINATORIAL_LOOPS : boolean;
  attribute ALLOW_COMBINATORIAL_LOOPS of ro_feedback : signal is std.standard.true;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ro_feedback : signal is std.standard.true;
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ro_feedback : signal is std.standard.true;
  signal \ro_sampled[0]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[1]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[2]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[3]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[4]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[5]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[6]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[7]_i_1_n_0\ : STD_LOGIC;
  signal \ro_sampled[7]_i_2_n_0\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[0]\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[2]\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[3]\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[4]\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[5]\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[6]\ : STD_LOGIC;
  signal \ro_sampled_reg_n_0_[7]\ : STD_LOGIC;
  attribute I_AND : string;
  attribute I_AND of \RO_GEN[0].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT : string;
  attribute I_NOT of \RO_GEN[0].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of \RO_GEN[0].my_ro_inst\ : label is "soft";
  attribute chainLength : integer;
  attribute chainLength of \RO_GEN[0].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[1].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[1].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[1].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[1].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[2].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[2].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[2].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[2].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[3].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[3].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[3].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[3].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[4].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[4].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[4].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[4].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[5].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[5].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[5].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[5].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[6].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[6].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[6].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[6].my_ro_inst\ : label is 4;
  attribute I_AND of \RO_GEN[7].my_ro_inst\ : label is "16'b1000100010001000";
  attribute I_NOT of \RO_GEN[7].my_ro_inst\ : label is "16'b0101010101010101";
  attribute KEEP_HIERARCHY of \RO_GEN[7].my_ro_inst\ : label is "soft";
  attribute chainLength of \RO_GEN[7].my_ro_inst\ : label is 4;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of final_bit_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pdl_ctrl[0][1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pdl_ctrl[0][2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \pdl_ctrl[1][0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \pdl_ctrl[1][1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pdl_ctrl[1][2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pdl_ctrl[2][0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pdl_ctrl[2][2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \pdl_ctrl[3][0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pdl_ctrl[3][1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pdl_ctrl[4][0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pdl_ctrl[4][1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pdl_ctrl[5][0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pdl_ctrl[5][2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pdl_ctrl[6][1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pdl_ctrl[6][2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \pdl_ctrl[7][1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pdl_ctrl[7][2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ro_sampled[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ro_sampled[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ro_sampled[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ro_sampled[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ro_sampled[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ro_sampled[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ro_sampled[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ro_sampled[7]_i_1\ : label is "soft_lutpair9";
begin
\RO_GEN[0].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__1\
     port map (
      enable => enable,
      \in\ => ro_feedback(0),
      \out\ => ro_feedback(0),
      pdl(2 downto 0) => \pdl_ctrl_reg[0]_0\(2 downto 0)
    );
\RO_GEN[1].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__2\
     port map (
      enable => enable,
      \in\ => ro_feedback(1),
      \out\ => ro_feedback(1),
      pdl(2 downto 0) => \pdl_ctrl_reg[1]_1\(2 downto 0)
    );
\RO_GEN[2].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__3\
     port map (
      enable => enable,
      \in\ => ro_feedback(2),
      \out\ => ro_feedback(2),
      pdl(2 downto 0) => \pdl_ctrl_reg[2]_2\(2 downto 0)
    );
\RO_GEN[3].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__4\
     port map (
      enable => enable,
      \in\ => ro_feedback(3),
      \out\ => ro_feedback(3),
      pdl(2 downto 0) => \pdl_ctrl_reg[3]_3\(2 downto 0)
    );
\RO_GEN[4].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__5\
     port map (
      enable => enable,
      \in\ => ro_feedback(4),
      \out\ => ro_feedback(4),
      pdl(2 downto 0) => \pdl_ctrl_reg[4]_4\(2 downto 0)
    );
\RO_GEN[5].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__6\
     port map (
      enable => enable,
      \in\ => ro_feedback(5),
      \out\ => ro_feedback(5),
      pdl(2 downto 0) => \pdl_ctrl_reg[5]_5\(2 downto 0)
    );
\RO_GEN[6].my_ro_inst\: entity work.\design_1_TRNG_top_0_1_RO__7\
     port map (
      enable => enable,
      \in\ => ro_feedback(6),
      \out\ => ro_feedback(6),
      pdl(2 downto 0) => \pdl_ctrl_reg[6]_6\(2 downto 0)
    );
\RO_GEN[7].my_ro_inst\: entity work.design_1_TRNG_top_0_1_RO
     port map (
      enable => enable,
      \in\ => ro_feedback(7),
      \out\ => ro_feedback(7),
      pdl(2 downto 0) => \pdl_ctrl_reg[7]_7\(2 downto 0)
    );
final_bit_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699600000000"
    )
        port map (
      I0 => final_bit_i_2_n_0,
      I1 => \ro_sampled_reg_n_0_[6]\,
      I2 => \ro_sampled_reg_n_0_[7]\,
      I3 => \ro_sampled_reg_n_0_[4]\,
      I4 => \ro_sampled_reg_n_0_[5]\,
      I5 => enable,
      O => final_bit
    );
final_bit_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \in\,
      I1 => \ro_sampled_reg_n_0_[0]\,
      I2 => \ro_sampled_reg_n_0_[3]\,
      I3 => \ro_sampled_reg_n_0_[2]\,
      O => final_bit_i_2_n_0
    );
final_bit_reg: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => final_bit,
      Q => D(0)
    );
\pdl_ctrl[0][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[0]_0\(0),
      I1 => \ro_sampled_reg_n_0_[0]\,
      O => p_0_in(0)
    );
\pdl_ctrl[0][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[0]\,
      I1 => \pdl_ctrl_reg[0]_0\(0),
      I2 => \pdl_ctrl_reg[0]_0\(1),
      O => p_0_in(1)
    );
\pdl_ctrl[0][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[0]_0\(1),
      I1 => \pdl_ctrl_reg[0]_0\(0),
      I2 => \ro_sampled_reg_n_0_[0]\,
      I3 => \pdl_ctrl_reg[0]_0\(2),
      O => p_0_in(2)
    );
\pdl_ctrl[1][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[1]_1\(0),
      I1 => \in\,
      O => \p_0_in__0\(0)
    );
\pdl_ctrl[1][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \in\,
      I1 => \pdl_ctrl_reg[1]_1\(0),
      I2 => \pdl_ctrl_reg[1]_1\(1),
      O => \p_0_in__0\(1)
    );
\pdl_ctrl[1][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[1]_1\(1),
      I1 => \pdl_ctrl_reg[1]_1\(0),
      I2 => \in\,
      I3 => \pdl_ctrl_reg[1]_1\(2),
      O => \p_0_in__0\(2)
    );
\pdl_ctrl[2][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[2]_2\(0),
      I1 => \ro_sampled_reg_n_0_[2]\,
      O => \p_0_in__1\(0)
    );
\pdl_ctrl[2][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[2]\,
      I1 => \pdl_ctrl_reg[2]_2\(0),
      I2 => \pdl_ctrl_reg[2]_2\(1),
      O => \p_0_in__1\(1)
    );
\pdl_ctrl[2][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[2]_2\(1),
      I1 => \pdl_ctrl_reg[2]_2\(0),
      I2 => \ro_sampled_reg_n_0_[2]\,
      I3 => \pdl_ctrl_reg[2]_2\(2),
      O => \p_0_in__1\(2)
    );
\pdl_ctrl[3][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[3]_3\(0),
      I1 => \ro_sampled_reg_n_0_[3]\,
      O => \p_0_in__2\(0)
    );
\pdl_ctrl[3][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[3]\,
      I1 => \pdl_ctrl_reg[3]_3\(0),
      I2 => \pdl_ctrl_reg[3]_3\(1),
      O => \p_0_in__2\(1)
    );
\pdl_ctrl[3][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[3]_3\(1),
      I1 => \pdl_ctrl_reg[3]_3\(0),
      I2 => \ro_sampled_reg_n_0_[3]\,
      I3 => \pdl_ctrl_reg[3]_3\(2),
      O => \p_0_in__2\(2)
    );
\pdl_ctrl[4][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[4]_4\(0),
      I1 => \ro_sampled_reg_n_0_[4]\,
      O => \p_0_in__3\(0)
    );
\pdl_ctrl[4][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[4]\,
      I1 => \pdl_ctrl_reg[4]_4\(0),
      I2 => \pdl_ctrl_reg[4]_4\(1),
      O => \p_0_in__3\(1)
    );
\pdl_ctrl[4][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[4]_4\(1),
      I1 => \pdl_ctrl_reg[4]_4\(0),
      I2 => \ro_sampled_reg_n_0_[4]\,
      I3 => \pdl_ctrl_reg[4]_4\(2),
      O => \p_0_in__3\(2)
    );
\pdl_ctrl[5][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[5]_5\(0),
      I1 => \ro_sampled_reg_n_0_[5]\,
      O => \p_0_in__4\(0)
    );
\pdl_ctrl[5][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[5]\,
      I1 => \pdl_ctrl_reg[5]_5\(0),
      I2 => \pdl_ctrl_reg[5]_5\(1),
      O => \p_0_in__4\(1)
    );
\pdl_ctrl[5][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[5]_5\(1),
      I1 => \pdl_ctrl_reg[5]_5\(0),
      I2 => \ro_sampled_reg_n_0_[5]\,
      I3 => \pdl_ctrl_reg[5]_5\(2),
      O => \p_0_in__4\(2)
    );
\pdl_ctrl[6][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[6]_6\(0),
      I1 => \ro_sampled_reg_n_0_[6]\,
      O => \p_0_in__5\(0)
    );
\pdl_ctrl[6][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[6]\,
      I1 => \pdl_ctrl_reg[6]_6\(0),
      I2 => \pdl_ctrl_reg[6]_6\(1),
      O => \p_0_in__5\(1)
    );
\pdl_ctrl[6][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[6]_6\(1),
      I1 => \pdl_ctrl_reg[6]_6\(0),
      I2 => \ro_sampled_reg_n_0_[6]\,
      I3 => \pdl_ctrl_reg[6]_6\(2),
      O => \p_0_in__5\(2)
    );
\pdl_ctrl[7][0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \pdl_ctrl_reg[7]_7\(0),
      I1 => \ro_sampled_reg_n_0_[7]\,
      O => \p_0_in__6\(0)
    );
\pdl_ctrl[7][1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \ro_sampled_reg_n_0_[7]\,
      I1 => \pdl_ctrl_reg[7]_7\(0),
      I2 => \pdl_ctrl_reg[7]_7\(1),
      O => \p_0_in__6\(1)
    );
\pdl_ctrl[7][2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \pdl_ctrl_reg[7]_7\(1),
      I1 => \pdl_ctrl_reg[7]_7\(0),
      I2 => \ro_sampled_reg_n_0_[7]\,
      I3 => \pdl_ctrl_reg[7]_7\(2),
      O => \p_0_in__6\(2)
    );
\pdl_ctrl_reg[0][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => p_0_in(0),
      Q => \pdl_ctrl_reg[0]_0\(0)
    );
\pdl_ctrl_reg[0][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => \pdl_ctrl_reg[0]_0\(1)
    );
\pdl_ctrl_reg[0][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => \pdl_ctrl_reg[0]_0\(2)
    );
\pdl_ctrl_reg[1][0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__0\(0),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[1]_1\(0)
    );
\pdl_ctrl_reg[1][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__0\(1),
      Q => \pdl_ctrl_reg[1]_1\(1)
    );
\pdl_ctrl_reg[1][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__0\(2),
      Q => \pdl_ctrl_reg[1]_1\(2)
    );
\pdl_ctrl_reg[2][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__1\(0),
      Q => \pdl_ctrl_reg[2]_2\(0)
    );
\pdl_ctrl_reg[2][1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__1\(1),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[2]_2\(1)
    );
\pdl_ctrl_reg[2][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__1\(2),
      Q => \pdl_ctrl_reg[2]_2\(2)
    );
\pdl_ctrl_reg[3][0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__2\(0),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[3]_3\(0)
    );
\pdl_ctrl_reg[3][1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__2\(1),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[3]_3\(1)
    );
\pdl_ctrl_reg[3][2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__2\(2),
      Q => \pdl_ctrl_reg[3]_3\(2)
    );
\pdl_ctrl_reg[4][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__3\(0),
      Q => \pdl_ctrl_reg[4]_4\(0)
    );
\pdl_ctrl_reg[4][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__3\(1),
      Q => \pdl_ctrl_reg[4]_4\(1)
    );
\pdl_ctrl_reg[4][2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__3\(2),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[4]_4\(2)
    );
\pdl_ctrl_reg[5][0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__4\(0),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[5]_5\(0)
    );
\pdl_ctrl_reg[5][1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__4\(1),
      Q => \pdl_ctrl_reg[5]_5\(1)
    );
\pdl_ctrl_reg[5][2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__4\(2),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[5]_5\(2)
    );
\pdl_ctrl_reg[6][0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => enable,
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \p_0_in__5\(0),
      Q => \pdl_ctrl_reg[6]_6\(0)
    );
\pdl_ctrl_reg[6][1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__5\(1),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[6]_6\(1)
    );
\pdl_ctrl_reg[6][2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__5\(2),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[6]_6\(2)
    );
\pdl_ctrl_reg[7][0]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__6\(0),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[7]_7\(0)
    );
\pdl_ctrl_reg[7][1]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__6\(1),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[7]_7\(1)
    );
\pdl_ctrl_reg[7][2]\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => enable,
      D => \p_0_in__6\(2),
      PRE => \ro_sampled[7]_i_2_n_0\,
      Q => \pdl_ctrl_reg[7]_7\(2)
    );
\ro_sampled[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(0),
      O => \ro_sampled[0]_i_1_n_0\
    );
\ro_sampled[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(1),
      O => \ro_sampled[1]_i_1_n_0\
    );
\ro_sampled[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(2),
      O => \ro_sampled[2]_i_1_n_0\
    );
\ro_sampled[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(3),
      O => \ro_sampled[3]_i_1_n_0\
    );
\ro_sampled[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(4),
      O => \ro_sampled[4]_i_1_n_0\
    );
\ro_sampled[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(5),
      O => \ro_sampled[5]_i_1_n_0\
    );
\ro_sampled[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(6),
      O => \ro_sampled[6]_i_1_n_0\
    );
\ro_sampled[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => ro_feedback(7),
      O => \ro_sampled[7]_i_1_n_0\
    );
\ro_sampled[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \ro_sampled[7]_i_2_n_0\
    );
\ro_sampled_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[0]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[0]\
    );
\ro_sampled_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[1]_i_1_n_0\,
      Q => \in\
    );
\ro_sampled_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[2]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[2]\
    );
\ro_sampled_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[3]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[3]\
    );
\ro_sampled_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[4]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[4]\
    );
\ro_sampled_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[5]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[5]\
    );
\ro_sampled_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[6]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[6]\
    );
\ro_sampled_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \ro_sampled[7]_i_2_n_0\,
      D => \ro_sampled[7]_i_1_n_0\,
      Q => \ro_sampled_reg_n_0_[7]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TRNG_top_0_1_TRNG_top is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    enable : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_TRNG_top_0_1_TRNG_top : entity is "TRNG_top";
end design_1_TRNG_top_0_1_TRNG_top;

architecture STRUCTURE of design_1_TRNG_top_0_1_TRNG_top is
  signal bit_cnt_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 14 downto 1 );
  signal \m_axis_tdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_6_n_0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal m_axis_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal shift_reg0 : STD_LOGIC;
  signal shift_reg02_out : STD_LOGIC;
  signal word_cnt : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal word_cnt0 : STD_LOGIC;
  signal \word_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \word_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \word_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \word_cnt_reg[14]_i_3_n_3\ : STD_LOGIC;
  signal \word_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \word_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \word_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \word_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \word_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \word_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \word_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \word_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_word_cnt_reg[14]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_word_cnt_reg[14]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \word_cnt[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \word_cnt[11]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \word_cnt[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \word_cnt[13]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \word_cnt[14]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \word_cnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \word_cnt[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \word_cnt[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \word_cnt[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \word_cnt[5]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \word_cnt[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \word_cnt[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \word_cnt[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \word_cnt[9]_i_1\ : label is "soft_lutpair19";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \word_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \word_cnt_reg[14]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \word_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \word_cnt_reg[8]_i_2\ : label is 35;
begin
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^m_axis_tvalid\;
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bit_cnt_reg(0),
      I1 => bit_cnt_reg(1),
      O => \p_0_in__0\(1)
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bit_cnt_reg(1),
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(2),
      O => \p_0_in__0\(2)
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => bit_cnt_reg(2),
      I1 => bit_cnt_reg(0),
      I2 => bit_cnt_reg(1),
      I3 => bit_cnt_reg(3),
      O => \p_0_in__0\(3)
    );
\bit_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => bit_cnt_reg(3),
      I1 => bit_cnt_reg(1),
      I2 => bit_cnt_reg(0),
      I3 => bit_cnt_reg(2),
      I4 => bit_cnt_reg(4),
      O => \p_0_in__0\(4)
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => \p_0_in__0\(0),
      Q => bit_cnt_reg(0),
      R => shift_reg0
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => \p_0_in__0\(1),
      Q => bit_cnt_reg(1),
      R => shift_reg0
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => \p_0_in__0\(2),
      Q => bit_cnt_reg(2),
      R => shift_reg0
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => \p_0_in__0\(3),
      Q => bit_cnt_reg(3),
      R => shift_reg0
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => \p_0_in__0\(4),
      Q => bit_cnt_reg(4),
      R => shift_reg0
    );
\m_axis_tdata[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => aresetn,
      I1 => enable,
      O => shift_reg0
    );
\m_axis_tdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => bit_cnt_reg(4),
      I1 => shift_reg02_out,
      I2 => bit_cnt_reg(3),
      I3 => bit_cnt_reg(1),
      I4 => bit_cnt_reg(0),
      I5 => bit_cnt_reg(2),
      O => \m_axis_tdata[31]_i_2_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(0),
      Q => m_axis_tdata(0),
      R => shift_reg0
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(10),
      Q => m_axis_tdata(10),
      R => shift_reg0
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(11),
      Q => m_axis_tdata(11),
      R => shift_reg0
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(12),
      Q => m_axis_tdata(12),
      R => shift_reg0
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(13),
      Q => m_axis_tdata(13),
      R => shift_reg0
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(14),
      Q => m_axis_tdata(14),
      R => shift_reg0
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(15),
      Q => m_axis_tdata(15),
      R => shift_reg0
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(16),
      Q => m_axis_tdata(16),
      R => shift_reg0
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(17),
      Q => m_axis_tdata(17),
      R => shift_reg0
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(18),
      Q => m_axis_tdata(18),
      R => shift_reg0
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(19),
      Q => m_axis_tdata(19),
      R => shift_reg0
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(1),
      Q => m_axis_tdata(1),
      R => shift_reg0
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(20),
      Q => m_axis_tdata(20),
      R => shift_reg0
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(21),
      Q => m_axis_tdata(21),
      R => shift_reg0
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(22),
      Q => m_axis_tdata(22),
      R => shift_reg0
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(23),
      Q => m_axis_tdata(23),
      R => shift_reg0
    );
\m_axis_tdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(24),
      Q => m_axis_tdata(24),
      R => shift_reg0
    );
\m_axis_tdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(25),
      Q => m_axis_tdata(25),
      R => shift_reg0
    );
\m_axis_tdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(26),
      Q => m_axis_tdata(26),
      R => shift_reg0
    );
\m_axis_tdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(27),
      Q => m_axis_tdata(27),
      R => shift_reg0
    );
\m_axis_tdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(28),
      Q => m_axis_tdata(28),
      R => shift_reg0
    );
\m_axis_tdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(29),
      Q => m_axis_tdata(29),
      R => shift_reg0
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(2),
      Q => m_axis_tdata(2),
      R => shift_reg0
    );
\m_axis_tdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(30),
      Q => m_axis_tdata(30),
      R => shift_reg0
    );
\m_axis_tdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(31),
      Q => m_axis_tdata(31),
      R => shift_reg0
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(3),
      Q => m_axis_tdata(3),
      R => shift_reg0
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(4),
      Q => m_axis_tdata(4),
      R => shift_reg0
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(5),
      Q => m_axis_tdata(5),
      R => shift_reg0
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(6),
      Q => m_axis_tdata(6),
      R => shift_reg0
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(7),
      Q => m_axis_tdata(7),
      R => shift_reg0
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(8),
      Q => m_axis_tdata(8),
      R => shift_reg0
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_axis_tdata[31]_i_2_n_0\,
      D => p_0_in(9),
      Q => m_axis_tdata(9),
      R => shift_reg0
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002FE0202"
    )
        port map (
      I0 => \^m_axis_tlast\,
      I1 => word_cnt0,
      I2 => m_axis_tlast_i_2_n_0,
      I3 => m_axis_tlast_i_3_n_0,
      I4 => \m_axis_tdata[31]_i_2_n_0\,
      I5 => shift_reg0,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => bit_cnt_reg(4),
      I2 => bit_cnt_reg(3),
      I3 => bit_cnt_reg(1),
      I4 => bit_cnt_reg(0),
      I5 => bit_cnt_reg(2),
      O => m_axis_tlast_i_2_n_0
    );
m_axis_tlast_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
        port map (
      I0 => m_axis_tlast_i_4_n_0,
      I1 => m_axis_tlast_i_5_n_0,
      I2 => \word_cnt_reg_n_0_[14]\,
      I3 => \word_cnt_reg_n_0_[13]\,
      I4 => \word_cnt_reg_n_0_[0]\,
      I5 => m_axis_tlast_i_6_n_0,
      O => m_axis_tlast_i_3_n_0
    );
m_axis_tlast_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \word_cnt_reg_n_0_[6]\,
      I1 => \word_cnt_reg_n_0_[5]\,
      I2 => \word_cnt_reg_n_0_[8]\,
      I3 => \word_cnt_reg_n_0_[7]\,
      O => m_axis_tlast_i_4_n_0
    );
m_axis_tlast_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \word_cnt_reg_n_0_[2]\,
      I1 => \word_cnt_reg_n_0_[1]\,
      I2 => \word_cnt_reg_n_0_[4]\,
      I3 => \word_cnt_reg_n_0_[3]\,
      O => m_axis_tlast_i_5_n_0
    );
m_axis_tlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \word_cnt_reg_n_0_[9]\,
      I1 => \word_cnt_reg_n_0_[10]\,
      I2 => \word_cnt_reg_n_0_[12]\,
      I3 => \word_cnt_reg_n_0_[11]\,
      O => m_axis_tlast_i_6_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
m_axis_tvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE000000"
    )
        port map (
      I0 => \m_axis_tdata[31]_i_2_n_0\,
      I1 => \^m_axis_tvalid\,
      I2 => m_axis_tready,
      I3 => enable,
      I4 => aresetn,
      O => m_axis_tvalid_i_1_n_0
    );
m_axis_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_i_1_n_0,
      Q => \^m_axis_tvalid\,
      R => '0'
    );
\shift_reg[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => m_axis_tready,
      I1 => \^m_axis_tvalid\,
      O => shift_reg02_out
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(0),
      Q => p_0_in(1),
      R => shift_reg0
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(10),
      Q => p_0_in(11),
      R => shift_reg0
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(11),
      Q => p_0_in(12),
      R => shift_reg0
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(12),
      Q => p_0_in(13),
      R => shift_reg0
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(13),
      Q => p_0_in(14),
      R => shift_reg0
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(14),
      Q => p_0_in(15),
      R => shift_reg0
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(15),
      Q => p_0_in(16),
      R => shift_reg0
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(16),
      Q => p_0_in(17),
      R => shift_reg0
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(17),
      Q => p_0_in(18),
      R => shift_reg0
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(18),
      Q => p_0_in(19),
      R => shift_reg0
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(19),
      Q => p_0_in(20),
      R => shift_reg0
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(1),
      Q => p_0_in(2),
      R => shift_reg0
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(20),
      Q => p_0_in(21),
      R => shift_reg0
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(21),
      Q => p_0_in(22),
      R => shift_reg0
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(22),
      Q => p_0_in(23),
      R => shift_reg0
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(23),
      Q => p_0_in(24),
      R => shift_reg0
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(24),
      Q => p_0_in(25),
      R => shift_reg0
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(25),
      Q => p_0_in(26),
      R => shift_reg0
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(26),
      Q => p_0_in(27),
      R => shift_reg0
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(27),
      Q => p_0_in(28),
      R => shift_reg0
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(28),
      Q => p_0_in(29),
      R => shift_reg0
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(29),
      Q => p_0_in(30),
      R => shift_reg0
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(2),
      Q => p_0_in(3),
      R => shift_reg0
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(30),
      Q => p_0_in(31),
      R => shift_reg0
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(3),
      Q => p_0_in(4),
      R => shift_reg0
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(4),
      Q => p_0_in(5),
      R => shift_reg0
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(5),
      Q => p_0_in(6),
      R => shift_reg0
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(6),
      Q => p_0_in(7),
      R => shift_reg0
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(7),
      Q => p_0_in(8),
      R => shift_reg0
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(8),
      Q => p_0_in(9),
      R => shift_reg0
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => shift_reg02_out,
      D => p_0_in(9),
      Q => p_0_in(10),
      R => shift_reg0
    );
trng_core_inst: entity work.design_1_TRNG_top_0_1_TRNG
     port map (
      D(0) => p_0_in(0),
      aclk => aclk,
      aresetn => aresetn,
      enable => enable
    );
\word_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \word_cnt_reg_n_0_[0]\,
      O => word_cnt(0)
    );
\word_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(10),
      O => word_cnt(10)
    );
\word_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(11),
      O => word_cnt(11)
    );
\word_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(12),
      O => word_cnt(12)
    );
\word_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(13),
      O => word_cnt(13)
    );
\word_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      O => word_cnt0
    );
\word_cnt[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(14),
      O => word_cnt(14)
    );
\word_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(1),
      O => word_cnt(1)
    );
\word_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(2),
      O => word_cnt(2)
    );
\word_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(3),
      O => word_cnt(3)
    );
\word_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(4),
      O => word_cnt(4)
    );
\word_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(5),
      O => word_cnt(5)
    );
\word_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(6),
      O => word_cnt(6)
    );
\word_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(7),
      O => word_cnt(7)
    );
\word_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(8),
      O => word_cnt(8)
    );
\word_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axis_tlast_i_3_n_0,
      I1 => data0(9),
      O => word_cnt(9)
    );
\word_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(0),
      Q => \word_cnt_reg_n_0_[0]\,
      R => shift_reg0
    );
\word_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(10),
      Q => \word_cnt_reg_n_0_[10]\,
      R => shift_reg0
    );
\word_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(11),
      Q => \word_cnt_reg_n_0_[11]\,
      R => shift_reg0
    );
\word_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(12),
      Q => \word_cnt_reg_n_0_[12]\,
      R => shift_reg0
    );
\word_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \word_cnt_reg[8]_i_2_n_0\,
      CO(3) => \word_cnt_reg[12]_i_2_n_0\,
      CO(2) => \word_cnt_reg[12]_i_2_n_1\,
      CO(1) => \word_cnt_reg[12]_i_2_n_2\,
      CO(0) => \word_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \word_cnt_reg_n_0_[12]\,
      S(2) => \word_cnt_reg_n_0_[11]\,
      S(1) => \word_cnt_reg_n_0_[10]\,
      S(0) => \word_cnt_reg_n_0_[9]\
    );
\word_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(13),
      Q => \word_cnt_reg_n_0_[13]\,
      R => shift_reg0
    );
\word_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(14),
      Q => \word_cnt_reg_n_0_[14]\,
      R => shift_reg0
    );
\word_cnt_reg[14]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \word_cnt_reg[12]_i_2_n_0\,
      CO(3 downto 1) => \NLW_word_cnt_reg[14]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \word_cnt_reg[14]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_word_cnt_reg[14]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(14 downto 13),
      S(3 downto 2) => B"00",
      S(1) => \word_cnt_reg_n_0_[14]\,
      S(0) => \word_cnt_reg_n_0_[13]\
    );
\word_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(1),
      Q => \word_cnt_reg_n_0_[1]\,
      R => shift_reg0
    );
\word_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(2),
      Q => \word_cnt_reg_n_0_[2]\,
      R => shift_reg0
    );
\word_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(3),
      Q => \word_cnt_reg_n_0_[3]\,
      R => shift_reg0
    );
\word_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(4),
      Q => \word_cnt_reg_n_0_[4]\,
      R => shift_reg0
    );
\word_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \word_cnt_reg[4]_i_2_n_0\,
      CO(2) => \word_cnt_reg[4]_i_2_n_1\,
      CO(1) => \word_cnt_reg[4]_i_2_n_2\,
      CO(0) => \word_cnt_reg[4]_i_2_n_3\,
      CYINIT => \word_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \word_cnt_reg_n_0_[4]\,
      S(2) => \word_cnt_reg_n_0_[3]\,
      S(1) => \word_cnt_reg_n_0_[2]\,
      S(0) => \word_cnt_reg_n_0_[1]\
    );
\word_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(5),
      Q => \word_cnt_reg_n_0_[5]\,
      R => shift_reg0
    );
\word_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(6),
      Q => \word_cnt_reg_n_0_[6]\,
      R => shift_reg0
    );
\word_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(7),
      Q => \word_cnt_reg_n_0_[7]\,
      R => shift_reg0
    );
\word_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(8),
      Q => \word_cnt_reg_n_0_[8]\,
      R => shift_reg0
    );
\word_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \word_cnt_reg[4]_i_2_n_0\,
      CO(3) => \word_cnt_reg[8]_i_2_n_0\,
      CO(2) => \word_cnt_reg[8]_i_2_n_1\,
      CO(1) => \word_cnt_reg[8]_i_2_n_2\,
      CO(0) => \word_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \word_cnt_reg_n_0_[8]\,
      S(2) => \word_cnt_reg_n_0_[7]\,
      S(1) => \word_cnt_reg_n_0_[6]\,
      S(0) => \word_cnt_reg_n_0_[5]\
    );
\word_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => word_cnt0,
      D => word_cnt(9),
      Q => \word_cnt_reg_n_0_[9]\,
      R => shift_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_TRNG_top_0_1 is
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
  attribute NotValidForBitStream of design_1_TRNG_top_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_TRNG_top_0_1 : entity is "design_1_TRNG_top_0_1,TRNG_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_TRNG_top_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_TRNG_top_0_1 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_TRNG_top_0_1 : entity is "TRNG_top,Vivado 2023.2";
end design_1_TRNG_top_0_1;

architecture STRUCTURE of design_1_TRNG_top_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 24000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 24000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
inst: entity work.design_1_TRNG_top_0_1_TRNG_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      enable => enable,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid
    );
end STRUCTURE;
