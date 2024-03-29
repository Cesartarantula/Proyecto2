/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-zWLHjG/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module muxEstructural(clk, reset_L, valid_in_VC0, valid_in_VC1, data_in_VC0, data_in_VC1, dataout, valid_out);
  wire [5:0] _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  input clk;
  input [5:0] data_in_VC0;
  input [5:0] data_in_VC1;
  output [5:0] dataout;
  input reset_L;
  input valid_in_VC0;
  input valid_in_VC1;
  output valid_out;
  NOT _36_ (
    .A(reset_L),
    .Y(_02_)
  );
  NOT _37_ (
    .A(data_in_VC1[4]),
    .Y(_03_)
  );
  NOT _38_ (
    .A(valid_in_VC0),
    .Y(_04_)
  );
  NAND _39_ (
    .A(_04_),
    .B(valid_in_VC1),
    .Y(_05_)
  );
  NOR _40_ (
    .A(_05_),
    .B(_03_),
    .Y(_06_)
  );
  NOT _41_ (
    .A(data_in_VC0[4]),
    .Y(_07_)
  );
  NOR _42_ (
    .A(_07_),
    .B(_04_),
    .Y(_08_)
  );
  NOR _43_ (
    .A(_08_),
    .B(_06_),
    .Y(_09_)
  );
  NOR _44_ (
    .A(_09_),
    .B(_02_),
    .Y(_00_[4])
  );
  NOT _45_ (
    .A(data_in_VC1[5]),
    .Y(_10_)
  );
  NOR _46_ (
    .A(_05_),
    .B(_10_),
    .Y(_11_)
  );
  NOT _47_ (
    .A(data_in_VC0[5]),
    .Y(_12_)
  );
  NOR _48_ (
    .A(_12_),
    .B(_04_),
    .Y(_13_)
  );
  NOR _49_ (
    .A(_13_),
    .B(_11_),
    .Y(_14_)
  );
  NOR _50_ (
    .A(_14_),
    .B(_02_),
    .Y(_00_[5])
  );
  NOR _51_ (
    .A(valid_in_VC0),
    .B(valid_in_VC1),
    .Y(_15_)
  );
  NOR _52_ (
    .A(_15_),
    .B(_02_),
    .Y(_01_)
  );
  NOT _53_ (
    .A(data_in_VC1[0]),
    .Y(_16_)
  );
  NOR _54_ (
    .A(_05_),
    .B(_16_),
    .Y(_17_)
  );
  NOT _55_ (
    .A(data_in_VC0[0]),
    .Y(_18_)
  );
  NOR _56_ (
    .A(_18_),
    .B(_04_),
    .Y(_19_)
  );
  NOR _57_ (
    .A(_19_),
    .B(_17_),
    .Y(_20_)
  );
  NOR _58_ (
    .A(_20_),
    .B(_02_),
    .Y(_00_[0])
  );
  NOT _59_ (
    .A(data_in_VC1[1]),
    .Y(_21_)
  );
  NOR _60_ (
    .A(_05_),
    .B(_21_),
    .Y(_22_)
  );
  NOT _61_ (
    .A(data_in_VC0[1]),
    .Y(_23_)
  );
  NOR _62_ (
    .A(_23_),
    .B(_04_),
    .Y(_24_)
  );
  NOR _63_ (
    .A(_24_),
    .B(_22_),
    .Y(_25_)
  );
  NOR _64_ (
    .A(_25_),
    .B(_02_),
    .Y(_00_[1])
  );
  NOT _65_ (
    .A(data_in_VC1[2]),
    .Y(_26_)
  );
  NOR _66_ (
    .A(_05_),
    .B(_26_),
    .Y(_27_)
  );
  NOT _67_ (
    .A(data_in_VC0[2]),
    .Y(_28_)
  );
  NOR _68_ (
    .A(_28_),
    .B(_04_),
    .Y(_29_)
  );
  NOR _69_ (
    .A(_29_),
    .B(_27_),
    .Y(_30_)
  );
  NOR _70_ (
    .A(_30_),
    .B(_02_),
    .Y(_00_[2])
  );
  NOT _71_ (
    .A(data_in_VC1[3]),
    .Y(_31_)
  );
  NOR _72_ (
    .A(_05_),
    .B(_31_),
    .Y(_32_)
  );
  NOT _73_ (
    .A(data_in_VC0[3]),
    .Y(_33_)
  );
  NOR _74_ (
    .A(_33_),
    .B(_04_),
    .Y(_34_)
  );
  NOR _75_ (
    .A(_34_),
    .B(_32_),
    .Y(_35_)
  );
  NOR _76_ (
    .A(_35_),
    .B(_02_),
    .Y(_00_[3])
  );
  DFF _77_ (
    .C(clk),
    .D(_00_[0]),
    .Q(dataout[0])
  );
  DFF _78_ (
    .C(clk),
    .D(_00_[1]),
    .Q(dataout[1])
  );
  DFF _79_ (
    .C(clk),
    .D(_00_[2]),
    .Q(dataout[2])
  );
  DFF _80_ (
    .C(clk),
    .D(_00_[3]),
    .Q(dataout[3])
  );
  DFF _81_ (
    .C(clk),
    .D(_00_[4]),
    .Q(dataout[4])
  );
  DFF _82_ (
    .C(clk),
    .D(_00_[5]),
    .Q(dataout[5])
  );
  DFF _83_ (
    .C(clk),
    .D(_01_),
    .Q(valid_out)
  );
endmodule
