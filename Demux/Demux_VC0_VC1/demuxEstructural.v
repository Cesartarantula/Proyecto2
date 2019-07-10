/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module demuxEstructural(clk, reset_L, valid_in, data_in, dataout0, dataout1, valid_0, valid_1);
  wire [5:0] _00_;
  wire [5:0] _01_;
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
  input clk;
  input [5:0] data_in;
  output [5:0] dataout0;
  output [5:0] dataout1;
  input reset_L;
  output valid_0;
  output valid_1;
  input valid_in;
  NAND _32_ (
    .A(reset_L),
    .B(valid_in),
    .Y(_04_)
  );
  NOR _33_ (
    .A(_04_),
    .B(data_in[5]),
    .Y(_02_)
  );
  NAND _34_ (
    .A(_02_),
    .B(dataout1[0]),
    .Y(_05_)
  );
  NOT _35_ (
    .A(data_in[5]),
    .Y(_06_)
  );
  NOR _36_ (
    .A(_04_),
    .B(_06_),
    .Y(_03_)
  );
  NAND _37_ (
    .A(_03_),
    .B(data_in[0]),
    .Y(_07_)
  );
  NAND _38_ (
    .A(_07_),
    .B(_05_),
    .Y(_01_[0])
  );
  NAND _39_ (
    .A(_02_),
    .B(dataout1[1]),
    .Y(_08_)
  );
  NAND _40_ (
    .A(_03_),
    .B(data_in[1]),
    .Y(_09_)
  );
  NAND _41_ (
    .A(_09_),
    .B(_08_),
    .Y(_01_[1])
  );
  NAND _42_ (
    .A(_02_),
    .B(dataout1[2]),
    .Y(_10_)
  );
  NAND _43_ (
    .A(_03_),
    .B(data_in[2]),
    .Y(_11_)
  );
  NAND _44_ (
    .A(_11_),
    .B(_10_),
    .Y(_01_[2])
  );
  NAND _45_ (
    .A(_02_),
    .B(dataout1[3]),
    .Y(_12_)
  );
  NAND _46_ (
    .A(_03_),
    .B(data_in[3]),
    .Y(_13_)
  );
  NAND _47_ (
    .A(_13_),
    .B(_12_),
    .Y(_01_[3])
  );
  NAND _48_ (
    .A(_02_),
    .B(dataout1[4]),
    .Y(_14_)
  );
  NAND _49_ (
    .A(_03_),
    .B(data_in[4]),
    .Y(_15_)
  );
  NAND _50_ (
    .A(_15_),
    .B(_14_),
    .Y(_01_[4])
  );
  NOR _51_ (
    .A(data_in[5]),
    .B(dataout1[5]),
    .Y(_16_)
  );
  NOR _52_ (
    .A(_16_),
    .B(_04_),
    .Y(_01_[5])
  );
  NAND _53_ (
    .A(_02_),
    .B(data_in[0]),
    .Y(_17_)
  );
  NAND _54_ (
    .A(_03_),
    .B(dataout0[0]),
    .Y(_18_)
  );
  NAND _55_ (
    .A(_18_),
    .B(_17_),
    .Y(_00_[0])
  );
  NAND _56_ (
    .A(_02_),
    .B(data_in[1]),
    .Y(_19_)
  );
  NAND _57_ (
    .A(_03_),
    .B(dataout0[1]),
    .Y(_20_)
  );
  NAND _58_ (
    .A(_20_),
    .B(_19_),
    .Y(_00_[1])
  );
  NAND _59_ (
    .A(_02_),
    .B(data_in[2]),
    .Y(_21_)
  );
  NAND _60_ (
    .A(_03_),
    .B(dataout0[2]),
    .Y(_22_)
  );
  NAND _61_ (
    .A(_22_),
    .B(_21_),
    .Y(_00_[2])
  );
  NAND _62_ (
    .A(_02_),
    .B(data_in[3]),
    .Y(_23_)
  );
  NAND _63_ (
    .A(_03_),
    .B(dataout0[3]),
    .Y(_24_)
  );
  NAND _64_ (
    .A(_24_),
    .B(_23_),
    .Y(_00_[3])
  );
  NAND _65_ (
    .A(_02_),
    .B(data_in[4]),
    .Y(_25_)
  );
  NAND _66_ (
    .A(_03_),
    .B(dataout0[4]),
    .Y(_26_)
  );
  NAND _67_ (
    .A(_26_),
    .B(_25_),
    .Y(_00_[4])
  );
  NOT _68_ (
    .A(dataout0[5]),
    .Y(_27_)
  );
  NOT _69_ (
    .A(valid_in),
    .Y(_28_)
  );
  NOT _70_ (
    .A(reset_L),
    .Y(_29_)
  );
  NOR _71_ (
    .A(_29_),
    .B(_28_),
    .Y(_30_)
  );
  NAND _72_ (
    .A(_30_),
    .B(data_in[5]),
    .Y(_31_)
  );
  NOR _73_ (
    .A(_31_),
    .B(_27_),
    .Y(_00_[5])
  );
  DFF _74_ (
    .C(clk),
    .D(_00_[0]),
    .Q(dataout0[0])
  );
  DFF _75_ (
    .C(clk),
    .D(_00_[1]),
    .Q(dataout0[1])
  );
  DFF _76_ (
    .C(clk),
    .D(_00_[2]),
    .Q(dataout0[2])
  );
  DFF _77_ (
    .C(clk),
    .D(_00_[3]),
    .Q(dataout0[3])
  );
  DFF _78_ (
    .C(clk),
    .D(_00_[4]),
    .Q(dataout0[4])
  );
  DFF _79_ (
    .C(clk),
    .D(_00_[5]),
    .Q(dataout0[5])
  );
  DFF _80_ (
    .C(clk),
    .D(_01_[0]),
    .Q(dataout1[0])
  );
  DFF _81_ (
    .C(clk),
    .D(_01_[1]),
    .Q(dataout1[1])
  );
  DFF _82_ (
    .C(clk),
    .D(_01_[2]),
    .Q(dataout1[2])
  );
  DFF _83_ (
    .C(clk),
    .D(_01_[3]),
    .Q(dataout1[3])
  );
  DFF _84_ (
    .C(clk),
    .D(_01_[4]),
    .Q(dataout1[4])
  );
  DFF _85_ (
    .C(clk),
    .D(_01_[5]),
    .Q(dataout1[5])
  );
  DFF _86_ (
    .C(clk),
    .D(_02_),
    .Q(valid_0)
  );
  DFF _87_ (
    .C(clk),
    .D(_03_),
    .Q(valid_1)
  );
endmodule
