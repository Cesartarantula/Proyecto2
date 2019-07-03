/* Generated by Yosys 0.8 (git sha1 5706e90) */

module \$paramod\dual_port_memory_Synth\DATA_WIDTH=6\ADDR_WIDTH=2\MEM_SIZE=3 (Clock, iWriteEnable, iReadEnable, iReadAddress, iWriteAddress, iDataIn, oDataOut);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
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
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  input Clock;
  wire [5:0] \Ram[0] ;
  wire [5:0] \Ram[1] ;
  wire [5:0] \Ram[2] ;
  wire [5:0] \Ram[3] ;
  input [5:0] iDataIn;
  input [1:0] iReadAddress;
  input iReadEnable;
  input [1:0] iWriteAddress;
  input iWriteEnable;
  output [5:0] oDataOut;
  NOT _159_ (
    .A(\Ram[3] [0]),
    .Y(_120_)
  );
  NOT _160_ (
    .A(\Ram[3] [1]),
    .Y(_122_)
  );
  NOT _161_ (
    .A(\Ram[3] [2]),
    .Y(_124_)
  );
  NOT _162_ (
    .A(\Ram[3] [3]),
    .Y(_126_)
  );
  NOT _163_ (
    .A(\Ram[3] [4]),
    .Y(_127_)
  );
  NOT _164_ (
    .A(\Ram[3] [5]),
    .Y(_128_)
  );
  NOT _165_ (
    .A(\Ram[0] [0]),
    .Y(_129_)
  );
  NOT _166_ (
    .A(\Ram[0] [1]),
    .Y(_130_)
  );
  NOT _167_ (
    .A(\Ram[0] [2]),
    .Y(_131_)
  );
  NOT _168_ (
    .A(\Ram[0] [3]),
    .Y(_132_)
  );
  NOT _169_ (
    .A(\Ram[0] [4]),
    .Y(_133_)
  );
  NOT _170_ (
    .A(\Ram[0] [5]),
    .Y(_134_)
  );
  NOT _171_ (
    .A(iReadEnable),
    .Y(_135_)
  );
  NOT _172_ (
    .A(iWriteEnable),
    .Y(_136_)
  );
  NOT _173_ (
    .A(iWriteAddress[1]),
    .Y(_137_)
  );
  NAND _174_ (
    .A(iWriteEnable),
    .B(iWriteAddress[0]),
    .Y(_138_)
  );
  NOT _175_ (
    .A(_138_),
    .Y(_139_)
  );
  NOR _176_ (
    .A(_137_),
    .B(_138_),
    .Y(_140_)
  );
  NAND _177_ (
    .A(iWriteAddress[1]),
    .B(_139_),
    .Y(_141_)
  );
  NAND _178_ (
    .A(iDataIn[0]),
    .B(_140_),
    .Y(_142_)
  );
  NAND _179_ (
    .A(\Ram[3] [0]),
    .B(_141_),
    .Y(_143_)
  );
  NAND _180_ (
    .A(_142_),
    .B(_143_),
    .Y(_109_)
  );
  NAND _181_ (
    .A(iDataIn[1]),
    .B(_140_),
    .Y(_144_)
  );
  NAND _182_ (
    .A(\Ram[3] [1]),
    .B(_141_),
    .Y(_146_)
  );
  NAND _183_ (
    .A(_144_),
    .B(_146_),
    .Y(_116_)
  );
  NAND _184_ (
    .A(iDataIn[2]),
    .B(_140_),
    .Y(_148_)
  );
  NAND _185_ (
    .A(\Ram[3] [2]),
    .B(_141_),
    .Y(_150_)
  );
  NAND _186_ (
    .A(_148_),
    .B(_150_),
    .Y(_145_)
  );
  NAND _187_ (
    .A(iDataIn[3]),
    .B(_140_),
    .Y(_153_)
  );
  NAND _188_ (
    .A(\Ram[3] [3]),
    .B(_141_),
    .Y(_155_)
  );
  NAND _189_ (
    .A(_153_),
    .B(_155_),
    .Y(_014_)
  );
  NAND _190_ (
    .A(iDataIn[4]),
    .B(_140_),
    .Y(_157_)
  );
  NAND _191_ (
    .A(\Ram[3] [4]),
    .B(_141_),
    .Y(_158_)
  );
  NAND _192_ (
    .A(_157_),
    .B(_158_),
    .Y(_037_)
  );
  NAND _193_ (
    .A(iDataIn[5]),
    .B(_140_),
    .Y(_000_)
  );
  NAND _194_ (
    .A(\Ram[3] [5]),
    .B(_141_),
    .Y(_001_)
  );
  NAND _195_ (
    .A(_000_),
    .B(_001_),
    .Y(_065_)
  );
  NOR _196_ (
    .A(_136_),
    .B(iWriteAddress[0]),
    .Y(_002_)
  );
  NOT _197_ (
    .A(_002_),
    .Y(_003_)
  );
  NOR _198_ (
    .A(_137_),
    .B(_003_),
    .Y(_004_)
  );
  NAND _199_ (
    .A(iWriteAddress[1]),
    .B(_002_),
    .Y(_005_)
  );
  NAND _200_ (
    .A(iDataIn[0]),
    .B(_004_),
    .Y(_006_)
  );
  NAND _201_ (
    .A(\Ram[2] [0]),
    .B(_005_),
    .Y(_007_)
  );
  NAND _202_ (
    .A(_006_),
    .B(_007_),
    .Y(_110_)
  );
  NAND _203_ (
    .A(iDataIn[1]),
    .B(_004_),
    .Y(_008_)
  );
  NAND _204_ (
    .A(\Ram[2] [1]),
    .B(_005_),
    .Y(_009_)
  );
  NAND _205_ (
    .A(_008_),
    .B(_009_),
    .Y(_111_)
  );
  NAND _206_ (
    .A(iDataIn[2]),
    .B(_004_),
    .Y(_010_)
  );
  NAND _207_ (
    .A(\Ram[2] [2]),
    .B(_005_),
    .Y(_011_)
  );
  NAND _208_ (
    .A(_010_),
    .B(_011_),
    .Y(_112_)
  );
  NAND _209_ (
    .A(iDataIn[3]),
    .B(_004_),
    .Y(_012_)
  );
  NAND _210_ (
    .A(\Ram[2] [3]),
    .B(_005_),
    .Y(_013_)
  );
  NAND _211_ (
    .A(_012_),
    .B(_013_),
    .Y(_113_)
  );
  NAND _212_ (
    .A(iDataIn[4]),
    .B(_004_),
    .Y(_015_)
  );
  NAND _213_ (
    .A(\Ram[2] [4]),
    .B(_005_),
    .Y(_016_)
  );
  NAND _214_ (
    .A(_015_),
    .B(_016_),
    .Y(_114_)
  );
  NAND _215_ (
    .A(iDataIn[5]),
    .B(_004_),
    .Y(_017_)
  );
  NAND _216_ (
    .A(\Ram[2] [5]),
    .B(_005_),
    .Y(_018_)
  );
  NAND _217_ (
    .A(_017_),
    .B(_018_),
    .Y(_115_)
  );
  NOR _218_ (
    .A(iWriteAddress[1]),
    .B(_138_),
    .Y(_019_)
  );
  NAND _219_ (
    .A(_137_),
    .B(_139_),
    .Y(_020_)
  );
  NAND _220_ (
    .A(iDataIn[0]),
    .B(_019_),
    .Y(_021_)
  );
  NAND _221_ (
    .A(\Ram[1] [0]),
    .B(_020_),
    .Y(_022_)
  );
  NAND _222_ (
    .A(_021_),
    .B(_022_),
    .Y(_117_)
  );
  NAND _223_ (
    .A(iDataIn[1]),
    .B(_019_),
    .Y(_023_)
  );
  NAND _224_ (
    .A(\Ram[1] [1]),
    .B(_020_),
    .Y(_024_)
  );
  NAND _225_ (
    .A(_023_),
    .B(_024_),
    .Y(_118_)
  );
  NAND _226_ (
    .A(iDataIn[2]),
    .B(_019_),
    .Y(_025_)
  );
  NAND _227_ (
    .A(\Ram[1] [2]),
    .B(_020_),
    .Y(_026_)
  );
  NAND _228_ (
    .A(_025_),
    .B(_026_),
    .Y(_119_)
  );
  NAND _229_ (
    .A(iDataIn[3]),
    .B(_019_),
    .Y(_027_)
  );
  NAND _230_ (
    .A(\Ram[1] [3]),
    .B(_020_),
    .Y(_028_)
  );
  NAND _231_ (
    .A(_027_),
    .B(_028_),
    .Y(_121_)
  );
  NAND _232_ (
    .A(iDataIn[4]),
    .B(_019_),
    .Y(_029_)
  );
  NAND _233_ (
    .A(\Ram[1] [4]),
    .B(_020_),
    .Y(_030_)
  );
  NAND _234_ (
    .A(_029_),
    .B(_030_),
    .Y(_123_)
  );
  NAND _235_ (
    .A(iDataIn[5]),
    .B(_019_),
    .Y(_031_)
  );
  NAND _236_ (
    .A(\Ram[1] [5]),
    .B(_020_),
    .Y(_032_)
  );
  NAND _237_ (
    .A(_031_),
    .B(_032_),
    .Y(_125_)
  );
  NOR _238_ (
    .A(\Ram[2] [0]),
    .B(iReadAddress[0]),
    .Y(_033_)
  );
  NAND _239_ (
    .A(_120_),
    .B(iReadAddress[0]),
    .Y(_034_)
  );
  NAND _240_ (
    .A(iReadAddress[1]),
    .B(_034_),
    .Y(_035_)
  );
  NOR _241_ (
    .A(_033_),
    .B(_035_),
    .Y(_036_)
  );
  NAND _242_ (
    .A(\Ram[1] [0]),
    .B(iReadAddress[0]),
    .Y(_038_)
  );
  NOT _243_ (
    .A(_038_),
    .Y(_039_)
  );
  NOR _244_ (
    .A(_129_),
    .B(iReadAddress[0]),
    .Y(_040_)
  );
  NOR _245_ (
    .A(_039_),
    .B(_040_),
    .Y(_041_)
  );
  NOR _246_ (
    .A(iReadAddress[1]),
    .B(_041_),
    .Y(_042_)
  );
  NOR _247_ (
    .A(_036_),
    .B(_042_),
    .Y(_043_)
  );
  NOR _248_ (
    .A(_135_),
    .B(_043_),
    .Y(oDataOut[0])
  );
  NOR _249_ (
    .A(\Ram[2] [1]),
    .B(iReadAddress[0]),
    .Y(_044_)
  );
  NAND _250_ (
    .A(_122_),
    .B(iReadAddress[0]),
    .Y(_045_)
  );
  NAND _251_ (
    .A(iReadAddress[1]),
    .B(_045_),
    .Y(_046_)
  );
  NOR _252_ (
    .A(_044_),
    .B(_046_),
    .Y(_047_)
  );
  NAND _253_ (
    .A(iReadAddress[0]),
    .B(\Ram[1] [1]),
    .Y(_048_)
  );
  NOT _254_ (
    .A(_048_),
    .Y(_049_)
  );
  NOR _255_ (
    .A(iReadAddress[0]),
    .B(_130_),
    .Y(_050_)
  );
  NOR _256_ (
    .A(_049_),
    .B(_050_),
    .Y(_051_)
  );
  NOR _257_ (
    .A(iReadAddress[1]),
    .B(_051_),
    .Y(_052_)
  );
  NOR _258_ (
    .A(_047_),
    .B(_052_),
    .Y(_053_)
  );
  NOR _259_ (
    .A(_135_),
    .B(_053_),
    .Y(oDataOut[1])
  );
  NOR _260_ (
    .A(\Ram[2] [2]),
    .B(iReadAddress[0]),
    .Y(_054_)
  );
  NAND _261_ (
    .A(_124_),
    .B(iReadAddress[0]),
    .Y(_055_)
  );
  NAND _262_ (
    .A(iReadAddress[1]),
    .B(_055_),
    .Y(_056_)
  );
  NOR _263_ (
    .A(_054_),
    .B(_056_),
    .Y(_057_)
  );
  NAND _264_ (
    .A(iReadAddress[0]),
    .B(\Ram[1] [2]),
    .Y(_058_)
  );
  NOT _265_ (
    .A(_058_),
    .Y(_059_)
  );
  NOR _266_ (
    .A(iReadAddress[0]),
    .B(_131_),
    .Y(_060_)
  );
  NOR _267_ (
    .A(_059_),
    .B(_060_),
    .Y(_061_)
  );
  NOR _268_ (
    .A(iReadAddress[1]),
    .B(_061_),
    .Y(_062_)
  );
  NOR _269_ (
    .A(_057_),
    .B(_062_),
    .Y(_063_)
  );
  NOR _270_ (
    .A(_135_),
    .B(_063_),
    .Y(oDataOut[2])
  );
  NOR _271_ (
    .A(\Ram[2] [3]),
    .B(iReadAddress[0]),
    .Y(_064_)
  );
  NAND _272_ (
    .A(_126_),
    .B(iReadAddress[0]),
    .Y(_066_)
  );
  NAND _273_ (
    .A(iReadAddress[1]),
    .B(_066_),
    .Y(_067_)
  );
  NOR _274_ (
    .A(_064_),
    .B(_067_),
    .Y(_068_)
  );
  NAND _275_ (
    .A(iReadAddress[0]),
    .B(\Ram[1] [3]),
    .Y(_069_)
  );
  NOT _276_ (
    .A(_069_),
    .Y(_070_)
  );
  NOR _277_ (
    .A(iReadAddress[0]),
    .B(_132_),
    .Y(_071_)
  );
  NOR _278_ (
    .A(_070_),
    .B(_071_),
    .Y(_072_)
  );
  NOR _279_ (
    .A(iReadAddress[1]),
    .B(_072_),
    .Y(_073_)
  );
  NOR _280_ (
    .A(_068_),
    .B(_073_),
    .Y(_074_)
  );
  NOR _281_ (
    .A(_135_),
    .B(_074_),
    .Y(oDataOut[3])
  );
  NOR _282_ (
    .A(\Ram[2] [4]),
    .B(iReadAddress[0]),
    .Y(_075_)
  );
  NAND _283_ (
    .A(_127_),
    .B(iReadAddress[0]),
    .Y(_076_)
  );
  NAND _284_ (
    .A(iReadAddress[1]),
    .B(_076_),
    .Y(_077_)
  );
  NOR _285_ (
    .A(_075_),
    .B(_077_),
    .Y(_078_)
  );
  NAND _286_ (
    .A(iReadAddress[0]),
    .B(\Ram[1] [4]),
    .Y(_079_)
  );
  NOT _287_ (
    .A(_079_),
    .Y(_080_)
  );
  NOR _288_ (
    .A(iReadAddress[0]),
    .B(_133_),
    .Y(_081_)
  );
  NOR _289_ (
    .A(_080_),
    .B(_081_),
    .Y(_082_)
  );
  NOR _290_ (
    .A(iReadAddress[1]),
    .B(_082_),
    .Y(_083_)
  );
  NOR _291_ (
    .A(_078_),
    .B(_083_),
    .Y(_084_)
  );
  NOR _292_ (
    .A(_135_),
    .B(_084_),
    .Y(oDataOut[4])
  );
  NOR _293_ (
    .A(\Ram[2] [5]),
    .B(iReadAddress[0]),
    .Y(_085_)
  );
  NAND _294_ (
    .A(_128_),
    .B(iReadAddress[0]),
    .Y(_086_)
  );
  NAND _295_ (
    .A(iReadAddress[1]),
    .B(_086_),
    .Y(_087_)
  );
  NOR _296_ (
    .A(_085_),
    .B(_087_),
    .Y(_088_)
  );
  NAND _297_ (
    .A(iReadAddress[0]),
    .B(\Ram[1] [5]),
    .Y(_089_)
  );
  NOT _298_ (
    .A(_089_),
    .Y(_090_)
  );
  NOR _299_ (
    .A(iReadAddress[0]),
    .B(_134_),
    .Y(_091_)
  );
  NOR _300_ (
    .A(_090_),
    .B(_091_),
    .Y(_092_)
  );
  NOR _301_ (
    .A(iReadAddress[1]),
    .B(_092_),
    .Y(_093_)
  );
  NOR _302_ (
    .A(_088_),
    .B(_093_),
    .Y(_094_)
  );
  NOR _303_ (
    .A(_135_),
    .B(_094_),
    .Y(oDataOut[5])
  );
  NOR _304_ (
    .A(iWriteAddress[1]),
    .B(_003_),
    .Y(_095_)
  );
  NAND _305_ (
    .A(_137_),
    .B(_002_),
    .Y(_096_)
  );
  NAND _306_ (
    .A(iDataIn[0]),
    .B(_095_),
    .Y(_097_)
  );
  NAND _307_ (
    .A(\Ram[0] [0]),
    .B(_096_),
    .Y(_098_)
  );
  NAND _308_ (
    .A(_097_),
    .B(_098_),
    .Y(_147_)
  );
  NAND _309_ (
    .A(iDataIn[1]),
    .B(_095_),
    .Y(_099_)
  );
  NAND _310_ (
    .A(\Ram[0] [1]),
    .B(_096_),
    .Y(_100_)
  );
  NAND _311_ (
    .A(_099_),
    .B(_100_),
    .Y(_149_)
  );
  NAND _312_ (
    .A(iDataIn[2]),
    .B(_095_),
    .Y(_101_)
  );
  NAND _313_ (
    .A(\Ram[0] [2]),
    .B(_096_),
    .Y(_102_)
  );
  NAND _314_ (
    .A(_101_),
    .B(_102_),
    .Y(_151_)
  );
  NAND _315_ (
    .A(iDataIn[3]),
    .B(_095_),
    .Y(_103_)
  );
  NAND _316_ (
    .A(\Ram[0] [3]),
    .B(_096_),
    .Y(_104_)
  );
  NAND _317_ (
    .A(_103_),
    .B(_104_),
    .Y(_152_)
  );
  NAND _318_ (
    .A(iDataIn[4]),
    .B(_095_),
    .Y(_105_)
  );
  NAND _319_ (
    .A(\Ram[0] [4]),
    .B(_096_),
    .Y(_106_)
  );
  NAND _320_ (
    .A(_105_),
    .B(_106_),
    .Y(_154_)
  );
  NAND _321_ (
    .A(iDataIn[5]),
    .B(_095_),
    .Y(_107_)
  );
  NAND _322_ (
    .A(\Ram[0] [5]),
    .B(_096_),
    .Y(_108_)
  );
  NAND _323_ (
    .A(_107_),
    .B(_108_),
    .Y(_156_)
  );
  DFF _324_ (
    .C(Clock),
    .D(_147_),
    .Q(\Ram[0] [0])
  );
  DFF _325_ (
    .C(Clock),
    .D(_149_),
    .Q(\Ram[0] [1])
  );
  DFF _326_ (
    .C(Clock),
    .D(_151_),
    .Q(\Ram[0] [2])
  );
  DFF _327_ (
    .C(Clock),
    .D(_152_),
    .Q(\Ram[0] [3])
  );
  DFF _328_ (
    .C(Clock),
    .D(_154_),
    .Q(\Ram[0] [4])
  );
  DFF _329_ (
    .C(Clock),
    .D(_156_),
    .Q(\Ram[0] [5])
  );
  DFF _330_ (
    .C(Clock),
    .D(_117_),
    .Q(\Ram[1] [0])
  );
  DFF _331_ (
    .C(Clock),
    .D(_118_),
    .Q(\Ram[1] [1])
  );
  DFF _332_ (
    .C(Clock),
    .D(_119_),
    .Q(\Ram[1] [2])
  );
  DFF _333_ (
    .C(Clock),
    .D(_121_),
    .Q(\Ram[1] [3])
  );
  DFF _334_ (
    .C(Clock),
    .D(_123_),
    .Q(\Ram[1] [4])
  );
  DFF _335_ (
    .C(Clock),
    .D(_125_),
    .Q(\Ram[1] [5])
  );
  DFF _336_ (
    .C(Clock),
    .D(_110_),
    .Q(\Ram[2] [0])
  );
  DFF _337_ (
    .C(Clock),
    .D(_111_),
    .Q(\Ram[2] [1])
  );
  DFF _338_ (
    .C(Clock),
    .D(_112_),
    .Q(\Ram[2] [2])
  );
  DFF _339_ (
    .C(Clock),
    .D(_113_),
    .Q(\Ram[2] [3])
  );
  DFF _340_ (
    .C(Clock),
    .D(_114_),
    .Q(\Ram[2] [4])
  );
  DFF _341_ (
    .C(Clock),
    .D(_115_),
    .Q(\Ram[2] [5])
  );
  DFF _342_ (
    .C(Clock),
    .D(_109_),
    .Q(\Ram[3] [0])
  );
  DFF _343_ (
    .C(Clock),
    .D(_116_),
    .Q(\Ram[3] [1])
  );
  DFF _344_ (
    .C(Clock),
    .D(_145_),
    .Q(\Ram[3] [2])
  );
  DFF _345_ (
    .C(Clock),
    .D(_014_),
    .Q(\Ram[3] [3])
  );
  DFF _346_ (
    .C(Clock),
    .D(_037_),
    .Q(\Ram[3] [4])
  );
  DFF _347_ (
    .C(Clock),
    .D(_065_),
    .Q(\Ram[3] [5])
  );
endmodule

module fifoSynth(clk, reset_L, push, pop, Fifo_Data_in, Fifo_Data_out, Almost_Empty, Almost_Full, Pausa, Fifo_Empty, Fifo_Full, Error_Fifo);
  wire [1:0] _00_;
  wire [1:0] _01_;
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
  output Almost_Empty;
  output Almost_Full;
  output Error_Fifo;
  input [5:0] Fifo_Data_in;
  output [5:0] Fifo_Data_out;
  output Fifo_Empty;
  output Fifo_Full;
  output Pausa;
  input clk;
  input pop;
  input push;
  wire [1:0] rd_ptr;
  input reset_L;
  wire [1:0] wr_ptr;
  NAND _21_ (
    .A(push),
    .B(pop),
    .Y(_02_)
  );
  NOT _22_ (
    .A(_02_),
    .Y(_03_)
  );
  NOR _23_ (
    .A(reset_L),
    .B(_03_),
    .Y(_04_)
  );
  NAND _24_ (
    .A(pop),
    .B(rd_ptr[0]),
    .Y(_05_)
  );
  NOR _25_ (
    .A(pop),
    .B(rd_ptr[0]),
    .Y(_06_)
  );
  NOT _26_ (
    .A(_06_),
    .Y(_07_)
  );
  NAND _27_ (
    .A(_05_),
    .B(_07_),
    .Y(_08_)
  );
  NOR _28_ (
    .A(_04_),
    .B(_08_),
    .Y(_00_[0])
  );
  NAND _29_ (
    .A(rd_ptr[1]),
    .B(_05_),
    .Y(_09_)
  );
  NOT _30_ (
    .A(_09_),
    .Y(_10_)
  );
  NOR _31_ (
    .A(rd_ptr[1]),
    .B(_05_),
    .Y(_11_)
  );
  NOR _32_ (
    .A(_10_),
    .B(_11_),
    .Y(_12_)
  );
  NOR _33_ (
    .A(_04_),
    .B(_12_),
    .Y(_00_[1])
  );
  NOR _34_ (
    .A(push),
    .B(wr_ptr[0]),
    .Y(_13_)
  );
  NOT _35_ (
    .A(_13_),
    .Y(_14_)
  );
  NAND _36_ (
    .A(push),
    .B(wr_ptr[0]),
    .Y(_15_)
  );
  NAND _37_ (
    .A(_14_),
    .B(_15_),
    .Y(_16_)
  );
  NOR _38_ (
    .A(_04_),
    .B(_16_),
    .Y(_01_[0])
  );
  NAND _39_ (
    .A(wr_ptr[1]),
    .B(_15_),
    .Y(_17_)
  );
  NOT _40_ (
    .A(_17_),
    .Y(_18_)
  );
  NOR _41_ (
    .A(wr_ptr[1]),
    .B(_15_),
    .Y(_19_)
  );
  NOR _42_ (
    .A(_18_),
    .B(_19_),
    .Y(_20_)
  );
  NOR _43_ (
    .A(_04_),
    .B(_20_),
    .Y(_01_[1])
  );
  DFF _44_ (
    .C(clk),
    .D(_01_[0]),
    .Q(wr_ptr[0])
  );
  DFF _45_ (
    .C(clk),
    .D(_01_[1]),
    .Q(wr_ptr[1])
  );
  DFF _46_ (
    .C(clk),
    .D(_00_[0]),
    .Q(rd_ptr[0])
  );
  DFF _47_ (
    .C(clk),
    .D(_00_[1]),
    .Q(rd_ptr[1])
  );
  \$paramod\dual_port_memory_Synth\DATA_WIDTH=6\ADDR_WIDTH=2\MEM_SIZE=3  memoria (
    .Clock(clk),
    .iDataIn(Fifo_Data_in),
    .iReadAddress(rd_ptr),
    .iReadEnable(pop),
    .iWriteAddress(wr_ptr),
    .iWriteEnable(push),
    .oDataOut(Fifo_Data_out)
  );
  assign Almost_Empty = 1'h0;
  assign Almost_Full = 1'h0;
  assign Error_Fifo = 1'h0;
  assign Fifo_Empty = 1'h1;
  assign Fifo_Full = 1'h0;
  assign Pausa = 1'h0;
endmodule
