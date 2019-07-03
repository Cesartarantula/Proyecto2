/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-zWLHjG/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

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
  wire _159_;
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
  NOT _160_ (
    .A(iWriteAddress[1]),
    .Y(_127_)
  );
  NOT _161_ (
    .A(iWriteAddress[0]),
    .Y(_128_)
  );
  NAND _162_ (
    .A(_128_),
    .B(iWriteEnable),
    .Y(_129_)
  );
  NOR _163_ (
    .A(_129_),
    .B(_127_),
    .Y(_130_)
  );
  NAND _164_ (
    .A(_130_),
    .B(iDataIn[0]),
    .Y(_131_)
  );
  NOT _165_ (
    .A(iWriteEnable),
    .Y(_132_)
  );
  NOR _166_ (
    .A(iWriteAddress[0]),
    .B(_132_),
    .Y(_133_)
  );
  NAND _167_ (
    .A(_133_),
    .B(iWriteAddress[1]),
    .Y(_134_)
  );
  NAND _168_ (
    .A(_134_),
    .B(\Ram[2] [0]),
    .Y(_135_)
  );
  NAND _169_ (
    .A(_135_),
    .B(_131_),
    .Y(_113_)
  );
  NAND _170_ (
    .A(_130_),
    .B(iDataIn[1]),
    .Y(_136_)
  );
  NAND _171_ (
    .A(_134_),
    .B(\Ram[2] [1]),
    .Y(_137_)
  );
  NAND _172_ (
    .A(_137_),
    .B(_136_),
    .Y(_121_)
  );
  NAND _173_ (
    .A(_130_),
    .B(iDataIn[2]),
    .Y(_138_)
  );
  NAND _174_ (
    .A(_134_),
    .B(\Ram[2] [2]),
    .Y(_139_)
  );
  NAND _175_ (
    .A(_139_),
    .B(_138_),
    .Y(_145_)
  );
  NAND _176_ (
    .A(_130_),
    .B(iDataIn[3]),
    .Y(_140_)
  );
  NAND _177_ (
    .A(_134_),
    .B(\Ram[2] [3]),
    .Y(_141_)
  );
  NAND _178_ (
    .A(_141_),
    .B(_140_),
    .Y(_014_)
  );
  NAND _179_ (
    .A(_130_),
    .B(iDataIn[4]),
    .Y(_142_)
  );
  NAND _180_ (
    .A(_134_),
    .B(\Ram[2] [4]),
    .Y(_143_)
  );
  NAND _181_ (
    .A(_143_),
    .B(_142_),
    .Y(_039_)
  );
  NAND _182_ (
    .A(_130_),
    .B(iDataIn[5]),
    .Y(_144_)
  );
  NAND _183_ (
    .A(_134_),
    .B(\Ram[2] [5]),
    .Y(_146_)
  );
  NAND _184_ (
    .A(_146_),
    .B(_144_),
    .Y(_068_)
  );
  NAND _185_ (
    .A(iWriteAddress[0]),
    .B(iWriteEnable),
    .Y(_148_)
  );
  NOR _186_ (
    .A(_148_),
    .B(iWriteAddress[1]),
    .Y(_150_)
  );
  NAND _187_ (
    .A(_150_),
    .B(iDataIn[0]),
    .Y(_152_)
  );
  NOT _188_ (
    .A(_150_),
    .Y(_154_)
  );
  NAND _189_ (
    .A(_154_),
    .B(\Ram[1] [0]),
    .Y(_156_)
  );
  NAND _190_ (
    .A(_156_),
    .B(_152_),
    .Y(_114_)
  );
  NAND _191_ (
    .A(_150_),
    .B(iDataIn[1]),
    .Y(_158_)
  );
  NAND _192_ (
    .A(_154_),
    .B(\Ram[1] [1]),
    .Y(_159_)
  );
  NAND _193_ (
    .A(_159_),
    .B(_158_),
    .Y(_115_)
  );
  NAND _194_ (
    .A(_150_),
    .B(iDataIn[2]),
    .Y(_000_)
  );
  NAND _195_ (
    .A(_154_),
    .B(\Ram[1] [2]),
    .Y(_001_)
  );
  NAND _196_ (
    .A(_001_),
    .B(_000_),
    .Y(_116_)
  );
  NAND _197_ (
    .A(_150_),
    .B(iDataIn[3]),
    .Y(_002_)
  );
  NAND _198_ (
    .A(_154_),
    .B(\Ram[1] [3]),
    .Y(_003_)
  );
  NAND _199_ (
    .A(_003_),
    .B(_002_),
    .Y(_117_)
  );
  NAND _200_ (
    .A(_150_),
    .B(iDataIn[4]),
    .Y(_004_)
  );
  NAND _201_ (
    .A(_154_),
    .B(\Ram[1] [4]),
    .Y(_005_)
  );
  NAND _202_ (
    .A(_005_),
    .B(_004_),
    .Y(_118_)
  );
  NAND _203_ (
    .A(_150_),
    .B(iDataIn[5]),
    .Y(_006_)
  );
  NAND _204_ (
    .A(_154_),
    .B(\Ram[1] [5]),
    .Y(_007_)
  );
  NAND _205_ (
    .A(_007_),
    .B(_006_),
    .Y(_119_)
  );
  NOR _206_ (
    .A(_129_),
    .B(iWriteAddress[1]),
    .Y(_008_)
  );
  NAND _207_ (
    .A(_008_),
    .B(iDataIn[0]),
    .Y(_009_)
  );
  NAND _208_ (
    .A(_133_),
    .B(_127_),
    .Y(_010_)
  );
  NAND _209_ (
    .A(_010_),
    .B(\Ram[0] [0]),
    .Y(_011_)
  );
  NAND _210_ (
    .A(_011_),
    .B(_009_),
    .Y(_120_)
  );
  NAND _211_ (
    .A(_008_),
    .B(iDataIn[1]),
    .Y(_012_)
  );
  NAND _212_ (
    .A(_010_),
    .B(\Ram[0] [1]),
    .Y(_013_)
  );
  NAND _213_ (
    .A(_013_),
    .B(_012_),
    .Y(_122_)
  );
  NAND _214_ (
    .A(_008_),
    .B(iDataIn[2]),
    .Y(_015_)
  );
  NAND _215_ (
    .A(_010_),
    .B(\Ram[0] [2]),
    .Y(_016_)
  );
  NAND _216_ (
    .A(_016_),
    .B(_015_),
    .Y(_123_)
  );
  NAND _217_ (
    .A(_008_),
    .B(iDataIn[3]),
    .Y(_017_)
  );
  NAND _218_ (
    .A(_010_),
    .B(\Ram[0] [3]),
    .Y(_018_)
  );
  NAND _219_ (
    .A(_018_),
    .B(_017_),
    .Y(_124_)
  );
  NAND _220_ (
    .A(_008_),
    .B(iDataIn[4]),
    .Y(_019_)
  );
  NAND _221_ (
    .A(_010_),
    .B(\Ram[0] [4]),
    .Y(_020_)
  );
  NAND _222_ (
    .A(_020_),
    .B(_019_),
    .Y(_125_)
  );
  NAND _223_ (
    .A(_008_),
    .B(iDataIn[5]),
    .Y(_021_)
  );
  NAND _224_ (
    .A(_010_),
    .B(\Ram[0] [5]),
    .Y(_022_)
  );
  NAND _225_ (
    .A(_022_),
    .B(_021_),
    .Y(_126_)
  );
  NOT _226_ (
    .A(iReadEnable),
    .Y(_023_)
  );
  NOR _227_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [0]),
    .Y(_024_)
  );
  NOT _228_ (
    .A(\Ram[3] [0]),
    .Y(_025_)
  );
  NAND _229_ (
    .A(_025_),
    .B(iReadAddress[0]),
    .Y(_026_)
  );
  NAND _230_ (
    .A(_026_),
    .B(iReadAddress[1]),
    .Y(_027_)
  );
  NOR _231_ (
    .A(_027_),
    .B(_024_),
    .Y(_028_)
  );
  NOT _232_ (
    .A(\Ram[1] [0]),
    .Y(_029_)
  );
  NOT _233_ (
    .A(iReadAddress[0]),
    .Y(_030_)
  );
  NOR _234_ (
    .A(_030_),
    .B(_029_),
    .Y(_031_)
  );
  NOT _235_ (
    .A(\Ram[0] [0]),
    .Y(_032_)
  );
  NOR _236_ (
    .A(iReadAddress[0]),
    .B(_032_),
    .Y(_033_)
  );
  NOR _237_ (
    .A(_033_),
    .B(_031_),
    .Y(_034_)
  );
  NOR _238_ (
    .A(_034_),
    .B(iReadAddress[1]),
    .Y(_035_)
  );
  NOR _239_ (
    .A(_035_),
    .B(_028_),
    .Y(_036_)
  );
  NOR _240_ (
    .A(_036_),
    .B(_023_),
    .Y(oDataOut[0])
  );
  NOR _241_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [1]),
    .Y(_037_)
  );
  NOT _242_ (
    .A(\Ram[3] [1]),
    .Y(_038_)
  );
  NAND _243_ (
    .A(_038_),
    .B(iReadAddress[0]),
    .Y(_040_)
  );
  NAND _244_ (
    .A(_040_),
    .B(iReadAddress[1]),
    .Y(_041_)
  );
  NOR _245_ (
    .A(_041_),
    .B(_037_),
    .Y(_042_)
  );
  NOT _246_ (
    .A(\Ram[1] [1]),
    .Y(_043_)
  );
  NOR _247_ (
    .A(_030_),
    .B(_043_),
    .Y(_044_)
  );
  NOT _248_ (
    .A(\Ram[0] [1]),
    .Y(_045_)
  );
  NOR _249_ (
    .A(_045_),
    .B(iReadAddress[0]),
    .Y(_046_)
  );
  NOR _250_ (
    .A(_046_),
    .B(_044_),
    .Y(_047_)
  );
  NOR _251_ (
    .A(_047_),
    .B(iReadAddress[1]),
    .Y(_048_)
  );
  NOR _252_ (
    .A(_048_),
    .B(_042_),
    .Y(_049_)
  );
  NOR _253_ (
    .A(_049_),
    .B(_023_),
    .Y(oDataOut[1])
  );
  NOR _254_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [2]),
    .Y(_050_)
  );
  NOT _255_ (
    .A(\Ram[3] [2]),
    .Y(_051_)
  );
  NAND _256_ (
    .A(_051_),
    .B(iReadAddress[0]),
    .Y(_052_)
  );
  NAND _257_ (
    .A(_052_),
    .B(iReadAddress[1]),
    .Y(_053_)
  );
  NOR _258_ (
    .A(_053_),
    .B(_050_),
    .Y(_054_)
  );
  NOT _259_ (
    .A(\Ram[1] [2]),
    .Y(_055_)
  );
  NOR _260_ (
    .A(_030_),
    .B(_055_),
    .Y(_056_)
  );
  NOT _261_ (
    .A(\Ram[0] [2]),
    .Y(_057_)
  );
  NOR _262_ (
    .A(_057_),
    .B(iReadAddress[0]),
    .Y(_058_)
  );
  NOR _263_ (
    .A(_058_),
    .B(_056_),
    .Y(_059_)
  );
  NOR _264_ (
    .A(_059_),
    .B(iReadAddress[1]),
    .Y(_060_)
  );
  NOR _265_ (
    .A(_060_),
    .B(_054_),
    .Y(_061_)
  );
  NOR _266_ (
    .A(_061_),
    .B(_023_),
    .Y(oDataOut[2])
  );
  NOR _267_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [3]),
    .Y(_062_)
  );
  NOT _268_ (
    .A(\Ram[3] [3]),
    .Y(_063_)
  );
  NAND _269_ (
    .A(_063_),
    .B(iReadAddress[0]),
    .Y(_064_)
  );
  NAND _270_ (
    .A(_064_),
    .B(iReadAddress[1]),
    .Y(_065_)
  );
  NOR _271_ (
    .A(_065_),
    .B(_062_),
    .Y(_066_)
  );
  NOT _272_ (
    .A(\Ram[1] [3]),
    .Y(_067_)
  );
  NOR _273_ (
    .A(_030_),
    .B(_067_),
    .Y(_069_)
  );
  NOT _274_ (
    .A(\Ram[0] [3]),
    .Y(_070_)
  );
  NOR _275_ (
    .A(_070_),
    .B(iReadAddress[0]),
    .Y(_071_)
  );
  NOR _276_ (
    .A(_071_),
    .B(_069_),
    .Y(_072_)
  );
  NOR _277_ (
    .A(_072_),
    .B(iReadAddress[1]),
    .Y(_073_)
  );
  NOR _278_ (
    .A(_073_),
    .B(_066_),
    .Y(_074_)
  );
  NOR _279_ (
    .A(_074_),
    .B(_023_),
    .Y(oDataOut[3])
  );
  NOR _280_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [4]),
    .Y(_075_)
  );
  NOT _281_ (
    .A(\Ram[3] [4]),
    .Y(_076_)
  );
  NAND _282_ (
    .A(_076_),
    .B(iReadAddress[0]),
    .Y(_077_)
  );
  NAND _283_ (
    .A(_077_),
    .B(iReadAddress[1]),
    .Y(_078_)
  );
  NOR _284_ (
    .A(_078_),
    .B(_075_),
    .Y(_079_)
  );
  NOT _285_ (
    .A(\Ram[1] [4]),
    .Y(_080_)
  );
  NOR _286_ (
    .A(_030_),
    .B(_080_),
    .Y(_081_)
  );
  NOT _287_ (
    .A(\Ram[0] [4]),
    .Y(_082_)
  );
  NOR _288_ (
    .A(_082_),
    .B(iReadAddress[0]),
    .Y(_083_)
  );
  NOR _289_ (
    .A(_083_),
    .B(_081_),
    .Y(_084_)
  );
  NOR _290_ (
    .A(_084_),
    .B(iReadAddress[1]),
    .Y(_085_)
  );
  NOR _291_ (
    .A(_085_),
    .B(_079_),
    .Y(_086_)
  );
  NOR _292_ (
    .A(_086_),
    .B(_023_),
    .Y(oDataOut[4])
  );
  NOR _293_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [5]),
    .Y(_087_)
  );
  NOT _294_ (
    .A(\Ram[3] [5]),
    .Y(_088_)
  );
  NAND _295_ (
    .A(_088_),
    .B(iReadAddress[0]),
    .Y(_089_)
  );
  NAND _296_ (
    .A(_089_),
    .B(iReadAddress[1]),
    .Y(_090_)
  );
  NOR _297_ (
    .A(_090_),
    .B(_087_),
    .Y(_091_)
  );
  NOT _298_ (
    .A(\Ram[1] [5]),
    .Y(_092_)
  );
  NOR _299_ (
    .A(_030_),
    .B(_092_),
    .Y(_093_)
  );
  NOT _300_ (
    .A(\Ram[0] [5]),
    .Y(_094_)
  );
  NOR _301_ (
    .A(_094_),
    .B(iReadAddress[0]),
    .Y(_095_)
  );
  NOR _302_ (
    .A(_095_),
    .B(_093_),
    .Y(_096_)
  );
  NOR _303_ (
    .A(_096_),
    .B(iReadAddress[1]),
    .Y(_097_)
  );
  NOR _304_ (
    .A(_097_),
    .B(_091_),
    .Y(_098_)
  );
  NOR _305_ (
    .A(_098_),
    .B(_023_),
    .Y(oDataOut[5])
  );
  NOR _306_ (
    .A(_148_),
    .B(_127_),
    .Y(_099_)
  );
  NAND _307_ (
    .A(_099_),
    .B(iDataIn[0]),
    .Y(_100_)
  );
  NOT _308_ (
    .A(_099_),
    .Y(_101_)
  );
  NAND _309_ (
    .A(_101_),
    .B(\Ram[3] [0]),
    .Y(_102_)
  );
  NAND _310_ (
    .A(_102_),
    .B(_100_),
    .Y(_147_)
  );
  NAND _311_ (
    .A(_099_),
    .B(iDataIn[1]),
    .Y(_103_)
  );
  NAND _312_ (
    .A(_101_),
    .B(\Ram[3] [1]),
    .Y(_104_)
  );
  NAND _313_ (
    .A(_104_),
    .B(_103_),
    .Y(_149_)
  );
  NAND _314_ (
    .A(_099_),
    .B(iDataIn[2]),
    .Y(_105_)
  );
  NAND _315_ (
    .A(_101_),
    .B(\Ram[3] [2]),
    .Y(_106_)
  );
  NAND _316_ (
    .A(_106_),
    .B(_105_),
    .Y(_151_)
  );
  NAND _317_ (
    .A(_099_),
    .B(iDataIn[3]),
    .Y(_107_)
  );
  NAND _318_ (
    .A(_101_),
    .B(\Ram[3] [3]),
    .Y(_108_)
  );
  NAND _319_ (
    .A(_108_),
    .B(_107_),
    .Y(_153_)
  );
  NAND _320_ (
    .A(_099_),
    .B(iDataIn[4]),
    .Y(_109_)
  );
  NAND _321_ (
    .A(_101_),
    .B(\Ram[3] [4]),
    .Y(_110_)
  );
  NAND _322_ (
    .A(_110_),
    .B(_109_),
    .Y(_155_)
  );
  NAND _323_ (
    .A(_099_),
    .B(iDataIn[5]),
    .Y(_111_)
  );
  NAND _324_ (
    .A(_101_),
    .B(\Ram[3] [5]),
    .Y(_112_)
  );
  NAND _325_ (
    .A(_112_),
    .B(_111_),
    .Y(_157_)
  );
  DFF _326_ (
    .C(Clock),
    .D(_120_),
    .Q(\Ram[0] [0])
  );
  DFF _327_ (
    .C(Clock),
    .D(_122_),
    .Q(\Ram[0] [1])
  );
  DFF _328_ (
    .C(Clock),
    .D(_123_),
    .Q(\Ram[0] [2])
  );
  DFF _329_ (
    .C(Clock),
    .D(_124_),
    .Q(\Ram[0] [3])
  );
  DFF _330_ (
    .C(Clock),
    .D(_125_),
    .Q(\Ram[0] [4])
  );
  DFF _331_ (
    .C(Clock),
    .D(_126_),
    .Q(\Ram[0] [5])
  );
  DFF _332_ (
    .C(Clock),
    .D(_114_),
    .Q(\Ram[1] [0])
  );
  DFF _333_ (
    .C(Clock),
    .D(_115_),
    .Q(\Ram[1] [1])
  );
  DFF _334_ (
    .C(Clock),
    .D(_116_),
    .Q(\Ram[1] [2])
  );
  DFF _335_ (
    .C(Clock),
    .D(_117_),
    .Q(\Ram[1] [3])
  );
  DFF _336_ (
    .C(Clock),
    .D(_118_),
    .Q(\Ram[1] [4])
  );
  DFF _337_ (
    .C(Clock),
    .D(_119_),
    .Q(\Ram[1] [5])
  );
  DFF _338_ (
    .C(Clock),
    .D(_113_),
    .Q(\Ram[2] [0])
  );
  DFF _339_ (
    .C(Clock),
    .D(_121_),
    .Q(\Ram[2] [1])
  );
  DFF _340_ (
    .C(Clock),
    .D(_145_),
    .Q(\Ram[2] [2])
  );
  DFF _341_ (
    .C(Clock),
    .D(_014_),
    .Q(\Ram[2] [3])
  );
  DFF _342_ (
    .C(Clock),
    .D(_039_),
    .Q(\Ram[2] [4])
  );
  DFF _343_ (
    .C(Clock),
    .D(_068_),
    .Q(\Ram[2] [5])
  );
  DFF _344_ (
    .C(Clock),
    .D(_147_),
    .Q(\Ram[3] [0])
  );
  DFF _345_ (
    .C(Clock),
    .D(_149_),
    .Q(\Ram[3] [1])
  );
  DFF _346_ (
    .C(Clock),
    .D(_151_),
    .Q(\Ram[3] [2])
  );
  DFF _347_ (
    .C(Clock),
    .D(_153_),
    .Q(\Ram[3] [3])
  );
  DFF _348_ (
    .C(Clock),
    .D(_155_),
    .Q(\Ram[3] [4])
  );
  DFF _349_ (
    .C(Clock),
    .D(_157_),
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
  output [1:0] Almost_Empty;
  output [1:0] Almost_Full;
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
  NOT _20_ (
    .A(pop),
    .Y(_02_)
  );
  NOT _21_ (
    .A(rd_ptr[0]),
    .Y(_03_)
  );
  NOR _22_ (
    .A(_03_),
    .B(_02_),
    .Y(_04_)
  );
  NOT _23_ (
    .A(reset_L),
    .Y(_05_)
  );
  NAND _24_ (
    .A(pop),
    .B(push),
    .Y(_06_)
  );
  NAND _25_ (
    .A(_06_),
    .B(_05_),
    .Y(_07_)
  );
  NAND _26_ (
    .A(_03_),
    .B(_02_),
    .Y(_08_)
  );
  NAND _27_ (
    .A(_08_),
    .B(_07_),
    .Y(_09_)
  );
  NOR _28_ (
    .A(_09_),
    .B(_04_),
    .Y(_00_[0])
  );
  NOR _29_ (
    .A(_04_),
    .B(rd_ptr[1]),
    .Y(_10_)
  );
  NAND _30_ (
    .A(_04_),
    .B(rd_ptr[1]),
    .Y(_11_)
  );
  NAND _31_ (
    .A(_11_),
    .B(_07_),
    .Y(_12_)
  );
  NOR _32_ (
    .A(_12_),
    .B(_10_),
    .Y(_00_[1])
  );
  NOR _33_ (
    .A(wr_ptr[0]),
    .B(push),
    .Y(_13_)
  );
  NAND _34_ (
    .A(wr_ptr[0]),
    .B(push),
    .Y(_14_)
  );
  NAND _35_ (
    .A(_14_),
    .B(_07_),
    .Y(_15_)
  );
  NOR _36_ (
    .A(_15_),
    .B(_13_),
    .Y(_01_[0])
  );
  NOT _37_ (
    .A(wr_ptr[1]),
    .Y(_16_)
  );
  NOR _38_ (
    .A(_14_),
    .B(_16_),
    .Y(_17_)
  );
  NAND _39_ (
    .A(_14_),
    .B(_16_),
    .Y(_18_)
  );
  NAND _40_ (
    .A(_18_),
    .B(_07_),
    .Y(_19_)
  );
  NOR _41_ (
    .A(_19_),
    .B(_17_),
    .Y(_01_[1])
  );
  DFF _42_ (
    .C(clk),
    .D(_01_[0]),
    .Q(wr_ptr[0])
  );
  DFF _43_ (
    .C(clk),
    .D(_01_[1]),
    .Q(wr_ptr[1])
  );
  DFF _44_ (
    .C(clk),
    .D(_00_[0]),
    .Q(rd_ptr[0])
  );
  DFF _45_ (
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
  assign Almost_Empty = 2'b00;
  assign Almost_Full = 2'b00;
  assign Error_Fifo = 1'b0;
  assign Fifo_Empty = 1'b1;
  assign Fifo_Full = 1'b0;
  assign Pausa = 1'b0;
endmodule
