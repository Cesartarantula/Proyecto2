/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-zWLHjG/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module fsmControlEstructural(clk, reset, init, umbral_MF, umbral_VC0, umbral_VC1, umbral_D0, umbral_D1, FIFO_error, FIFO_empty, umbrales_I, active_out, idle_out, error_out);
  wire _000_;
  wire [4:0] _001_;
  wire _002_;
  wire [4:0] _003_;
  wire [4:0] _004_;
  wire [13:0] _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  input [4:0] FIFO_empty;
  input [4:0] FIFO_error;
  output active_out;
  input clk;
  output [4:0] error_out;
  output idle_out;
  input init;
  wire [4:0] nxt_state;
  input reset;
  wire [4:0] state;
  input [1:0] umbral_D0;
  input [1:0] umbral_D1;
  input [1:0] umbral_MF;
  input [3:0] umbral_VC0;
  input [3:0] umbral_VC1;
  output [13:0] umbrales_I;
  NOT _129_ (
    .A(init),
    .Y(_109_)
  );
  NAND _130_ (
    .A(_109_),
    .B(nxt_state[0]),
    .Y(_110_)
  );
  NAND _131_ (
    .A(_110_),
    .B(reset),
    .Y(_004_[0])
  );
  NOT _132_ (
    .A(reset),
    .Y(_111_)
  );
  NOR _133_ (
    .A(init),
    .B(nxt_state[1]),
    .Y(_112_)
  );
  NOR _134_ (
    .A(_112_),
    .B(_111_),
    .Y(_004_[1])
  );
  NOT _135_ (
    .A(nxt_state[2]),
    .Y(_113_)
  );
  NAND _136_ (
    .A(_109_),
    .B(reset),
    .Y(_114_)
  );
  NOR _137_ (
    .A(_114_),
    .B(_113_),
    .Y(_004_[2])
  );
  NOT _138_ (
    .A(nxt_state[3]),
    .Y(_115_)
  );
  NOR _139_ (
    .A(_114_),
    .B(_115_),
    .Y(_004_[3])
  );
  NOT _140_ (
    .A(nxt_state[4]),
    .Y(_116_)
  );
  NOR _141_ (
    .A(_114_),
    .B(_116_),
    .Y(_004_[4])
  );
  NOT _142_ (
    .A(state[4]),
    .Y(_117_)
  );
  NOR _143_ (
    .A(state[3]),
    .B(state[2]),
    .Y(_118_)
  );
  NAND _144_ (
    .A(_118_),
    .B(_117_),
    .Y(_119_)
  );
  NOT _145_ (
    .A(_119_),
    .Y(_120_)
  );
  NOT _146_ (
    .A(state[1]),
    .Y(_121_)
  );
  NOR _147_ (
    .A(_121_),
    .B(state[0]),
    .Y(_122_)
  );
  NAND _148_ (
    .A(_122_),
    .B(_120_),
    .Y(_123_)
  );
  NAND _149_ (
    .A(_121_),
    .B(state[0]),
    .Y(_124_)
  );
  NOR _150_ (
    .A(_124_),
    .B(_119_),
    .Y(_125_)
  );
  NOT _151_ (
    .A(_125_),
    .Y(_126_)
  );
  NAND _152_ (
    .A(_126_),
    .B(_123_),
    .Y(_127_)
  );
  NAND _153_ (
    .A(_114_),
    .B(umbrales_I[0]),
    .Y(_128_)
  );
  NOR _154_ (
    .A(_128_),
    .B(_127_),
    .Y(_005_[0])
  );
  NAND _155_ (
    .A(_114_),
    .B(umbrales_I[1]),
    .Y(_006_)
  );
  NOR _156_ (
    .A(_006_),
    .B(_127_),
    .Y(_005_[1])
  );
  NAND _157_ (
    .A(_114_),
    .B(umbrales_I[2]),
    .Y(_007_)
  );
  NOR _158_ (
    .A(_007_),
    .B(_127_),
    .Y(_005_[2])
  );
  NAND _159_ (
    .A(_114_),
    .B(umbrales_I[3]),
    .Y(_008_)
  );
  NOR _160_ (
    .A(_008_),
    .B(_127_),
    .Y(_005_[3])
  );
  NAND _161_ (
    .A(_114_),
    .B(umbrales_I[4]),
    .Y(_009_)
  );
  NOR _162_ (
    .A(_009_),
    .B(_127_),
    .Y(_005_[4])
  );
  NAND _163_ (
    .A(_114_),
    .B(umbrales_I[5]),
    .Y(_010_)
  );
  NOR _164_ (
    .A(_010_),
    .B(_127_),
    .Y(_005_[5])
  );
  NAND _165_ (
    .A(_114_),
    .B(umbrales_I[6]),
    .Y(_011_)
  );
  NOR _166_ (
    .A(_011_),
    .B(_127_),
    .Y(_005_[6])
  );
  NAND _167_ (
    .A(_114_),
    .B(umbrales_I[7]),
    .Y(_012_)
  );
  NOR _168_ (
    .A(_012_),
    .B(_127_),
    .Y(_005_[7])
  );
  NAND _169_ (
    .A(_114_),
    .B(umbrales_I[8]),
    .Y(_013_)
  );
  NOR _170_ (
    .A(_013_),
    .B(_127_),
    .Y(_005_[8])
  );
  NAND _171_ (
    .A(_114_),
    .B(umbrales_I[9]),
    .Y(_014_)
  );
  NOR _172_ (
    .A(_014_),
    .B(_127_),
    .Y(_005_[9])
  );
  NAND _173_ (
    .A(_114_),
    .B(umbrales_I[10]),
    .Y(_015_)
  );
  NOR _174_ (
    .A(_015_),
    .B(_127_),
    .Y(_005_[10])
  );
  NAND _175_ (
    .A(_114_),
    .B(umbrales_I[11]),
    .Y(_016_)
  );
  NOR _176_ (
    .A(_016_),
    .B(_127_),
    .Y(_005_[11])
  );
  NAND _177_ (
    .A(_114_),
    .B(umbrales_I[12]),
    .Y(_017_)
  );
  NOR _178_ (
    .A(_017_),
    .B(_127_),
    .Y(_005_[12])
  );
  NAND _179_ (
    .A(_114_),
    .B(umbrales_I[13]),
    .Y(_018_)
  );
  NOR _180_ (
    .A(_018_),
    .B(_127_),
    .Y(_005_[13])
  );
  NOT _181_ (
    .A(state[0]),
    .Y(_019_)
  );
  NAND _182_ (
    .A(_121_),
    .B(_019_),
    .Y(_020_)
  );
  NOR _183_ (
    .A(_020_),
    .B(state[4]),
    .Y(_021_)
  );
  NOT _184_ (
    .A(state[2]),
    .Y(_022_)
  );
  NOR _185_ (
    .A(state[3]),
    .B(_022_),
    .Y(_023_)
  );
  NAND _186_ (
    .A(_023_),
    .B(_021_),
    .Y(_024_)
  );
  NOR _187_ (
    .A(FIFO_empty[4]),
    .B(FIFO_empty[2]),
    .Y(_025_)
  );
  NOT _188_ (
    .A(FIFO_empty[0]),
    .Y(_026_)
  );
  NOT _189_ (
    .A(FIFO_empty[1]),
    .Y(_027_)
  );
  NAND _190_ (
    .A(_027_),
    .B(_026_),
    .Y(_028_)
  );
  NOR _191_ (
    .A(_028_),
    .B(FIFO_empty[3]),
    .Y(_029_)
  );
  NAND _192_ (
    .A(_029_),
    .B(_025_),
    .Y(_030_)
  );
  NOR _193_ (
    .A(_030_),
    .B(_024_),
    .Y(_031_)
  );
  NOR _194_ (
    .A(FIFO_error[1]),
    .B(FIFO_error[4]),
    .Y(_032_)
  );
  NOT _195_ (
    .A(FIFO_error[2]),
    .Y(_033_)
  );
  NOT _196_ (
    .A(FIFO_error[3]),
    .Y(_034_)
  );
  NAND _197_ (
    .A(_034_),
    .B(_033_),
    .Y(_035_)
  );
  NOR _198_ (
    .A(_035_),
    .B(FIFO_error[0]),
    .Y(_036_)
  );
  NAND _199_ (
    .A(_036_),
    .B(_032_),
    .Y(_037_)
  );
  NOT _200_ (
    .A(state[3]),
    .Y(_038_)
  );
  NOR _201_ (
    .A(_038_),
    .B(state[2]),
    .Y(_039_)
  );
  NAND _202_ (
    .A(_039_),
    .B(_021_),
    .Y(_040_)
  );
  NOR _203_ (
    .A(_040_),
    .B(_037_),
    .Y(_041_)
  );
  NOR _204_ (
    .A(_041_),
    .B(_031_),
    .Y(_042_)
  );
  NOT _205_ (
    .A(FIFO_error[1]),
    .Y(_043_)
  );
  NOR _206_ (
    .A(FIFO_error[0]),
    .B(FIFO_error[4]),
    .Y(_044_)
  );
  NAND _207_ (
    .A(_044_),
    .B(_043_),
    .Y(_045_)
  );
  NOR _208_ (
    .A(_045_),
    .B(_035_),
    .Y(_046_)
  );
  NAND _209_ (
    .A(_118_),
    .B(state[4]),
    .Y(_047_)
  );
  NOR _210_ (
    .A(_047_),
    .B(_020_),
    .Y(_048_)
  );
  NAND _211_ (
    .A(_048_),
    .B(_046_),
    .Y(_049_)
  );
  NAND _212_ (
    .A(_049_),
    .B(_042_),
    .Y(_050_)
  );
  NAND _213_ (
    .A(_050_),
    .B(nxt_state[0]),
    .Y(_051_)
  );
  NOT _214_ (
    .A(_048_),
    .Y(_052_)
  );
  NOR _215_ (
    .A(_046_),
    .B(_111_),
    .Y(_053_)
  );
  NOT _216_ (
    .A(_053_),
    .Y(_054_)
  );
  NOR _217_ (
    .A(_054_),
    .B(_052_),
    .Y(_055_)
  );
  NAND _218_ (
    .A(_052_),
    .B(_040_),
    .Y(_056_)
  );
  NOR _219_ (
    .A(state[1]),
    .B(state[0]),
    .Y(_057_)
  );
  NAND _220_ (
    .A(_057_),
    .B(_117_),
    .Y(_058_)
  );
  NAND _221_ (
    .A(_038_),
    .B(state[2]),
    .Y(_059_)
  );
  NOR _222_ (
    .A(_059_),
    .B(_058_),
    .Y(_060_)
  );
  NOR _223_ (
    .A(_060_),
    .B(_125_),
    .Y(_061_)
  );
  NAND _224_ (
    .A(_061_),
    .B(_123_),
    .Y(_062_)
  );
  NOR _225_ (
    .A(_062_),
    .B(_056_),
    .Y(_063_)
  );
  NOR _226_ (
    .A(_063_),
    .B(_055_),
    .Y(_064_)
  );
  NAND _227_ (
    .A(_064_),
    .B(_051_),
    .Y(_003_[0])
  );
  NAND _228_ (
    .A(_050_),
    .B(nxt_state[1]),
    .Y(_065_)
  );
  NAND _229_ (
    .A(_065_),
    .B(_126_),
    .Y(_003_[1])
  );
  NAND _230_ (
    .A(_050_),
    .B(nxt_state[2]),
    .Y(_066_)
  );
  NOT _231_ (
    .A(FIFO_empty[4]),
    .Y(_067_)
  );
  NOR _232_ (
    .A(FIFO_empty[3]),
    .B(FIFO_empty[2]),
    .Y(_068_)
  );
  NAND _233_ (
    .A(_068_),
    .B(_067_),
    .Y(_069_)
  );
  NOR _234_ (
    .A(_069_),
    .B(_028_),
    .Y(_070_)
  );
  NOT _235_ (
    .A(_039_),
    .Y(_071_)
  );
  NOR _236_ (
    .A(_071_),
    .B(_058_),
    .Y(_072_)
  );
  NAND _237_ (
    .A(_072_),
    .B(_070_),
    .Y(_073_)
  );
  NAND _238_ (
    .A(_073_),
    .B(_037_),
    .Y(_074_)
  );
  NAND _239_ (
    .A(_046_),
    .B(_123_),
    .Y(_075_)
  );
  NAND _240_ (
    .A(_075_),
    .B(_074_),
    .Y(_076_)
  );
  NAND _241_ (
    .A(_076_),
    .B(_066_),
    .Y(_003_[2])
  );
  NAND _242_ (
    .A(_070_),
    .B(_115_),
    .Y(_077_)
  );
  NAND _243_ (
    .A(_077_),
    .B(_060_),
    .Y(_078_)
  );
  NAND _244_ (
    .A(_072_),
    .B(_046_),
    .Y(_079_)
  );
  NAND _245_ (
    .A(_049_),
    .B(_079_),
    .Y(_080_)
  );
  NAND _246_ (
    .A(_080_),
    .B(nxt_state[3]),
    .Y(_081_)
  );
  NAND _247_ (
    .A(_081_),
    .B(_078_),
    .Y(_003_[3])
  );
  NAND _248_ (
    .A(_046_),
    .B(_116_),
    .Y(_082_)
  );
  NOR _249_ (
    .A(_053_),
    .B(_052_),
    .Y(_083_)
  );
  NAND _250_ (
    .A(_083_),
    .B(_082_),
    .Y(_084_)
  );
  NOR _251_ (
    .A(_042_),
    .B(_116_),
    .Y(_085_)
  );
  NOT _252_ (
    .A(_122_),
    .Y(_086_)
  );
  NOR _253_ (
    .A(_086_),
    .B(_119_),
    .Y(_087_)
  );
  NOR _254_ (
    .A(_040_),
    .B(_070_),
    .Y(_088_)
  );
  NOR _255_ (
    .A(_088_),
    .B(_087_),
    .Y(_089_)
  );
  NOR _256_ (
    .A(_089_),
    .B(_046_),
    .Y(_090_)
  );
  NOR _257_ (
    .A(_090_),
    .B(_085_),
    .Y(_091_)
  );
  NAND _258_ (
    .A(_091_),
    .B(_084_),
    .Y(_003_[4])
  );
  NAND _259_ (
    .A(_052_),
    .B(_126_),
    .Y(_092_)
  );
  NAND _260_ (
    .A(_092_),
    .B(_049_),
    .Y(_093_)
  );
  NAND _261_ (
    .A(_093_),
    .B(error_out[0]),
    .Y(_094_)
  );
  NAND _262_ (
    .A(_048_),
    .B(FIFO_error[0]),
    .Y(_095_)
  );
  NAND _263_ (
    .A(_095_),
    .B(_094_),
    .Y(_001_[0])
  );
  NAND _264_ (
    .A(_093_),
    .B(error_out[1]),
    .Y(_096_)
  );
  NAND _265_ (
    .A(_048_),
    .B(FIFO_error[1]),
    .Y(_097_)
  );
  NAND _266_ (
    .A(_097_),
    .B(_096_),
    .Y(_001_[1])
  );
  NAND _267_ (
    .A(_093_),
    .B(error_out[2]),
    .Y(_098_)
  );
  NAND _268_ (
    .A(_048_),
    .B(FIFO_error[2]),
    .Y(_099_)
  );
  NAND _269_ (
    .A(_099_),
    .B(_098_),
    .Y(_001_[2])
  );
  NAND _270_ (
    .A(_093_),
    .B(error_out[3]),
    .Y(_100_)
  );
  NAND _271_ (
    .A(_048_),
    .B(FIFO_error[3]),
    .Y(_101_)
  );
  NAND _272_ (
    .A(_101_),
    .B(_100_),
    .Y(_001_[3])
  );
  NAND _273_ (
    .A(_093_),
    .B(error_out[4]),
    .Y(_102_)
  );
  NAND _274_ (
    .A(_048_),
    .B(FIFO_error[4]),
    .Y(_103_)
  );
  NAND _275_ (
    .A(_103_),
    .B(_102_),
    .Y(_001_[4])
  );
  NOT _276_ (
    .A(idle_out),
    .Y(_104_)
  );
  NOR _277_ (
    .A(_061_),
    .B(_031_),
    .Y(_105_)
  );
  NOR _278_ (
    .A(_105_),
    .B(_104_),
    .Y(_002_)
  );
  NOT _279_ (
    .A(active_out),
    .Y(_106_)
  );
  NOR _280_ (
    .A(_072_),
    .B(_106_),
    .Y(_107_)
  );
  NAND _281_ (
    .A(_107_),
    .B(_061_),
    .Y(_108_)
  );
  NAND _282_ (
    .A(_108_),
    .B(_079_),
    .Y(_000_)
  );
  DFF _283_ (
    .C(clk),
    .D(_005_[0]),
    .Q(umbrales_I[0])
  );
  DFF _284_ (
    .C(clk),
    .D(_005_[1]),
    .Q(umbrales_I[1])
  );
  DFF _285_ (
    .C(clk),
    .D(_005_[2]),
    .Q(umbrales_I[2])
  );
  DFF _286_ (
    .C(clk),
    .D(_005_[3]),
    .Q(umbrales_I[3])
  );
  DFF _287_ (
    .C(clk),
    .D(_005_[4]),
    .Q(umbrales_I[4])
  );
  DFF _288_ (
    .C(clk),
    .D(_005_[5]),
    .Q(umbrales_I[5])
  );
  DFF _289_ (
    .C(clk),
    .D(_005_[6]),
    .Q(umbrales_I[6])
  );
  DFF _290_ (
    .C(clk),
    .D(_005_[7]),
    .Q(umbrales_I[7])
  );
  DFF _291_ (
    .C(clk),
    .D(_005_[8]),
    .Q(umbrales_I[8])
  );
  DFF _292_ (
    .C(clk),
    .D(_005_[9]),
    .Q(umbrales_I[9])
  );
  DFF _293_ (
    .C(clk),
    .D(_005_[10]),
    .Q(umbrales_I[10])
  );
  DFF _294_ (
    .C(clk),
    .D(_005_[11]),
    .Q(umbrales_I[11])
  );
  DFF _295_ (
    .C(clk),
    .D(_005_[12]),
    .Q(umbrales_I[12])
  );
  DFF _296_ (
    .C(clk),
    .D(_005_[13]),
    .Q(umbrales_I[13])
  );
  DFF _297_ (
    .C(clk),
    .D(_000_),
    .Q(active_out)
  );
  DFF _298_ (
    .C(clk),
    .D(_002_),
    .Q(idle_out)
  );
  DFF _299_ (
    .C(clk),
    .D(_001_[0]),
    .Q(error_out[0])
  );
  DFF _300_ (
    .C(clk),
    .D(_001_[1]),
    .Q(error_out[1])
  );
  DFF _301_ (
    .C(clk),
    .D(_001_[2]),
    .Q(error_out[2])
  );
  DFF _302_ (
    .C(clk),
    .D(_001_[3]),
    .Q(error_out[3])
  );
  DFF _303_ (
    .C(clk),
    .D(_001_[4]),
    .Q(error_out[4])
  );
  DFF _304_ (
    .C(clk),
    .D(_004_[0]),
    .Q(state[0])
  );
  DFF _305_ (
    .C(clk),
    .D(_004_[1]),
    .Q(state[1])
  );
  DFF _306_ (
    .C(clk),
    .D(_004_[2]),
    .Q(state[2])
  );
  DFF _307_ (
    .C(clk),
    .D(_004_[3]),
    .Q(state[3])
  );
  DFF _308_ (
    .C(clk),
    .D(_004_[4]),
    .Q(state[4])
  );
  DFF _309_ (
    .C(clk),
    .D(_003_[0]),
    .Q(nxt_state[0])
  );
  DFF _310_ (
    .C(clk),
    .D(_003_[1]),
    .Q(nxt_state[1])
  );
  DFF _311_ (
    .C(clk),
    .D(_003_[2]),
    .Q(nxt_state[2])
  );
  DFF _312_ (
    .C(clk),
    .D(_003_[3]),
    .Q(nxt_state[3])
  );
  DFF _313_ (
    .C(clk),
    .D(_003_[4]),
    .Q(nxt_state[4])
  );
endmodule
