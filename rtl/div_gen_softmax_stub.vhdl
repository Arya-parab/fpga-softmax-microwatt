-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue Jun  2 10:24:41 2026
-- Host        : gec-MS-7D09 running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/gec/Desktop/SOFTMAX/microwatt/ip/div_gen_softmax/div_gen_softmax_stub.vhdl
-- Design      : div_gen_softmax
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_gen_softmax is
  Port ( 
    aclk : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 111 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of div_gen_softmax : entity is "div_gen_softmax,div_gen_v5_1_23,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of div_gen_softmax : entity is "div_gen_softmax,div_gen_v5_1_23,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=div_gen,x_ipVersion=5.1,x_ipCoreRevision=23,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=artix7,C_HAS_ARESETN=0,C_HAS_ACLKEN=0,C_LATENCY=20,ALGORITHM_TYPE=1,DIVISOR_WIDTH=48,DIVIDEND_WIDTH=64,SIGNED_B=0,DIVCLK_SEL=1,FRACTIONAL_B=0,FRACTIONAL_WIDTH=48,C_HAS_DIV_BY_ZERO=0,C_THROTTLE_SCHEME=3,C_TLAST_RESOLUTION=0,C_HAS_S_AXIS_DIVISOR_TUSER=0,C_HAS_S_AXIS_DIVISOR_TLAST=0,C_S_AXIS_DIVISOR_TDATA_WIDTH=48,C_S_AXIS_DIVISOR_TUSER_WIDTH=1,C_HAS_S_AXIS_DIVIDEND_TUSER=0,C_HAS_S_AXIS_DIVIDEND_TLAST=0,C_S_AXIS_DIVIDEND_TDATA_WIDTH=64,C_S_AXIS_DIVIDEND_TUSER_WIDTH=1,C_M_AXIS_DOUT_TDATA_WIDTH=112,C_M_AXIS_DOUT_TUSER_WIDTH=1}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of div_gen_softmax : entity is "yes";
end div_gen_softmax;

architecture stub of div_gen_softmax is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "aclk,s_axis_divisor_tvalid,s_axis_divisor_tdata[47:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[63:0],m_axis_dout_tvalid,m_axis_dout_tdata[111:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk_intf CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of aclk : signal is "slave aclk_intf";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of s_axis_divisor_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID";
  attribute x_interface_mode of s_axis_divisor_tvalid : signal is "slave S_AXIS_DIVISOR";
  attribute x_interface_parameter of s_axis_divisor_tvalid : signal is "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_divisor_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA";
  attribute x_interface_info of s_axis_dividend_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID";
  attribute x_interface_mode of s_axis_dividend_tvalid : signal is "slave S_AXIS_DIVIDEND";
  attribute x_interface_parameter of s_axis_dividend_tvalid : signal is "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_dividend_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA";
  attribute x_interface_info of m_axis_dout_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID";
  attribute x_interface_mode of m_axis_dout_tvalid : signal is "master M_AXIS_DOUT";
  attribute x_interface_parameter of m_axis_dout_tvalid : signal is "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 14, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_dout_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "div_gen_v5_1_23,Vivado 2024.2";
begin
end;
