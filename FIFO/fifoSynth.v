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
    .A(iWriteAddress[0]),
    .Y(_135_)
  );
  NAND _161_ (
    .A(iWriteAddress[1]),
    .B(iWriteEnable),
    .Y(_136_)
  );
  NOR _162_ (
    .A(_136_),
    .B(_135_),
    .Y(_137_)
  );
  NAND _163_ (
    .A(_137_),
    .B(iDataIn[0]),
    .Y(_138_)
  );
  NOT _164_ (
    .A(_137_),
    .Y(_139_)
  );
  NAND _165_ (
    .A(_139_),
    .B(\Ram[3] [0]),
    .Y(_140_)
  );
  NAND _166_ (
    .A(_140_),
    .B(_138_),
    .Y(_120_)
  );
  NAND _167_ (
    .A(_137_),
    .B(iDataIn[1]),
    .Y(_141_)
  );
  NAND _168_ (
    .A(_139_),
    .B(\Ram[3] [1]),
    .Y(_142_)
  );
  NAND _169_ (
    .A(_142_),
    .B(_141_),
    .Y(_134_)
  );
  NAND _170_ (
    .A(_137_),
    .B(iDataIn[2]),
    .Y(_143_)
  );
  NAND _171_ (
    .A(_139_),
    .B(\Ram[3] [2]),
    .Y(_144_)
  );
  NAND _172_ (
    .A(_144_),
    .B(_143_),
    .Y(_152_)
  );
  NAND _173_ (
    .A(_137_),
    .B(iDataIn[3]),
    .Y(_145_)
  );
  NAND _174_ (
    .A(_139_),
    .B(\Ram[3] [3]),
    .Y(_146_)
  );
  NAND _175_ (
    .A(_146_),
    .B(_145_),
    .Y(_015_)
  );
  NAND _176_ (
    .A(_137_),
    .B(iDataIn[4]),
    .Y(_147_)
  );
  NAND _177_ (
    .A(_139_),
    .B(\Ram[3] [4]),
    .Y(_148_)
  );
  NAND _178_ (
    .A(_148_),
    .B(_147_),
    .Y(_037_)
  );
  NAND _179_ (
    .A(_137_),
    .B(iDataIn[5]),
    .Y(_149_)
  );
  NAND _180_ (
    .A(_139_),
    .B(\Ram[3] [5]),
    .Y(_150_)
  );
  NAND _181_ (
    .A(_150_),
    .B(_149_),
    .Y(_066_)
  );
  NOR _182_ (
    .A(_136_),
    .B(iWriteAddress[0]),
    .Y(_151_)
  );
  NAND _183_ (
    .A(_151_),
    .B(iDataIn[0]),
    .Y(_153_)
  );
  NOT _184_ (
    .A(_151_),
    .Y(_154_)
  );
  NAND _185_ (
    .A(_154_),
    .B(\Ram[2] [0]),
    .Y(_155_)
  );
  NAND _186_ (
    .A(_155_),
    .B(_153_),
    .Y(_094_)
  );
  NAND _187_ (
    .A(_151_),
    .B(iDataIn[1]),
    .Y(_156_)
  );
  NAND _188_ (
    .A(_154_),
    .B(\Ram[2] [1]),
    .Y(_157_)
  );
  NAND _189_ (
    .A(_157_),
    .B(_156_),
    .Y(_114_)
  );
  NAND _190_ (
    .A(_151_),
    .B(iDataIn[2]),
    .Y(_158_)
  );
  NAND _191_ (
    .A(_154_),
    .B(\Ram[2] [2]),
    .Y(_159_)
  );
  NAND _192_ (
    .A(_159_),
    .B(_158_),
    .Y(_117_)
  );
  NAND _193_ (
    .A(_151_),
    .B(iDataIn[3]),
    .Y(_000_)
  );
  NAND _194_ (
    .A(_154_),
    .B(\Ram[2] [3]),
    .Y(_001_)
  );
  NAND _195_ (
    .A(_001_),
    .B(_000_),
    .Y(_118_)
  );
  NAND _196_ (
    .A(_151_),
    .B(iDataIn[4]),
    .Y(_002_)
  );
  NAND _197_ (
    .A(_154_),
    .B(\Ram[2] [4]),
    .Y(_003_)
  );
  NAND _198_ (
    .A(_003_),
    .B(_002_),
    .Y(_119_)
  );
  NAND _199_ (
    .A(_151_),
    .B(iDataIn[5]),
    .Y(_004_)
  );
  NAND _200_ (
    .A(_154_),
    .B(\Ram[2] [5]),
    .Y(_005_)
  );
  NAND _201_ (
    .A(_005_),
    .B(_004_),
    .Y(_121_)
  );
  NAND _202_ (
    .A(iWriteAddress[0]),
    .B(iWriteEnable),
    .Y(_006_)
  );
  NOR _203_ (
    .A(_006_),
    .B(iWriteAddress[1]),
    .Y(_007_)
  );
  NAND _204_ (
    .A(_007_),
    .B(iDataIn[0]),
    .Y(_008_)
  );
  NOT _205_ (
    .A(_007_),
    .Y(_009_)
  );
  NAND _206_ (
    .A(_009_),
    .B(\Ram[1] [0]),
    .Y(_010_)
  );
  NAND _207_ (
    .A(_010_),
    .B(_008_),
    .Y(_122_)
  );
  NAND _208_ (
    .A(_007_),
    .B(iDataIn[1]),
    .Y(_011_)
  );
  NAND _209_ (
    .A(_009_),
    .B(\Ram[1] [1]),
    .Y(_012_)
  );
  NAND _210_ (
    .A(_012_),
    .B(_011_),
    .Y(_123_)
  );
  NAND _211_ (
    .A(_007_),
    .B(iDataIn[2]),
    .Y(_013_)
  );
  NAND _212_ (
    .A(_009_),
    .B(\Ram[1] [2]),
    .Y(_014_)
  );
  NAND _213_ (
    .A(_014_),
    .B(_013_),
    .Y(_124_)
  );
  NAND _214_ (
    .A(_007_),
    .B(iDataIn[3]),
    .Y(_016_)
  );
  NAND _215_ (
    .A(_009_),
    .B(\Ram[1] [3]),
    .Y(_017_)
  );
  NAND _216_ (
    .A(_017_),
    .B(_016_),
    .Y(_125_)
  );
  NAND _217_ (
    .A(_007_),
    .B(iDataIn[4]),
    .Y(_018_)
  );
  NAND _218_ (
    .A(_009_),
    .B(\Ram[1] [4]),
    .Y(_019_)
  );
  NAND _219_ (
    .A(_019_),
    .B(_018_),
    .Y(_126_)
  );
  NAND _220_ (
    .A(_007_),
    .B(iDataIn[5]),
    .Y(_020_)
  );
  NAND _221_ (
    .A(_009_),
    .B(\Ram[1] [5]),
    .Y(_021_)
  );
  NAND _222_ (
    .A(_021_),
    .B(_020_),
    .Y(_127_)
  );
  NAND _223_ (
    .A(_135_),
    .B(iWriteEnable),
    .Y(_022_)
  );
  NOR _224_ (
    .A(_022_),
    .B(iWriteAddress[1]),
    .Y(_023_)
  );
  NAND _225_ (
    .A(_023_),
    .B(iDataIn[0]),
    .Y(_024_)
  );
  NOT _226_ (
    .A(iWriteEnable),
    .Y(_025_)
  );
  NOR _227_ (
    .A(iWriteAddress[0]),
    .B(_025_),
    .Y(_026_)
  );
  NAND _228_ (
    .A(_026_),
    .B(_136_),
    .Y(_027_)
  );
  NAND _229_ (
    .A(_027_),
    .B(\Ram[0] [0]),
    .Y(_028_)
  );
  NAND _230_ (
    .A(_028_),
    .B(_024_),
    .Y(_128_)
  );
  NAND _231_ (
    .A(_023_),
    .B(iDataIn[1]),
    .Y(_029_)
  );
  NAND _232_ (
    .A(_027_),
    .B(\Ram[0] [1]),
    .Y(_030_)
  );
  NAND _233_ (
    .A(_030_),
    .B(_029_),
    .Y(_129_)
  );
  NAND _234_ (
    .A(_023_),
    .B(iDataIn[2]),
    .Y(_031_)
  );
  NAND _235_ (
    .A(_027_),
    .B(\Ram[0] [2]),
    .Y(_032_)
  );
  NAND _236_ (
    .A(_032_),
    .B(_031_),
    .Y(_130_)
  );
  NAND _237_ (
    .A(_023_),
    .B(iDataIn[3]),
    .Y(_033_)
  );
  NAND _238_ (
    .A(_027_),
    .B(\Ram[0] [3]),
    .Y(_034_)
  );
  NAND _239_ (
    .A(_034_),
    .B(_033_),
    .Y(_131_)
  );
  NAND _240_ (
    .A(_023_),
    .B(iDataIn[4]),
    .Y(_035_)
  );
  NAND _241_ (
    .A(_027_),
    .B(\Ram[0] [4]),
    .Y(_036_)
  );
  NAND _242_ (
    .A(_036_),
    .B(_035_),
    .Y(_132_)
  );
  NAND _243_ (
    .A(_023_),
    .B(iDataIn[5]),
    .Y(_038_)
  );
  NAND _244_ (
    .A(_027_),
    .B(\Ram[0] [5]),
    .Y(_039_)
  );
  NAND _245_ (
    .A(_039_),
    .B(_038_),
    .Y(_133_)
  );
  NOT _246_ (
    .A(iReadEnable),
    .Y(_040_)
  );
  NOR _247_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [0]),
    .Y(_041_)
  );
  NOT _248_ (
    .A(\Ram[3] [0]),
    .Y(_042_)
  );
  NAND _249_ (
    .A(iReadAddress[0]),
    .B(_042_),
    .Y(_043_)
  );
  NAND _250_ (
    .A(_043_),
    .B(iReadAddress[1]),
    .Y(_044_)
  );
  NOR _251_ (
    .A(_044_),
    .B(_041_),
    .Y(_045_)
  );
  NOT _252_ (
    .A(\Ram[1] [0]),
    .Y(_046_)
  );
  NOT _253_ (
    .A(iReadAddress[0]),
    .Y(_047_)
  );
  NOR _254_ (
    .A(_047_),
    .B(_046_),
    .Y(_048_)
  );
  NOT _255_ (
    .A(\Ram[0] [0]),
    .Y(_049_)
  );
  NOR _256_ (
    .A(iReadAddress[0]),
    .B(_049_),
    .Y(_050_)
  );
  NOR _257_ (
    .A(_050_),
    .B(_048_),
    .Y(_051_)
  );
  NOR _258_ (
    .A(_051_),
    .B(iReadAddress[1]),
    .Y(_052_)
  );
  NOR _259_ (
    .A(_052_),
    .B(_045_),
    .Y(_053_)
  );
  NOR _260_ (
    .A(_053_),
    .B(_040_),
    .Y(oDataOut[0])
  );
  NOR _261_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [1]),
    .Y(_054_)
  );
  NOT _262_ (
    .A(\Ram[3] [1]),
    .Y(_055_)
  );
  NAND _263_ (
    .A(iReadAddress[0]),
    .B(_055_),
    .Y(_056_)
  );
  NAND _264_ (
    .A(_056_),
    .B(iReadAddress[1]),
    .Y(_057_)
  );
  NOR _265_ (
    .A(_057_),
    .B(_054_),
    .Y(_058_)
  );
  NOT _266_ (
    .A(\Ram[1] [1]),
    .Y(_059_)
  );
  NOR _267_ (
    .A(_047_),
    .B(_059_),
    .Y(_060_)
  );
  NOT _268_ (
    .A(\Ram[0] [1]),
    .Y(_061_)
  );
  NOR _269_ (
    .A(iReadAddress[0]),
    .B(_061_),
    .Y(_062_)
  );
  NOR _270_ (
    .A(_062_),
    .B(_060_),
    .Y(_063_)
  );
  NOR _271_ (
    .A(_063_),
    .B(iReadAddress[1]),
    .Y(_064_)
  );
  NOR _272_ (
    .A(_064_),
    .B(_058_),
    .Y(_065_)
  );
  NOR _273_ (
    .A(_065_),
    .B(_040_),
    .Y(oDataOut[1])
  );
  NOR _274_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [2]),
    .Y(_067_)
  );
  NOT _275_ (
    .A(\Ram[3] [2]),
    .Y(_068_)
  );
  NAND _276_ (
    .A(iReadAddress[0]),
    .B(_068_),
    .Y(_069_)
  );
  NAND _277_ (
    .A(_069_),
    .B(iReadAddress[1]),
    .Y(_070_)
  );
  NOR _278_ (
    .A(_070_),
    .B(_067_),
    .Y(_071_)
  );
  NOT _279_ (
    .A(\Ram[1] [2]),
    .Y(_072_)
  );
  NOR _280_ (
    .A(_047_),
    .B(_072_),
    .Y(_073_)
  );
  NOT _281_ (
    .A(\Ram[0] [2]),
    .Y(_074_)
  );
  NOR _282_ (
    .A(iReadAddress[0]),
    .B(_074_),
    .Y(_075_)
  );
  NOR _283_ (
    .A(_075_),
    .B(_073_),
    .Y(_076_)
  );
  NOR _284_ (
    .A(_076_),
    .B(iReadAddress[1]),
    .Y(_077_)
  );
  NOR _285_ (
    .A(_077_),
    .B(_071_),
    .Y(_078_)
  );
  NOR _286_ (
    .A(_078_),
    .B(_040_),
    .Y(oDataOut[2])
  );
  NOR _287_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [3]),
    .Y(_079_)
  );
  NOT _288_ (
    .A(\Ram[3] [3]),
    .Y(_080_)
  );
  NAND _289_ (
    .A(iReadAddress[0]),
    .B(_080_),
    .Y(_081_)
  );
  NAND _290_ (
    .A(_081_),
    .B(iReadAddress[1]),
    .Y(_082_)
  );
  NOR _291_ (
    .A(_082_),
    .B(_079_),
    .Y(_083_)
  );
  NOT _292_ (
    .A(\Ram[1] [3]),
    .Y(_084_)
  );
  NOR _293_ (
    .A(_047_),
    .B(_084_),
    .Y(_085_)
  );
  NOT _294_ (
    .A(\Ram[0] [3]),
    .Y(_086_)
  );
  NOR _295_ (
    .A(iReadAddress[0]),
    .B(_086_),
    .Y(_087_)
  );
  NOR _296_ (
    .A(_087_),
    .B(_085_),
    .Y(_088_)
  );
  NOR _297_ (
    .A(_088_),
    .B(iReadAddress[1]),
    .Y(_089_)
  );
  NOR _298_ (
    .A(_089_),
    .B(_083_),
    .Y(_090_)
  );
  NOR _299_ (
    .A(_090_),
    .B(_040_),
    .Y(oDataOut[3])
  );
  NOR _300_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [4]),
    .Y(_091_)
  );
  NOT _301_ (
    .A(\Ram[3] [4]),
    .Y(_092_)
  );
  NAND _302_ (
    .A(iReadAddress[0]),
    .B(_092_),
    .Y(_093_)
  );
  NAND _303_ (
    .A(_093_),
    .B(iReadAddress[1]),
    .Y(_095_)
  );
  NOR _304_ (
    .A(_095_),
    .B(_091_),
    .Y(_096_)
  );
  NOT _305_ (
    .A(\Ram[1] [4]),
    .Y(_097_)
  );
  NOR _306_ (
    .A(_047_),
    .B(_097_),
    .Y(_098_)
  );
  NOT _307_ (
    .A(\Ram[0] [4]),
    .Y(_099_)
  );
  NOR _308_ (
    .A(iReadAddress[0]),
    .B(_099_),
    .Y(_100_)
  );
  NOR _309_ (
    .A(_100_),
    .B(_098_),
    .Y(_101_)
  );
  NOR _310_ (
    .A(_101_),
    .B(iReadAddress[1]),
    .Y(_102_)
  );
  NOR _311_ (
    .A(_102_),
    .B(_096_),
    .Y(_103_)
  );
  NOR _312_ (
    .A(_103_),
    .B(_040_),
    .Y(oDataOut[4])
  );
  NOR _313_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [5]),
    .Y(_104_)
  );
  NOT _314_ (
    .A(\Ram[3] [5]),
    .Y(_105_)
  );
  NAND _315_ (
    .A(iReadAddress[0]),
    .B(_105_),
    .Y(_106_)
  );
  NAND _316_ (
    .A(_106_),
    .B(iReadAddress[1]),
    .Y(_107_)
  );
  NOR _317_ (
    .A(_107_),
    .B(_104_),
    .Y(_108_)
  );
  NOT _318_ (
    .A(\Ram[1] [5]),
    .Y(_109_)
  );
  NOR _319_ (
    .A(_047_),
    .B(_109_),
    .Y(_110_)
  );
  NOT _320_ (
    .A(\Ram[0] [5]),
    .Y(_111_)
  );
  NOR _321_ (
    .A(iReadAddress[0]),
    .B(_111_),
    .Y(_112_)
  );
  NOR _322_ (
    .A(_112_),
    .B(_110_),
    .Y(_113_)
  );
  NOR _323_ (
    .A(_113_),
    .B(iReadAddress[1]),
    .Y(_115_)
  );
  NOR _324_ (
    .A(_115_),
    .B(_108_),
    .Y(_116_)
  );
  NOR _325_ (
    .A(_116_),
    .B(_040_),
    .Y(oDataOut[5])
  );
  DFF _326_ (
    .C(Clock),
    .D(_120_),
    .Q(\Ram[3] [0])
  );
  DFF _327_ (
    .C(Clock),
    .D(_134_),
    .Q(\Ram[3] [1])
  );
  DFF _328_ (
    .C(Clock),
    .D(_152_),
    .Q(\Ram[3] [2])
  );
  DFF _329_ (
    .C(Clock),
    .D(_015_),
    .Q(\Ram[3] [3])
  );
  DFF _330_ (
    .C(Clock),
    .D(_037_),
    .Q(\Ram[3] [4])
  );
  DFF _331_ (
    .C(Clock),
    .D(_066_),
    .Q(\Ram[3] [5])
  );
  DFF _332_ (
    .C(Clock),
    .D(_128_),
    .Q(\Ram[0] [0])
  );
  DFF _333_ (
    .C(Clock),
    .D(_129_),
    .Q(\Ram[0] [1])
  );
  DFF _334_ (
    .C(Clock),
    .D(_130_),
    .Q(\Ram[0] [2])
  );
  DFF _335_ (
    .C(Clock),
    .D(_131_),
    .Q(\Ram[0] [3])
  );
  DFF _336_ (
    .C(Clock),
    .D(_132_),
    .Q(\Ram[0] [4])
  );
  DFF _337_ (
    .C(Clock),
    .D(_133_),
    .Q(\Ram[0] [5])
  );
  DFF _338_ (
    .C(Clock),
    .D(_122_),
    .Q(\Ram[1] [0])
  );
  DFF _339_ (
    .C(Clock),
    .D(_123_),
    .Q(\Ram[1] [1])
  );
  DFF _340_ (
    .C(Clock),
    .D(_124_),
    .Q(\Ram[1] [2])
  );
  DFF _341_ (
    .C(Clock),
    .D(_125_),
    .Q(\Ram[1] [3])
  );
  DFF _342_ (
    .C(Clock),
    .D(_126_),
    .Q(\Ram[1] [4])
  );
  DFF _343_ (
    .C(Clock),
    .D(_127_),
    .Q(\Ram[1] [5])
  );
  DFF _344_ (
    .C(Clock),
    .D(_094_),
    .Q(\Ram[2] [0])
  );
  DFF _345_ (
    .C(Clock),
    .D(_114_),
    .Q(\Ram[2] [1])
  );
  DFF _346_ (
    .C(Clock),
    .D(_117_),
    .Q(\Ram[2] [2])
  );
  DFF _347_ (
    .C(Clock),
    .D(_118_),
    .Q(\Ram[2] [3])
  );
  DFF _348_ (
    .C(Clock),
    .D(_119_),
    .Q(\Ram[2] [4])
  );
  DFF _349_ (
    .C(Clock),
    .D(_121_),
    .Q(\Ram[2] [5])
  );
endmodule

module fifoSynth(clk, reset_L, push, pop, Fifo_Data_in, Fifo_Data_out, Almost_Empty, Almost_Full, umbral, Pausa, Fifo_Empty, Fifo_Full, Error_Fifo);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire [4:0] _006_;
  wire [3:0] _007_;
  wire [4:0] _008_;
  wire [3:0] _009_;
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
  output Almost_Empty;
  output Almost_Full;
  output Error_Fifo;
  input [5:0] Fifo_Data_in;
  output [5:0] Fifo_Data_out;
  output Fifo_Empty;
  output Fifo_Full;
  output Pausa;
  input clk;
  wire [4:0] num_mem;
  input pop;
  input push;
  wire [3:0] rd_ptr;
  input reset_L;
  output [4:0] umbral;
  wire [3:0] wr_ptr;
  NOT _156_ (
    .A(reset_L),
    .Y(_105_)
  );
  NOT _157_ (
    .A(pop),
    .Y(_106_)
  );
  NOT _158_ (
    .A(num_mem[4]),
    .Y(_107_)
  );
  NOT _159_ (
    .A(num_mem[3]),
    .Y(_108_)
  );
  NOT _160_ (
    .A(num_mem[2]),
    .Y(_109_)
  );
  NAND _161_ (
    .A(_109_),
    .B(_108_),
    .Y(_110_)
  );
  NOT _162_ (
    .A(num_mem[0]),
    .Y(_111_)
  );
  NOT _163_ (
    .A(num_mem[1]),
    .Y(_112_)
  );
  NAND _164_ (
    .A(_112_),
    .B(_111_),
    .Y(_113_)
  );
  NOR _165_ (
    .A(_113_),
    .B(_110_),
    .Y(_114_)
  );
  NAND _166_ (
    .A(_114_),
    .B(_107_),
    .Y(_115_)
  );
  NOR _167_ (
    .A(_115_),
    .B(_106_),
    .Y(_116_)
  );
  NOR _168_ (
    .A(num_mem[1]),
    .B(_111_),
    .Y(_117_)
  );
  NOT _169_ (
    .A(_117_),
    .Y(_118_)
  );
  NOR _170_ (
    .A(_110_),
    .B(_107_),
    .Y(_119_)
  );
  NOT _171_ (
    .A(_119_),
    .Y(_120_)
  );
  NOR _172_ (
    .A(_120_),
    .B(_118_),
    .Y(_121_)
  );
  NOR _173_ (
    .A(_121_),
    .B(_116_),
    .Y(_122_)
  );
  NOR _174_ (
    .A(_122_),
    .B(_105_),
    .Y(_002_)
  );
  NOR _175_ (
    .A(num_mem[2]),
    .B(num_mem[3]),
    .Y(_123_)
  );
  NOR _176_ (
    .A(num_mem[1]),
    .B(num_mem[0]),
    .Y(_124_)
  );
  NAND _177_ (
    .A(_124_),
    .B(_123_),
    .Y(_125_)
  );
  NOR _178_ (
    .A(_125_),
    .B(num_mem[4]),
    .Y(_126_)
  );
  NOR _179_ (
    .A(_106_),
    .B(push),
    .Y(_127_)
  );
  NOT _180_ (
    .A(_127_),
    .Y(_128_)
  );
  NOR _181_ (
    .A(_128_),
    .B(_126_),
    .Y(_129_)
  );
  NAND _182_ (
    .A(_106_),
    .B(push),
    .Y(_130_)
  );
  NAND _183_ (
    .A(_130_),
    .B(_111_),
    .Y(_131_)
  );
  NOR _184_ (
    .A(_131_),
    .B(_129_),
    .Y(_132_)
  );
  NOT _185_ (
    .A(push),
    .Y(_133_)
  );
  NOR _186_ (
    .A(_106_),
    .B(_133_),
    .Y(_134_)
  );
  NOR _187_ (
    .A(pop),
    .B(push),
    .Y(_135_)
  );
  NOR _188_ (
    .A(_135_),
    .B(_111_),
    .Y(_136_)
  );
  NOR _189_ (
    .A(_136_),
    .B(_105_),
    .Y(_137_)
  );
  NOR _190_ (
    .A(_137_),
    .B(_134_),
    .Y(_138_)
  );
  NOR _191_ (
    .A(_138_),
    .B(_132_),
    .Y(_006_[0])
  );
  NOR _192_ (
    .A(_134_),
    .B(_105_),
    .Y(_139_)
  );
  NOR _193_ (
    .A(_112_),
    .B(num_mem[0]),
    .Y(_140_)
  );
  NOR _194_ (
    .A(_140_),
    .B(_117_),
    .Y(_141_)
  );
  NAND _195_ (
    .A(_141_),
    .B(_129_),
    .Y(_142_)
  );
  NOR _196_ (
    .A(_141_),
    .B(_133_),
    .Y(_143_)
  );
  NOT _197_ (
    .A(_135_),
    .Y(_144_)
  );
  NOR _198_ (
    .A(_144_),
    .B(_112_),
    .Y(_145_)
  );
  NOR _199_ (
    .A(_145_),
    .B(_143_),
    .Y(_146_)
  );
  NAND _200_ (
    .A(_146_),
    .B(_142_),
    .Y(_147_)
  );
  NAND _201_ (
    .A(_147_),
    .B(_139_),
    .Y(_148_)
  );
  NAND _202_ (
    .A(_134_),
    .B(num_mem[1]),
    .Y(_149_)
  );
  NAND _203_ (
    .A(_149_),
    .B(_148_),
    .Y(_006_[1])
  );
  NAND _204_ (
    .A(_134_),
    .B(num_mem[2]),
    .Y(_150_)
  );
  NOR _205_ (
    .A(_113_),
    .B(_106_),
    .Y(_151_)
  );
  NOR _206_ (
    .A(_151_),
    .B(push),
    .Y(_152_)
  );
  NAND _207_ (
    .A(_152_),
    .B(num_mem[2]),
    .Y(_153_)
  );
  NAND _208_ (
    .A(_127_),
    .B(_115_),
    .Y(_154_)
  );
  NAND _209_ (
    .A(_124_),
    .B(_109_),
    .Y(_155_)
  );
  NOR _210_ (
    .A(_155_),
    .B(_154_),
    .Y(_010_)
  );
  NAND _211_ (
    .A(num_mem[1]),
    .B(num_mem[0]),
    .Y(_011_)
  );
  NOR _212_ (
    .A(_011_),
    .B(_109_),
    .Y(_012_)
  );
  NAND _213_ (
    .A(_011_),
    .B(_109_),
    .Y(_013_)
  );
  NAND _214_ (
    .A(_013_),
    .B(push),
    .Y(_014_)
  );
  NOR _215_ (
    .A(_014_),
    .B(_012_),
    .Y(_015_)
  );
  NOR _216_ (
    .A(_015_),
    .B(_010_),
    .Y(_016_)
  );
  NAND _217_ (
    .A(_016_),
    .B(_153_),
    .Y(_017_)
  );
  NAND _218_ (
    .A(_017_),
    .B(_139_),
    .Y(_018_)
  );
  NAND _219_ (
    .A(_018_),
    .B(_150_),
    .Y(_006_[2])
  );
  NAND _220_ (
    .A(num_mem[2]),
    .B(num_mem[3]),
    .Y(_019_)
  );
  NAND _221_ (
    .A(_019_),
    .B(_125_),
    .Y(_020_)
  );
  NAND _222_ (
    .A(_020_),
    .B(_129_),
    .Y(_021_)
  );
  NOT _223_ (
    .A(_012_),
    .Y(_022_)
  );
  NAND _224_ (
    .A(_022_),
    .B(_108_),
    .Y(_023_)
  );
  NAND _225_ (
    .A(_012_),
    .B(num_mem[3]),
    .Y(_024_)
  );
  NAND _226_ (
    .A(_024_),
    .B(push),
    .Y(_025_)
  );
  NAND _227_ (
    .A(_152_),
    .B(num_mem[3]),
    .Y(_026_)
  );
  NAND _228_ (
    .A(_026_),
    .B(_025_),
    .Y(_027_)
  );
  NAND _229_ (
    .A(_027_),
    .B(_023_),
    .Y(_028_)
  );
  NAND _230_ (
    .A(_028_),
    .B(_021_),
    .Y(_029_)
  );
  NAND _231_ (
    .A(_029_),
    .B(_139_),
    .Y(_030_)
  );
  NAND _232_ (
    .A(_134_),
    .B(num_mem[3]),
    .Y(_031_)
  );
  NAND _233_ (
    .A(_031_),
    .B(_030_),
    .Y(_006_[3])
  );
  NAND _234_ (
    .A(_134_),
    .B(num_mem[4]),
    .Y(_032_)
  );
  NOR _235_ (
    .A(_024_),
    .B(_133_),
    .Y(_033_)
  );
  NAND _236_ (
    .A(_033_),
    .B(num_mem[4]),
    .Y(_034_)
  );
  NOT _237_ (
    .A(_139_),
    .Y(_035_)
  );
  NOR _238_ (
    .A(_128_),
    .B(_125_),
    .Y(_036_)
  );
  NOR _239_ (
    .A(_036_),
    .B(_107_),
    .Y(_037_)
  );
  NOR _240_ (
    .A(_037_),
    .B(_033_),
    .Y(_038_)
  );
  NOR _241_ (
    .A(_038_),
    .B(_035_),
    .Y(_039_)
  );
  NAND _242_ (
    .A(_039_),
    .B(_034_),
    .Y(_040_)
  );
  NAND _243_ (
    .A(_040_),
    .B(_032_),
    .Y(_006_[4])
  );
  NOT _244_ (
    .A(_134_),
    .Y(_041_)
  );
  NAND _245_ (
    .A(_041_),
    .B(_154_),
    .Y(_042_)
  );
  NOR _246_ (
    .A(_042_),
    .B(rd_ptr[0]),
    .Y(_043_)
  );
  NOR _247_ (
    .A(_134_),
    .B(reset_L),
    .Y(_044_)
  );
  NOT _248_ (
    .A(_044_),
    .Y(_045_)
  );
  NAND _249_ (
    .A(_042_),
    .B(rd_ptr[0]),
    .Y(_046_)
  );
  NAND _250_ (
    .A(_046_),
    .B(_045_),
    .Y(_047_)
  );
  NOR _251_ (
    .A(_047_),
    .B(_043_),
    .Y(_007_[0])
  );
  NOT _252_ (
    .A(rd_ptr[0]),
    .Y(_048_)
  );
  NOR _253_ (
    .A(_134_),
    .B(_129_),
    .Y(_049_)
  );
  NOR _254_ (
    .A(_049_),
    .B(_048_),
    .Y(_050_)
  );
  NOR _255_ (
    .A(_050_),
    .B(rd_ptr[1]),
    .Y(_051_)
  );
  NAND _256_ (
    .A(_050_),
    .B(rd_ptr[1]),
    .Y(_052_)
  );
  NAND _257_ (
    .A(_052_),
    .B(_045_),
    .Y(_053_)
  );
  NOR _258_ (
    .A(_053_),
    .B(_051_),
    .Y(_007_[1])
  );
  NOT _259_ (
    .A(rd_ptr[2]),
    .Y(_054_)
  );
  NOR _260_ (
    .A(_052_),
    .B(_054_),
    .Y(_055_)
  );
  NAND _261_ (
    .A(_052_),
    .B(_054_),
    .Y(_056_)
  );
  NAND _262_ (
    .A(_056_),
    .B(_045_),
    .Y(_057_)
  );
  NOR _263_ (
    .A(_057_),
    .B(_055_),
    .Y(_007_[2])
  );
  NAND _264_ (
    .A(_055_),
    .B(rd_ptr[3]),
    .Y(_058_)
  );
  NOT _265_ (
    .A(rd_ptr[3]),
    .Y(_059_)
  );
  NOT _266_ (
    .A(rd_ptr[1]),
    .Y(_060_)
  );
  NOR _267_ (
    .A(_046_),
    .B(_060_),
    .Y(_061_)
  );
  NAND _268_ (
    .A(_061_),
    .B(rd_ptr[2]),
    .Y(_062_)
  );
  NAND _269_ (
    .A(_062_),
    .B(_059_),
    .Y(_063_)
  );
  NAND _270_ (
    .A(_063_),
    .B(_058_),
    .Y(_064_)
  );
  NOR _271_ (
    .A(_064_),
    .B(_044_),
    .Y(_007_[3])
  );
  NAND _272_ (
    .A(num_mem[2]),
    .B(_107_),
    .Y(_065_)
  );
  NOR _273_ (
    .A(_065_),
    .B(_113_),
    .Y(_066_)
  );
  NAND _274_ (
    .A(_066_),
    .B(_108_),
    .Y(_067_)
  );
  NOR _275_ (
    .A(_067_),
    .B(pop),
    .Y(_068_)
  );
  NOR _276_ (
    .A(_068_),
    .B(_133_),
    .Y(_069_)
  );
  NOR _277_ (
    .A(_069_),
    .B(wr_ptr[0]),
    .Y(_070_)
  );
  NAND _278_ (
    .A(_069_),
    .B(wr_ptr[0]),
    .Y(_071_)
  );
  NAND _279_ (
    .A(_071_),
    .B(_045_),
    .Y(_072_)
  );
  NOR _280_ (
    .A(_072_),
    .B(_070_),
    .Y(_009_[0])
  );
  NOT _281_ (
    .A(wr_ptr[1]),
    .Y(_073_)
  );
  NOR _282_ (
    .A(_071_),
    .B(_073_),
    .Y(_074_)
  );
  NAND _283_ (
    .A(_071_),
    .B(_073_),
    .Y(_075_)
  );
  NAND _284_ (
    .A(_075_),
    .B(_045_),
    .Y(_076_)
  );
  NOR _285_ (
    .A(_076_),
    .B(_074_),
    .Y(_009_[1])
  );
  NOT _286_ (
    .A(wr_ptr[2]),
    .Y(_077_)
  );
  NOT _287_ (
    .A(wr_ptr[0]),
    .Y(_078_)
  );
  NOR _288_ (
    .A(_109_),
    .B(num_mem[4]),
    .Y(_079_)
  );
  NAND _289_ (
    .A(_079_),
    .B(_124_),
    .Y(_080_)
  );
  NOR _290_ (
    .A(_080_),
    .B(num_mem[3]),
    .Y(_081_)
  );
  NAND _291_ (
    .A(_081_),
    .B(_106_),
    .Y(_082_)
  );
  NAND _292_ (
    .A(_082_),
    .B(push),
    .Y(_083_)
  );
  NOR _293_ (
    .A(_083_),
    .B(_078_),
    .Y(_084_)
  );
  NAND _294_ (
    .A(_084_),
    .B(wr_ptr[1]),
    .Y(_085_)
  );
  NOR _295_ (
    .A(_085_),
    .B(_077_),
    .Y(_086_)
  );
  NAND _296_ (
    .A(_085_),
    .B(_077_),
    .Y(_087_)
  );
  NAND _297_ (
    .A(_087_),
    .B(_045_),
    .Y(_088_)
  );
  NOR _298_ (
    .A(_088_),
    .B(_086_),
    .Y(_009_[2])
  );
  NAND _299_ (
    .A(_086_),
    .B(wr_ptr[3]),
    .Y(_089_)
  );
  NOT _300_ (
    .A(wr_ptr[3]),
    .Y(_090_)
  );
  NAND _301_ (
    .A(_074_),
    .B(wr_ptr[2]),
    .Y(_091_)
  );
  NAND _302_ (
    .A(_091_),
    .B(_090_),
    .Y(_092_)
  );
  NAND _303_ (
    .A(_092_),
    .B(_089_),
    .Y(_093_)
  );
  NOR _304_ (
    .A(_093_),
    .B(_044_),
    .Y(_009_[3])
  );
  NOR _305_ (
    .A(_120_),
    .B(num_mem[1]),
    .Y(_094_)
  );
  NAND _306_ (
    .A(_094_),
    .B(reset_L),
    .Y(_095_)
  );
  NOT _307_ (
    .A(_095_),
    .Y(_004_)
  );
  NAND _308_ (
    .A(_115_),
    .B(reset_L),
    .Y(_003_)
  );
  NOR _309_ (
    .A(_065_),
    .B(_108_),
    .Y(_096_)
  );
  NAND _310_ (
    .A(_096_),
    .B(reset_L),
    .Y(_097_)
  );
  NAND _311_ (
    .A(_097_),
    .B(_095_),
    .Y(_005_)
  );
  NOT _312_ (
    .A(umbral[0]),
    .Y(_098_)
  );
  NAND _313_ (
    .A(_080_),
    .B(reset_L),
    .Y(_099_)
  );
  NOR _314_ (
    .A(_099_),
    .B(_098_),
    .Y(_008_[0])
  );
  NOT _315_ (
    .A(umbral[1]),
    .Y(_100_)
  );
  NOR _316_ (
    .A(_099_),
    .B(_100_),
    .Y(_008_[1])
  );
  NOR _317_ (
    .A(_066_),
    .B(umbral[2]),
    .Y(_101_)
  );
  NOR _318_ (
    .A(_101_),
    .B(_105_),
    .Y(_008_[2])
  );
  NOR _319_ (
    .A(_066_),
    .B(umbral[3]),
    .Y(_102_)
  );
  NAND _320_ (
    .A(_067_),
    .B(reset_L),
    .Y(_103_)
  );
  NOR _321_ (
    .A(_103_),
    .B(_102_),
    .Y(_008_[3])
  );
  NOT _322_ (
    .A(umbral[4]),
    .Y(_104_)
  );
  NOR _323_ (
    .A(_099_),
    .B(_104_),
    .Y(_008_[4])
  );
  NOT _324_ (
    .A(_097_),
    .Y(_001_)
  );
  NOR _325_ (
    .A(_067_),
    .B(_105_),
    .Y(_000_)
  );
  DFF _326_ (
    .C(clk),
    .D(_009_[0]),
    .Q(wr_ptr[0])
  );
  DFF _327_ (
    .C(clk),
    .D(_009_[1]),
    .Q(wr_ptr[1])
  );
  DFF _328_ (
    .C(clk),
    .D(_009_[2]),
    .Q(wr_ptr[2])
  );
  DFF _329_ (
    .C(clk),
    .D(_009_[3]),
    .Q(wr_ptr[3])
  );
  DFF _330_ (
    .C(clk),
    .D(_002_),
    .Q(Error_Fifo)
  );
  DFF _331_ (
    .C(clk),
    .D(_007_[0]),
    .Q(rd_ptr[0])
  );
  DFF _332_ (
    .C(clk),
    .D(_007_[1]),
    .Q(rd_ptr[1])
  );
  DFF _333_ (
    .C(clk),
    .D(_007_[2]),
    .Q(rd_ptr[2])
  );
  DFF _334_ (
    .C(clk),
    .D(_007_[3]),
    .Q(rd_ptr[3])
  );
  DFF _335_ (
    .C(clk),
    .D(_006_[0]),
    .Q(num_mem[0])
  );
  DFF _336_ (
    .C(clk),
    .D(_006_[1]),
    .Q(num_mem[1])
  );
  DFF _337_ (
    .C(clk),
    .D(_006_[2]),
    .Q(num_mem[2])
  );
  DFF _338_ (
    .C(clk),
    .D(_006_[3]),
    .Q(num_mem[3])
  );
  DFF _339_ (
    .C(clk),
    .D(_006_[4]),
    .Q(num_mem[4])
  );
  DFF _340_ (
    .C(clk),
    .D(_000_),
    .Q(Almost_Empty)
  );
  DFF _341_ (
    .C(clk),
    .D(_001_),
    .Q(Almost_Full)
  );
  DFF _342_ (
    .C(clk),
    .D(_008_[0]),
    .Q(umbral[0])
  );
  DFF _343_ (
    .C(clk),
    .D(_008_[1]),
    .Q(umbral[1])
  );
  DFF _344_ (
    .C(clk),
    .D(_008_[2]),
    .Q(umbral[2])
  );
  DFF _345_ (
    .C(clk),
    .D(_008_[3]),
    .Q(umbral[3])
  );
  DFF _346_ (
    .C(clk),
    .D(_008_[4]),
    .Q(umbral[4])
  );
  DFF _347_ (
    .C(clk),
    .D(_005_),
    .Q(Pausa)
  );
  DFF _348_ (
    .C(clk),
    .D(_003_),
    .Q(Fifo_Empty)
  );
  DFF _349_ (
    .C(clk),
    .D(_004_),
    .Q(Fifo_Full)
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
endmodule
