/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-zWLHjG/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module fsmControlEstructural(clk, reset, init, umbral_MF, umbral_VC0, umbral_VC1, umbral_D0, umbral_D1, FIFO_error, FIFO_empty, umbrales_I, active_out, idle_out, error_out);
  wire _000_;
  wire [4:0] _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire [4:0] _008_;
  wire [4:0] _009_;
  wire [13:0] _010_;
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
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  input [4:0] FIFO_empty;
  input [4:0] FIFO_error;
  output active_out;
  input clk;
  output [4:0] error_out;
  wire error_out_0;
  wire error_out_1;
  wire error_out_2;
  wire error_out_3;
  wire error_out_4;
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
  NOR _141_ (
    .A(FIFO_error[1]),
    .B(FIFO_error[2]),
    .Y(_041_)
  );
  NAND _142_ (
    .A(_041_),
    .B(_040_),
    .Y(_042_)
  );
  NOR _143_ (
    .A(_042_),
    .B(FIFO_error[0]),
    .Y(_043_)
  );
  NOR _144_ (
    .A(_043_),
    .B(_039_),
    .Y(_044_)
  );
  NOR _145_ (
    .A(_044_),
    .B(_036_),
    .Y(_045_)
  );
  NAND _146_ (
    .A(_045_),
    .B(error_out[4]),
    .Y(_046_)
  );
  NAND _147_ (
    .A(_044_),
    .B(error_out_4),
    .Y(_047_)
  );
  NAND _148_ (
    .A(_047_),
    .B(_046_),
    .Y(_001_[4])
  );
  NAND _149_ (
    .A(_045_),
    .B(error_out[0]),
    .Y(_048_)
  );
  NAND _150_ (
    .A(_044_),
    .B(error_out_0),
    .Y(_049_)
  );
  NAND _151_ (
    .A(_049_),
    .B(_048_),
    .Y(_001_[0])
  );
  NAND _152_ (
    .A(_045_),
    .B(error_out[3]),
    .Y(_050_)
  );
  NAND _153_ (
    .A(_044_),
    .B(error_out_3),
    .Y(_051_)
  );
  NAND _154_ (
    .A(_051_),
    .B(_050_),
    .Y(_001_[3])
  );
  NAND _155_ (
    .A(_045_),
    .B(error_out[1]),
    .Y(_052_)
  );
  NAND _156_ (
    .A(_044_),
    .B(error_out_1),
    .Y(_053_)
  );
  NAND _157_ (
    .A(_053_),
    .B(_052_),
    .Y(_001_[1])
  );
  NAND _158_ (
    .A(_045_),
    .B(error_out[2]),
    .Y(_054_)
  );
  NAND _159_ (
    .A(_044_),
    .B(error_out_2),
    .Y(_055_)
  );
  NAND _160_ (
    .A(_055_),
    .B(_054_),
    .Y(_001_[2])
  );
  NOT _161_ (
    .A(FIFO_error[4]),
    .Y(_056_)
  );
  NOR _162_ (
    .A(_039_),
    .B(_056_),
    .Y(_057_)
  );
  NOR _163_ (
    .A(_057_),
    .B(error_out_4),
    .Y(_058_)
  );
  NOR _164_ (
    .A(_058_),
    .B(_036_),
    .Y(_006_)
  );
  NAND _165_ (
    .A(_056_),
    .B(FIFO_error[3]),
    .Y(_059_)
  );
  NOR _166_ (
    .A(_059_),
    .B(_039_),
    .Y(_060_)
  );
  NOR _167_ (
    .A(_060_),
    .B(error_out_3),
    .Y(_061_)
  );
  NOR _168_ (
    .A(_061_),
    .B(_036_),
    .Y(_005_)
  );
  NOT _169_ (
    .A(FIFO_error[2]),
    .Y(_062_)
  );
  NAND _170_ (
    .A(_140_),
    .B(state[4]),
    .Y(_063_)
  );
  NOR _171_ (
    .A(_063_),
    .B(_037_),
    .Y(_064_)
  );
  NAND _172_ (
    .A(_040_),
    .B(_064_),
    .Y(_065_)
  );
  NOR _173_ (
    .A(_065_),
    .B(_062_),
    .Y(_066_)
  );
  NOR _174_ (
    .A(_066_),
    .B(error_out_2),
    .Y(_067_)
  );
  NOR _175_ (
    .A(_067_),
    .B(_036_),
    .Y(_004_)
  );
  NAND _176_ (
    .A(FIFO_error[1]),
    .B(_062_),
    .Y(_068_)
  );
  NOR _177_ (
    .A(_068_),
    .B(_065_),
    .Y(_069_)
  );
  NOR _178_ (
    .A(_069_),
    .B(error_out_1),
    .Y(_070_)
  );
  NOR _179_ (
    .A(_070_),
    .B(_036_),
    .Y(_003_)
  );
  NAND _180_ (
    .A(_020_),
    .B(error_out_0),
    .Y(_071_)
  );
  NOT _181_ (
    .A(FIFO_error[0]),
    .Y(_072_)
  );
  NOR _182_ (
    .A(_042_),
    .B(_072_),
    .Y(_073_)
  );
  NAND _183_ (
    .A(_073_),
    .B(_064_),
    .Y(_074_)
  );
  NAND _184_ (
    .A(_074_),
    .B(_071_),
    .Y(_002_)
  );
  NOR _185_ (
    .A(state[1]),
    .B(state[0]),
    .Y(_075_)
  );
  NAND _186_ (
    .A(_075_),
    .B(_139_),
    .Y(_076_)
  );
  NOT _187_ (
    .A(state[2]),
    .Y(_077_)
  );
  NOR _188_ (
    .A(_077_),
    .B(state[3]),
    .Y(_078_)
  );
  NOT _189_ (
    .A(_078_),
    .Y(_079_)
  );
  NOR _190_ (
    .A(_079_),
    .B(_076_),
    .Y(_080_)
  );
  NOR _191_ (
    .A(_080_),
    .B(_015_),
    .Y(_081_)
  );
  NOR _192_ (
    .A(_037_),
    .B(state[4]),
    .Y(_082_)
  );
  NOT _193_ (
    .A(state[3]),
    .Y(_083_)
  );
  NOR _194_ (
    .A(state[2]),
    .B(_083_),
    .Y(_084_)
  );
  NAND _195_ (
    .A(_084_),
    .B(_082_),
    .Y(_085_)
  );
  NAND _196_ (
    .A(_085_),
    .B(_020_),
    .Y(_086_)
  );
  NOR _197_ (
    .A(_086_),
    .B(_064_),
    .Y(_087_)
  );
  NAND _198_ (
    .A(_087_),
    .B(_081_),
    .Y(_088_)
  );
  NOT _199_ (
    .A(_084_),
    .Y(_089_)
  );
  NOR _200_ (
    .A(_089_),
    .B(_076_),
    .Y(_090_)
  );
  NOT _201_ (
    .A(FIFO_empty[0]),
    .Y(_091_)
  );
  NOT _202_ (
    .A(FIFO_empty[1]),
    .Y(_092_)
  );
  NAND _203_ (
    .A(_092_),
    .B(_091_),
    .Y(_093_)
  );
  NOT _204_ (
    .A(FIFO_empty[4]),
    .Y(_094_)
  );
  NOR _205_ (
    .A(FIFO_empty[3]),
    .B(FIFO_empty[2]),
    .Y(_095_)
  );
  NAND _206_ (
    .A(_095_),
    .B(_094_),
    .Y(_096_)
  );
  NOR _207_ (
    .A(_096_),
    .B(_093_),
    .Y(_097_)
  );
  NOT _208_ (
    .A(_097_),
    .Y(_098_)
  );
  NAND _209_ (
    .A(_098_),
    .B(_090_),
    .Y(_099_)
  );
  NAND _210_ (
    .A(_099_),
    .B(_039_),
    .Y(_100_)
  );
  NAND _211_ (
    .A(_064_),
    .B(_133_),
    .Y(_101_)
  );
  NAND _212_ (
    .A(_043_),
    .B(nxt_state[0]),
    .Y(_102_)
  );
  NAND _213_ (
    .A(_102_),
    .B(_101_),
    .Y(_103_)
  );
  NAND _214_ (
    .A(_103_),
    .B(_100_),
    .Y(_104_)
  );
  NAND _215_ (
    .A(_104_),
    .B(_088_),
    .Y(_008_[0])
  );
  NOT _216_ (
    .A(_043_),
    .Y(_105_)
  );
  NOR _217_ (
    .A(_097_),
    .B(_085_),
    .Y(_106_)
  );
  NOR _218_ (
    .A(_039_),
    .B(_133_),
    .Y(_107_)
  );
  NOR _219_ (
    .A(_107_),
    .B(_106_),
    .Y(_108_)
  );
  NOR _220_ (
    .A(_108_),
    .B(_105_),
    .Y(_109_)
  );
  NAND _221_ (
    .A(_109_),
    .B(nxt_state[1]),
    .Y(_110_)
  );
  NAND _222_ (
    .A(_110_),
    .B(_020_),
    .Y(_008_[1])
  );
  NOR _223_ (
    .A(_107_),
    .B(_090_),
    .Y(_111_)
  );
  NOR _224_ (
    .A(_111_),
    .B(_135_),
    .Y(_112_)
  );
  NAND _225_ (
    .A(_078_),
    .B(_082_),
    .Y(_113_)
  );
  NAND _226_ (
    .A(_113_),
    .B(_085_),
    .Y(_114_)
  );
  NAND _227_ (
    .A(_114_),
    .B(_097_),
    .Y(_115_)
  );
  NAND _228_ (
    .A(_115_),
    .B(_016_),
    .Y(_116_)
  );
  NOR _229_ (
    .A(_116_),
    .B(_112_),
    .Y(_117_)
  );
  NOR _230_ (
    .A(_117_),
    .B(_105_),
    .Y(_008_[2])
  );
  NAND _231_ (
    .A(_109_),
    .B(nxt_state[3]),
    .Y(_118_)
  );
  NOR _232_ (
    .A(_113_),
    .B(_105_),
    .Y(_119_)
  );
  NAND _233_ (
    .A(_119_),
    .B(_098_),
    .Y(_120_)
  );
  NAND _234_ (
    .A(_120_),
    .B(_118_),
    .Y(_008_[3])
  );
  NAND _235_ (
    .A(_111_),
    .B(_081_),
    .Y(_121_)
  );
  NAND _236_ (
    .A(_121_),
    .B(_105_),
    .Y(_122_)
  );
  NAND _237_ (
    .A(_064_),
    .B(reset),
    .Y(_123_)
  );
  NAND _238_ (
    .A(_123_),
    .B(_099_),
    .Y(_124_)
  );
  NAND _239_ (
    .A(_124_),
    .B(nxt_state[4]),
    .Y(_125_)
  );
  NAND _240_ (
    .A(_125_),
    .B(_122_),
    .Y(_008_[4])
  );
  NOR _241_ (
    .A(_119_),
    .B(idle_out),
    .Y(_126_)
  );
  NOT _242_ (
    .A(_086_),
    .Y(_127_)
  );
  NAND _243_ (
    .A(_120_),
    .B(_127_),
    .Y(_128_)
  );
  NOR _244_ (
    .A(_128_),
    .B(_126_),
    .Y(_007_)
  );
  NAND _245_ (
    .A(_106_),
    .B(_043_),
    .Y(_129_)
  );
  NAND _246_ (
    .A(_127_),
    .B(active_out),
    .Y(_130_)
  );
  NAND _247_ (
    .A(_130_),
    .B(_129_),
    .Y(_000_)
  );
  NOT _248_ (
    .A(init),
    .Y(_131_)
  );
  NAND _249_ (
    .A(_131_),
    .B(nxt_state[0]),
    .Y(_132_)
  );
  NAND _250_ (
    .A(_132_),
    .B(reset),
    .Y(_009_[0])
  );
  NOT _251_ (
    .A(reset),
    .Y(_133_)
  );
  NOR _252_ (
    .A(init),
    .B(nxt_state[1]),
    .Y(_134_)
  );
  NOR _253_ (
    .A(_134_),
    .B(_133_),
    .Y(_009_[1])
  );
  NOT _254_ (
    .A(nxt_state[2]),
    .Y(_135_)
  );
  NAND _255_ (
    .A(_131_),
    .B(reset),
    .Y(_136_)
  );
  NOR _256_ (
    .A(_136_),
    .B(_135_),
    .Y(_009_[2])
  );
  NOT _257_ (
    .A(nxt_state[3]),
    .Y(_137_)
  );
  NOR _258_ (
    .A(_136_),
    .B(_137_),
    .Y(_009_[3])
  );
  NOT _259_ (
    .A(nxt_state[4]),
    .Y(_138_)
  );
  NOR _260_ (
    .A(_136_),
    .B(_138_),
    .Y(_009_[4])
  );
  NOT _261_ (
    .A(state[4]),
    .Y(_139_)
  );
  NOR _262_ (
    .A(state[2]),
    .B(state[3]),
    .Y(_140_)
  );
  NAND _263_ (
    .A(_140_),
    .B(_139_),
    .Y(_011_)
  );
  NOT _264_ (
    .A(state[1]),
    .Y(_012_)
  );
  NOR _265_ (
    .A(_012_),
    .B(state[0]),
    .Y(_013_)
  );
  NOT _266_ (
    .A(_013_),
    .Y(_014_)
  );
  NOR _267_ (
    .A(_014_),
    .B(_011_),
    .Y(_015_)
  );
  NOT _268_ (
    .A(_015_),
    .Y(_016_)
  );
  NOT _269_ (
    .A(_011_),
    .Y(_017_)
  );
  NOT _270_ (
    .A(state[0]),
    .Y(_018_)
  );
  NOR _271_ (
    .A(state[1]),
    .B(_018_),
    .Y(_019_)
  );
  NAND _272_ (
    .A(_019_),
    .B(_017_),
    .Y(_020_)
  );
  NAND _273_ (
    .A(_020_),
    .B(_016_),
    .Y(_021_)
  );
  NAND _274_ (
    .A(_136_),
    .B(umbrales_I[0]),
    .Y(_022_)
  );
  NOR _275_ (
    .A(_022_),
    .B(_021_),
    .Y(_010_[0])
  );
  NAND _276_ (
    .A(_136_),
    .B(umbrales_I[1]),
    .Y(_023_)
  );
  NOR _277_ (
    .A(_023_),
    .B(_021_),
    .Y(_010_[1])
  );
  NAND _278_ (
    .A(_136_),
    .B(umbrales_I[2]),
    .Y(_024_)
  );
  NOR _279_ (
    .A(_024_),
    .B(_021_),
    .Y(_010_[2])
  );
  NAND _280_ (
    .A(_136_),
    .B(umbrales_I[3]),
    .Y(_025_)
  );
  NOR _281_ (
    .A(_025_),
    .B(_021_),
    .Y(_010_[3])
  );
  NAND _282_ (
    .A(_136_),
    .B(umbrales_I[4]),
    .Y(_026_)
  );
  NOR _283_ (
    .A(_026_),
    .B(_021_),
    .Y(_010_[4])
  );
  NAND _284_ (
    .A(_136_),
    .B(umbrales_I[5]),
    .Y(_027_)
  );
  NOR _285_ (
    .A(_027_),
    .B(_021_),
    .Y(_010_[5])
  );
  NAND _286_ (
    .A(_136_),
    .B(umbrales_I[6]),
    .Y(_028_)
  );
  NOR _287_ (
    .A(_028_),
    .B(_021_),
    .Y(_010_[6])
  );
  NAND _288_ (
    .A(_136_),
    .B(umbrales_I[7]),
    .Y(_029_)
  );
  NOR _289_ (
    .A(_029_),
    .B(_021_),
    .Y(_010_[7])
  );
  NAND _290_ (
    .A(_136_),
    .B(umbrales_I[8]),
    .Y(_030_)
  );
  NOR _291_ (
    .A(_030_),
    .B(_021_),
    .Y(_010_[8])
  );
  NAND _292_ (
    .A(_136_),
    .B(umbrales_I[9]),
    .Y(_031_)
  );
  NOR _293_ (
    .A(_031_),
    .B(_021_),
    .Y(_010_[9])
  );
  NAND _294_ (
    .A(_136_),
    .B(umbrales_I[10]),
    .Y(_032_)
  );
  NOR _295_ (
    .A(_032_),
    .B(_021_),
    .Y(_010_[10])
  );
  NAND _296_ (
    .A(_136_),
    .B(umbrales_I[11]),
    .Y(_033_)
  );
  NOR _297_ (
    .A(_033_),
    .B(_021_),
    .Y(_010_[11])
  );
  NAND _298_ (
    .A(_136_),
    .B(umbrales_I[12]),
    .Y(_034_)
  );
  NOR _299_ (
    .A(_034_),
    .B(_021_),
    .Y(_010_[12])
  );
  NAND _300_ (
    .A(_136_),
    .B(umbrales_I[13]),
    .Y(_035_)
  );
  NOR _301_ (
    .A(_035_),
    .B(_021_),
    .Y(_010_[13])
  );
  NOT _302_ (
    .A(_020_),
    .Y(_036_)
  );
  NAND _303_ (
    .A(_012_),
    .B(_018_),
    .Y(_037_)
  );
  NOR _304_ (
    .A(_037_),
    .B(_139_),
    .Y(_038_)
  );
  NAND _305_ (
    .A(_038_),
    .B(_140_),
    .Y(_039_)
  );
  NOR _306_ (
    .A(FIFO_error[4]),
    .B(FIFO_error[3]),
    .Y(_040_)
  );
  DFF _307_ (
    .C(clk),
    .D(_010_[0]),
    .Q(umbrales_I[0])
  );
  DFF _308_ (
    .C(clk),
    .D(_010_[1]),
    .Q(umbrales_I[1])
  );
  DFF _309_ (
    .C(clk),
    .D(_010_[2]),
    .Q(umbrales_I[2])
  );
  DFF _310_ (
    .C(clk),
    .D(_010_[3]),
    .Q(umbrales_I[3])
  );
  DFF _311_ (
    .C(clk),
    .D(_010_[4]),
    .Q(umbrales_I[4])
  );
  DFF _312_ (
    .C(clk),
    .D(_010_[5]),
    .Q(umbrales_I[5])
  );
  DFF _313_ (
    .C(clk),
    .D(_010_[6]),
    .Q(umbrales_I[6])
  );
  DFF _314_ (
    .C(clk),
    .D(_010_[7]),
    .Q(umbrales_I[7])
  );
  DFF _315_ (
    .C(clk),
    .D(_010_[8]),
    .Q(umbrales_I[8])
  );
  DFF _316_ (
    .C(clk),
    .D(_010_[9]),
    .Q(umbrales_I[9])
  );
  DFF _317_ (
    .C(clk),
    .D(_010_[10]),
    .Q(umbrales_I[10])
  );
  DFF _318_ (
    .C(clk),
    .D(_010_[11]),
    .Q(umbrales_I[11])
  );
  DFF _319_ (
    .C(clk),
    .D(_010_[12]),
    .Q(umbrales_I[12])
  );
  DFF _320_ (
    .C(clk),
    .D(_010_[13]),
    .Q(umbrales_I[13])
  );
  DFF _321_ (
    .C(clk),
    .D(_000_),
    .Q(active_out)
  );
  DFF _322_ (
    .C(clk),
    .D(_007_),
    .Q(idle_out)
  );
  DFF _323_ (
    .C(clk),
    .D(_001_[0]),
    .Q(error_out[0])
  );
  DFF _324_ (
    .C(clk),
    .D(_001_[1]),
    .Q(error_out[1])
  );
  DFF _325_ (
    .C(clk),
    .D(_001_[2]),
    .Q(error_out[2])
  );
  DFF _326_ (
    .C(clk),
    .D(_001_[3]),
    .Q(error_out[3])
  );
  DFF _327_ (
    .C(clk),
    .D(_001_[4]),
    .Q(error_out[4])
  );
  DFF _328_ (
    .C(clk),
    .D(_009_[0]),
    .Q(state[0])
  );
  DFF _329_ (
    .C(clk),
    .D(_009_[1]),
    .Q(state[1])
  );
  DFF _330_ (
    .C(clk),
    .D(_009_[2]),
    .Q(state[2])
  );
  DFF _331_ (
    .C(clk),
    .D(_009_[3]),
    .Q(state[3])
  );
  DFF _332_ (
    .C(clk),
    .D(_009_[4]),
    .Q(state[4])
  );
  DFF _333_ (
    .C(clk),
    .D(_008_[0]),
    .Q(nxt_state[0])
  );
  DFF _334_ (
    .C(clk),
    .D(_008_[1]),
    .Q(nxt_state[1])
  );
  DFF _335_ (
    .C(clk),
    .D(_008_[2]),
    .Q(nxt_state[2])
  );
  DFF _336_ (
    .C(clk),
    .D(_008_[3]),
    .Q(nxt_state[3])
  );
  DFF _337_ (
    .C(clk),
    .D(_008_[4]),
    .Q(nxt_state[4])
  );
  DFF _338_ (
    .C(clk),
    .D(_002_),
    .Q(error_out_0)
  );
  DFF _339_ (
    .C(clk),
    .D(_003_),
    .Q(error_out_1)
  );
  DFF _340_ (
    .C(clk),
    .D(_004_),
    .Q(error_out_2)
  );
  DFF _341_ (
    .C(clk),
    .D(_005_),
    .Q(error_out_3)
  );
  DFF _342_ (
    .C(clk),
    .D(_006_),
    .Q(error_out_4)
  );
endmodule
