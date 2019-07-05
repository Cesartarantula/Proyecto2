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
    .Y(_131_)
  );
  NAND _161_ (
    .A(iWriteAddress[1]),
    .B(iWriteEnable),
    .Y(_133_)
  );
  NOR _162_ (
    .A(_133_),
    .B(_131_),
    .Y(_134_)
  );
  NAND _163_ (
    .A(_134_),
    .B(iDataIn[0]),
    .Y(_136_)
  );
  NOT _164_ (
    .A(_134_),
    .Y(_137_)
  );
  NAND _165_ (
    .A(_137_),
    .B(\Ram[3] [0]),
    .Y(_139_)
  );
  NAND _166_ (
    .A(_139_),
    .B(_136_),
    .Y(_100_)
  );
  NAND _167_ (
    .A(_134_),
    .B(iDataIn[1]),
    .Y(_141_)
  );
  NAND _168_ (
    .A(_137_),
    .B(\Ram[3] [1]),
    .Y(_142_)
  );
  NAND _169_ (
    .A(_142_),
    .B(_141_),
    .Y(_113_)
  );
  NAND _170_ (
    .A(_134_),
    .B(iDataIn[2]),
    .Y(_144_)
  );
  NAND _171_ (
    .A(_137_),
    .B(\Ram[3] [2]),
    .Y(_145_)
  );
  NAND _172_ (
    .A(_145_),
    .B(_144_),
    .Y(_114_)
  );
  NAND _173_ (
    .A(_134_),
    .B(iDataIn[3]),
    .Y(_146_)
  );
  NAND _174_ (
    .A(_137_),
    .B(\Ram[3] [3]),
    .Y(_147_)
  );
  NAND _175_ (
    .A(_147_),
    .B(_146_),
    .Y(_115_)
  );
  NAND _176_ (
    .A(_134_),
    .B(iDataIn[4]),
    .Y(_148_)
  );
  NAND _177_ (
    .A(_137_),
    .B(\Ram[3] [4]),
    .Y(_149_)
  );
  NAND _178_ (
    .A(_149_),
    .B(_148_),
    .Y(_116_)
  );
  NAND _179_ (
    .A(_134_),
    .B(iDataIn[5]),
    .Y(_150_)
  );
  NAND _180_ (
    .A(_137_),
    .B(\Ram[3] [5]),
    .Y(_151_)
  );
  NAND _181_ (
    .A(_151_),
    .B(_150_),
    .Y(_117_)
  );
  NOR _182_ (
    .A(_133_),
    .B(iWriteAddress[0]),
    .Y(_152_)
  );
  NAND _183_ (
    .A(_152_),
    .B(iDataIn[0]),
    .Y(_153_)
  );
  NOT _184_ (
    .A(_152_),
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
    .Y(_118_)
  );
  NAND _187_ (
    .A(_152_),
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
    .Y(_119_)
  );
  NAND _190_ (
    .A(_152_),
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
    .Y(_120_)
  );
  NAND _193_ (
    .A(_152_),
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
    .Y(_121_)
  );
  NAND _196_ (
    .A(_152_),
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
    .Y(_122_)
  );
  NAND _199_ (
    .A(_152_),
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
    .Y(_123_)
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
    .Y(_124_)
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
    .Y(_125_)
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
    .Y(_126_)
  );
  NAND _214_ (
    .A(_007_),
    .B(iDataIn[3]),
    .Y(_015_)
  );
  NAND _215_ (
    .A(_009_),
    .B(\Ram[1] [3]),
    .Y(_016_)
  );
  NAND _216_ (
    .A(_016_),
    .B(_015_),
    .Y(_127_)
  );
  NAND _217_ (
    .A(_007_),
    .B(iDataIn[4]),
    .Y(_017_)
  );
  NAND _218_ (
    .A(_009_),
    .B(\Ram[1] [4]),
    .Y(_018_)
  );
  NAND _219_ (
    .A(_018_),
    .B(_017_),
    .Y(_128_)
  );
  NAND _220_ (
    .A(_007_),
    .B(iDataIn[5]),
    .Y(_019_)
  );
  NAND _221_ (
    .A(_009_),
    .B(\Ram[1] [5]),
    .Y(_020_)
  );
  NAND _222_ (
    .A(_020_),
    .B(_019_),
    .Y(_129_)
  );
  NAND _223_ (
    .A(_131_),
    .B(iWriteEnable),
    .Y(_021_)
  );
  NOR _224_ (
    .A(_021_),
    .B(iWriteAddress[1]),
    .Y(_022_)
  );
  NAND _225_ (
    .A(_022_),
    .B(iDataIn[0]),
    .Y(_023_)
  );
  NOT _226_ (
    .A(iWriteEnable),
    .Y(_024_)
  );
  NOR _227_ (
    .A(iWriteAddress[0]),
    .B(_024_),
    .Y(_025_)
  );
  NAND _228_ (
    .A(_025_),
    .B(_133_),
    .Y(_026_)
  );
  NAND _229_ (
    .A(_026_),
    .B(\Ram[0] [0]),
    .Y(_027_)
  );
  NAND _230_ (
    .A(_027_),
    .B(_023_),
    .Y(_130_)
  );
  NAND _231_ (
    .A(_022_),
    .B(iDataIn[1]),
    .Y(_028_)
  );
  NAND _232_ (
    .A(_026_),
    .B(\Ram[0] [1]),
    .Y(_029_)
  );
  NAND _233_ (
    .A(_029_),
    .B(_028_),
    .Y(_132_)
  );
  NAND _234_ (
    .A(_022_),
    .B(iDataIn[2]),
    .Y(_030_)
  );
  NAND _235_ (
    .A(_026_),
    .B(\Ram[0] [2]),
    .Y(_031_)
  );
  NAND _236_ (
    .A(_031_),
    .B(_030_),
    .Y(_135_)
  );
  NAND _237_ (
    .A(_022_),
    .B(iDataIn[3]),
    .Y(_032_)
  );
  NAND _238_ (
    .A(_026_),
    .B(\Ram[0] [3]),
    .Y(_033_)
  );
  NAND _239_ (
    .A(_033_),
    .B(_032_),
    .Y(_138_)
  );
  NAND _240_ (
    .A(_022_),
    .B(iDataIn[4]),
    .Y(_034_)
  );
  NAND _241_ (
    .A(_026_),
    .B(\Ram[0] [4]),
    .Y(_035_)
  );
  NAND _242_ (
    .A(_035_),
    .B(_034_),
    .Y(_140_)
  );
  NAND _243_ (
    .A(_022_),
    .B(iDataIn[5]),
    .Y(_036_)
  );
  NAND _244_ (
    .A(_026_),
    .B(\Ram[0] [5]),
    .Y(_037_)
  );
  NAND _245_ (
    .A(_037_),
    .B(_036_),
    .Y(_143_)
  );
  NOT _246_ (
    .A(iReadEnable),
    .Y(_038_)
  );
  NOR _247_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [0]),
    .Y(_039_)
  );
  NOT _248_ (
    .A(\Ram[3] [0]),
    .Y(_040_)
  );
  NAND _249_ (
    .A(iReadAddress[0]),
    .B(_040_),
    .Y(_041_)
  );
  NAND _250_ (
    .A(_041_),
    .B(iReadAddress[1]),
    .Y(_042_)
  );
  NOR _251_ (
    .A(_042_),
    .B(_039_),
    .Y(_043_)
  );
  NOT _252_ (
    .A(\Ram[1] [0]),
    .Y(_044_)
  );
  NOT _253_ (
    .A(iReadAddress[0]),
    .Y(_045_)
  );
  NOR _254_ (
    .A(_045_),
    .B(_044_),
    .Y(_046_)
  );
  NOT _255_ (
    .A(\Ram[0] [0]),
    .Y(_047_)
  );
  NOR _256_ (
    .A(iReadAddress[0]),
    .B(_047_),
    .Y(_048_)
  );
  NOR _257_ (
    .A(_048_),
    .B(_046_),
    .Y(_049_)
  );
  NOR _258_ (
    .A(_049_),
    .B(iReadAddress[1]),
    .Y(_050_)
  );
  NOR _259_ (
    .A(_050_),
    .B(_043_),
    .Y(_051_)
  );
  NOR _260_ (
    .A(_051_),
    .B(_038_),
    .Y(oDataOut[0])
  );
  NOR _261_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [1]),
    .Y(_052_)
  );
  NOT _262_ (
    .A(\Ram[3] [1]),
    .Y(_053_)
  );
  NAND _263_ (
    .A(iReadAddress[0]),
    .B(_053_),
    .Y(_054_)
  );
  NAND _264_ (
    .A(_054_),
    .B(iReadAddress[1]),
    .Y(_055_)
  );
  NOR _265_ (
    .A(_055_),
    .B(_052_),
    .Y(_056_)
  );
  NOT _266_ (
    .A(\Ram[1] [1]),
    .Y(_057_)
  );
  NOR _267_ (
    .A(_045_),
    .B(_057_),
    .Y(_058_)
  );
  NOT _268_ (
    .A(\Ram[0] [1]),
    .Y(_059_)
  );
  NOR _269_ (
    .A(iReadAddress[0]),
    .B(_059_),
    .Y(_060_)
  );
  NOR _270_ (
    .A(_060_),
    .B(_058_),
    .Y(_061_)
  );
  NOR _271_ (
    .A(_061_),
    .B(iReadAddress[1]),
    .Y(_062_)
  );
  NOR _272_ (
    .A(_062_),
    .B(_056_),
    .Y(_063_)
  );
  NOR _273_ (
    .A(_063_),
    .B(_038_),
    .Y(oDataOut[1])
  );
  NOR _274_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [2]),
    .Y(_064_)
  );
  NOT _275_ (
    .A(\Ram[3] [2]),
    .Y(_065_)
  );
  NAND _276_ (
    .A(iReadAddress[0]),
    .B(_065_),
    .Y(_066_)
  );
  NAND _277_ (
    .A(_066_),
    .B(iReadAddress[1]),
    .Y(_067_)
  );
  NOR _278_ (
    .A(_067_),
    .B(_064_),
    .Y(_068_)
  );
  NOT _279_ (
    .A(\Ram[1] [2]),
    .Y(_069_)
  );
  NOR _280_ (
    .A(_045_),
    .B(_069_),
    .Y(_070_)
  );
  NOT _281_ (
    .A(\Ram[0] [2]),
    .Y(_071_)
  );
  NOR _282_ (
    .A(iReadAddress[0]),
    .B(_071_),
    .Y(_072_)
  );
  NOR _283_ (
    .A(_072_),
    .B(_070_),
    .Y(_073_)
  );
  NOR _284_ (
    .A(_073_),
    .B(iReadAddress[1]),
    .Y(_074_)
  );
  NOR _285_ (
    .A(_074_),
    .B(_068_),
    .Y(_075_)
  );
  NOR _286_ (
    .A(_075_),
    .B(_038_),
    .Y(oDataOut[2])
  );
  NOR _287_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [3]),
    .Y(_076_)
  );
  NOT _288_ (
    .A(\Ram[3] [3]),
    .Y(_077_)
  );
  NAND _289_ (
    .A(iReadAddress[0]),
    .B(_077_),
    .Y(_078_)
  );
  NAND _290_ (
    .A(_078_),
    .B(iReadAddress[1]),
    .Y(_079_)
  );
  NOR _291_ (
    .A(_079_),
    .B(_076_),
    .Y(_080_)
  );
  NOT _292_ (
    .A(\Ram[1] [3]),
    .Y(_081_)
  );
  NOR _293_ (
    .A(_045_),
    .B(_081_),
    .Y(_082_)
  );
  NOT _294_ (
    .A(\Ram[0] [3]),
    .Y(_083_)
  );
  NOR _295_ (
    .A(iReadAddress[0]),
    .B(_083_),
    .Y(_084_)
  );
  NOR _296_ (
    .A(_084_),
    .B(_082_),
    .Y(_085_)
  );
  NOR _297_ (
    .A(_085_),
    .B(iReadAddress[1]),
    .Y(_086_)
  );
  NOR _298_ (
    .A(_086_),
    .B(_080_),
    .Y(_087_)
  );
  NOR _299_ (
    .A(_087_),
    .B(_038_),
    .Y(oDataOut[3])
  );
  NOR _300_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [4]),
    .Y(_088_)
  );
  NOT _301_ (
    .A(\Ram[3] [4]),
    .Y(_089_)
  );
  NAND _302_ (
    .A(iReadAddress[0]),
    .B(_089_),
    .Y(_090_)
  );
  NAND _303_ (
    .A(_090_),
    .B(iReadAddress[1]),
    .Y(_091_)
  );
  NOR _304_ (
    .A(_091_),
    .B(_088_),
    .Y(_092_)
  );
  NOT _305_ (
    .A(\Ram[1] [4]),
    .Y(_093_)
  );
  NOR _306_ (
    .A(_045_),
    .B(_093_),
    .Y(_094_)
  );
  NOT _307_ (
    .A(\Ram[0] [4]),
    .Y(_095_)
  );
  NOR _308_ (
    .A(iReadAddress[0]),
    .B(_095_),
    .Y(_096_)
  );
  NOR _309_ (
    .A(_096_),
    .B(_094_),
    .Y(_097_)
  );
  NOR _310_ (
    .A(_097_),
    .B(iReadAddress[1]),
    .Y(_098_)
  );
  NOR _311_ (
    .A(_098_),
    .B(_092_),
    .Y(_099_)
  );
  NOR _312_ (
    .A(_099_),
    .B(_038_),
    .Y(oDataOut[4])
  );
  NOR _313_ (
    .A(iReadAddress[0]),
    .B(\Ram[2] [5]),
    .Y(_101_)
  );
  NOT _314_ (
    .A(\Ram[3] [5]),
    .Y(_102_)
  );
  NAND _315_ (
    .A(iReadAddress[0]),
    .B(_102_),
    .Y(_103_)
  );
  NAND _316_ (
    .A(_103_),
    .B(iReadAddress[1]),
    .Y(_104_)
  );
  NOR _317_ (
    .A(_104_),
    .B(_101_),
    .Y(_105_)
  );
  NOT _318_ (
    .A(\Ram[1] [5]),
    .Y(_106_)
  );
  NOR _319_ (
    .A(_045_),
    .B(_106_),
    .Y(_107_)
  );
  NOT _320_ (
    .A(\Ram[0] [5]),
    .Y(_108_)
  );
  NOR _321_ (
    .A(iReadAddress[0]),
    .B(_108_),
    .Y(_109_)
  );
  NOR _322_ (
    .A(_109_),
    .B(_107_),
    .Y(_110_)
  );
  NOR _323_ (
    .A(_110_),
    .B(iReadAddress[1]),
    .Y(_111_)
  );
  NOR _324_ (
    .A(_111_),
    .B(_105_),
    .Y(_112_)
  );
  NOR _325_ (
    .A(_112_),
    .B(_038_),
    .Y(oDataOut[5])
  );
  DFF _326_ (
    .C(Clock),
    .D(_100_),
    .Q(\Ram[3] [0])
  );
  DFF _327_ (
    .C(Clock),
    .D(_113_),
    .Q(\Ram[3] [1])
  );
  DFF _328_ (
    .C(Clock),
    .D(_114_),
    .Q(\Ram[3] [2])
  );
  DFF _329_ (
    .C(Clock),
    .D(_115_),
    .Q(\Ram[3] [3])
  );
  DFF _330_ (
    .C(Clock),
    .D(_116_),
    .Q(\Ram[3] [4])
  );
  DFF _331_ (
    .C(Clock),
    .D(_117_),
    .Q(\Ram[3] [5])
  );
  DFF _332_ (
    .C(Clock),
    .D(_130_),
    .Q(\Ram[0] [0])
  );
  DFF _333_ (
    .C(Clock),
    .D(_132_),
    .Q(\Ram[0] [1])
  );
  DFF _334_ (
    .C(Clock),
    .D(_135_),
    .Q(\Ram[0] [2])
  );
  DFF _335_ (
    .C(Clock),
    .D(_138_),
    .Q(\Ram[0] [3])
  );
  DFF _336_ (
    .C(Clock),
    .D(_140_),
    .Q(\Ram[0] [4])
  );
  DFF _337_ (
    .C(Clock),
    .D(_143_),
    .Q(\Ram[0] [5])
  );
  DFF _338_ (
    .C(Clock),
    .D(_124_),
    .Q(\Ram[1] [0])
  );
  DFF _339_ (
    .C(Clock),
    .D(_125_),
    .Q(\Ram[1] [1])
  );
  DFF _340_ (
    .C(Clock),
    .D(_126_),
    .Q(\Ram[1] [2])
  );
  DFF _341_ (
    .C(Clock),
    .D(_127_),
    .Q(\Ram[1] [3])
  );
  DFF _342_ (
    .C(Clock),
    .D(_128_),
    .Q(\Ram[1] [4])
  );
  DFF _343_ (
    .C(Clock),
    .D(_129_),
    .Q(\Ram[1] [5])
  );
  DFF _344_ (
    .C(Clock),
    .D(_118_),
    .Q(\Ram[2] [0])
  );
  DFF _345_ (
    .C(Clock),
    .D(_119_),
    .Q(\Ram[2] [1])
  );
  DFF _346_ (
    .C(Clock),
    .D(_120_),
    .Q(\Ram[2] [2])
  );
  DFF _347_ (
    .C(Clock),
    .D(_121_),
    .Q(\Ram[2] [3])
  );
  DFF _348_ (
    .C(Clock),
    .D(_122_),
    .Q(\Ram[2] [4])
  );
  DFF _349_ (
    .C(Clock),
    .D(_123_),
    .Q(\Ram[2] [5])
  );
endmodule

module fifoSynth(clk, reset_L, push, pop, Fifo_Data_in, Fifo_Data_out, Almost_Empty, Almost_Full, Umbral, Pausa, Fifo_Empty, Fifo_Full, Error_Fifo);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire [4:0] _006_;
  wire [3:0] _007_;
  wire [3:0] _008_;
  wire [4:0] _009_;
  wire [3:0] _010_;
  wire [3:0] _011_;
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
  output Almost_Empty;
  output Almost_Full;
  output Error_Fifo;
  input [5:0] Fifo_Data_in;
  output [5:0] Fifo_Data_out;
  output Fifo_Empty;
  output Fifo_Full;
  output Pausa;
  output [4:0] Umbral;
  input clk;
  wire [4:0] num_mem;
  input pop;
  input push;
  wire [3:0] rd_ptr;
  input reset_L;
  wire [3:0] wr_ptr;
  NOT _151_ (
    .A(pop),
    .Y(_114_)
  );
  NOR _152_ (
    .A(_114_),
    .B(num_mem[2]),
    .Y(_115_)
  );
  NOT _153_ (
    .A(num_mem[3]),
    .Y(_116_)
  );
  NOT _154_ (
    .A(num_mem[4]),
    .Y(_117_)
  );
  NAND _155_ (
    .A(_117_),
    .B(_116_),
    .Y(_118_)
  );
  NOR _156_ (
    .A(num_mem[1]),
    .B(num_mem[0]),
    .Y(_119_)
  );
  NOT _157_ (
    .A(_119_),
    .Y(_120_)
  );
  NOR _158_ (
    .A(_120_),
    .B(_118_),
    .Y(_121_)
  );
  NAND _159_ (
    .A(_121_),
    .B(_115_),
    .Y(_122_)
  );
  NOT _160_ (
    .A(num_mem[0]),
    .Y(_123_)
  );
  NOT _161_ (
    .A(num_mem[1]),
    .Y(_124_)
  );
  NOR _162_ (
    .A(num_mem[2]),
    .B(num_mem[3]),
    .Y(_125_)
  );
  NAND _163_ (
    .A(_125_),
    .B(_124_),
    .Y(_126_)
  );
  NOR _164_ (
    .A(_126_),
    .B(_123_),
    .Y(_127_)
  );
  NAND _165_ (
    .A(_127_),
    .B(num_mem[4]),
    .Y(_128_)
  );
  NAND _166_ (
    .A(_128_),
    .B(_122_),
    .Y(_002_)
  );
  NOR _167_ (
    .A(pop),
    .B(push),
    .Y(_129_)
  );
  NOR _168_ (
    .A(_129_),
    .B(_123_),
    .Y(_130_)
  );
  NAND _169_ (
    .A(_129_),
    .B(_123_),
    .Y(_131_)
  );
  NAND _170_ (
    .A(_131_),
    .B(reset_L),
    .Y(_132_)
  );
  NOR _171_ (
    .A(_132_),
    .B(_130_),
    .Y(_009_[0])
  );
  NAND _172_ (
    .A(push),
    .B(num_mem[0]),
    .Y(_133_)
  );
  NOR _173_ (
    .A(_114_),
    .B(push),
    .Y(_134_)
  );
  NAND _174_ (
    .A(_134_),
    .B(_123_),
    .Y(_135_)
  );
  NAND _175_ (
    .A(_135_),
    .B(_133_),
    .Y(_136_)
  );
  NOR _176_ (
    .A(_136_),
    .B(num_mem[1]),
    .Y(_137_)
  );
  NAND _177_ (
    .A(_136_),
    .B(num_mem[1]),
    .Y(_138_)
  );
  NAND _178_ (
    .A(_138_),
    .B(reset_L),
    .Y(_139_)
  );
  NOR _179_ (
    .A(_139_),
    .B(_137_),
    .Y(_009_[1])
  );
  NOT _180_ (
    .A(num_mem[2]),
    .Y(_140_)
  );
  NOR _181_ (
    .A(_133_),
    .B(_124_),
    .Y(_141_)
  );
  NOT _182_ (
    .A(push),
    .Y(_142_)
  );
  NAND _183_ (
    .A(pop),
    .B(_142_),
    .Y(_143_)
  );
  NOR _184_ (
    .A(_143_),
    .B(_120_),
    .Y(_144_)
  );
  NOR _185_ (
    .A(_144_),
    .B(_141_),
    .Y(_145_)
  );
  NOR _186_ (
    .A(_145_),
    .B(_140_),
    .Y(_146_)
  );
  NAND _187_ (
    .A(_145_),
    .B(_140_),
    .Y(_147_)
  );
  NAND _188_ (
    .A(_147_),
    .B(reset_L),
    .Y(_148_)
  );
  NOR _189_ (
    .A(_148_),
    .B(_146_),
    .Y(_009_[2])
  );
  NAND _190_ (
    .A(_119_),
    .B(_115_),
    .Y(_149_)
  );
  NOR _191_ (
    .A(_142_),
    .B(_123_),
    .Y(_150_)
  );
  NAND _192_ (
    .A(_150_),
    .B(num_mem[1]),
    .Y(_012_)
  );
  NAND _193_ (
    .A(_012_),
    .B(_149_),
    .Y(_013_)
  );
  NAND _194_ (
    .A(push),
    .B(_140_),
    .Y(_014_)
  );
  NAND _195_ (
    .A(_014_),
    .B(_013_),
    .Y(_015_)
  );
  NOR _196_ (
    .A(_015_),
    .B(_116_),
    .Y(_016_)
  );
  NAND _197_ (
    .A(_015_),
    .B(_116_),
    .Y(_017_)
  );
  NAND _198_ (
    .A(_017_),
    .B(reset_L),
    .Y(_018_)
  );
  NOR _199_ (
    .A(_018_),
    .B(_016_),
    .Y(_009_[3])
  );
  NAND _200_ (
    .A(num_mem[2]),
    .B(num_mem[3]),
    .Y(_019_)
  );
  NOR _201_ (
    .A(_019_),
    .B(_012_),
    .Y(_020_)
  );
  NAND _202_ (
    .A(_125_),
    .B(_119_),
    .Y(_021_)
  );
  NOR _203_ (
    .A(_021_),
    .B(push),
    .Y(_022_)
  );
  NOR _204_ (
    .A(_022_),
    .B(_020_),
    .Y(_023_)
  );
  NOR _205_ (
    .A(_023_),
    .B(_129_),
    .Y(_024_)
  );
  NOR _206_ (
    .A(_024_),
    .B(num_mem[4]),
    .Y(_025_)
  );
  NOT _207_ (
    .A(_019_),
    .Y(_026_)
  );
  NAND _208_ (
    .A(_026_),
    .B(_141_),
    .Y(_027_)
  );
  NOR _209_ (
    .A(_126_),
    .B(num_mem[0]),
    .Y(_028_)
  );
  NAND _210_ (
    .A(_028_),
    .B(_142_),
    .Y(_029_)
  );
  NAND _211_ (
    .A(_029_),
    .B(_027_),
    .Y(_030_)
  );
  NOR _212_ (
    .A(_129_),
    .B(_117_),
    .Y(_031_)
  );
  NAND _213_ (
    .A(_031_),
    .B(_030_),
    .Y(_032_)
  );
  NAND _214_ (
    .A(_032_),
    .B(reset_L),
    .Y(_033_)
  );
  NOR _215_ (
    .A(_033_),
    .B(_025_),
    .Y(_009_[4])
  );
  NOT _216_ (
    .A(rd_ptr[0]),
    .Y(_034_)
  );
  NOR _217_ (
    .A(_143_),
    .B(_034_),
    .Y(_035_)
  );
  NAND _218_ (
    .A(_143_),
    .B(_034_),
    .Y(_036_)
  );
  NAND _219_ (
    .A(_036_),
    .B(reset_L),
    .Y(_037_)
  );
  NOR _220_ (
    .A(_037_),
    .B(_035_),
    .Y(_010_[0])
  );
  NOT _221_ (
    .A(rd_ptr[1]),
    .Y(_038_)
  );
  NAND _222_ (
    .A(_134_),
    .B(rd_ptr[0]),
    .Y(_039_)
  );
  NOR _223_ (
    .A(_039_),
    .B(_038_),
    .Y(_040_)
  );
  NAND _224_ (
    .A(_039_),
    .B(_038_),
    .Y(_041_)
  );
  NAND _225_ (
    .A(_041_),
    .B(reset_L),
    .Y(_042_)
  );
  NOR _226_ (
    .A(_042_),
    .B(_040_),
    .Y(_010_[1])
  );
  NOT _227_ (
    .A(rd_ptr[2]),
    .Y(_043_)
  );
  NAND _228_ (
    .A(_035_),
    .B(rd_ptr[1]),
    .Y(_044_)
  );
  NOR _229_ (
    .A(_044_),
    .B(_043_),
    .Y(_045_)
  );
  NAND _230_ (
    .A(_044_),
    .B(_043_),
    .Y(_046_)
  );
  NAND _231_ (
    .A(_046_),
    .B(reset_L),
    .Y(_047_)
  );
  NOR _232_ (
    .A(_047_),
    .B(_045_),
    .Y(_010_[2])
  );
  NOT _233_ (
    .A(reset_L),
    .Y(_048_)
  );
  NOT _234_ (
    .A(rd_ptr[3]),
    .Y(_049_)
  );
  NOR _235_ (
    .A(_045_),
    .B(_049_),
    .Y(_050_)
  );
  NAND _236_ (
    .A(_040_),
    .B(rd_ptr[2]),
    .Y(_051_)
  );
  NOR _237_ (
    .A(_051_),
    .B(rd_ptr[3]),
    .Y(_052_)
  );
  NOR _238_ (
    .A(_052_),
    .B(_050_),
    .Y(_053_)
  );
  NOR _239_ (
    .A(_053_),
    .B(_048_),
    .Y(_010_[3])
  );
  NAND _240_ (
    .A(wr_ptr[0]),
    .B(push),
    .Y(_054_)
  );
  NOT _241_ (
    .A(_054_),
    .Y(_055_)
  );
  NOT _242_ (
    .A(wr_ptr[0]),
    .Y(_056_)
  );
  NAND _243_ (
    .A(_056_),
    .B(_142_),
    .Y(_057_)
  );
  NAND _244_ (
    .A(_057_),
    .B(reset_L),
    .Y(_058_)
  );
  NOR _245_ (
    .A(_058_),
    .B(_055_),
    .Y(_011_[0])
  );
  NOT _246_ (
    .A(wr_ptr[1]),
    .Y(_059_)
  );
  NOR _247_ (
    .A(_054_),
    .B(_059_),
    .Y(_060_)
  );
  NAND _248_ (
    .A(_054_),
    .B(_059_),
    .Y(_061_)
  );
  NAND _249_ (
    .A(_061_),
    .B(reset_L),
    .Y(_062_)
  );
  NOR _250_ (
    .A(_062_),
    .B(_060_),
    .Y(_011_[1])
  );
  NAND _251_ (
    .A(_060_),
    .B(wr_ptr[2]),
    .Y(_063_)
  );
  NOT _252_ (
    .A(_063_),
    .Y(_064_)
  );
  NOT _253_ (
    .A(wr_ptr[2]),
    .Y(_065_)
  );
  NOT _254_ (
    .A(_060_),
    .Y(_066_)
  );
  NAND _255_ (
    .A(_066_),
    .B(_065_),
    .Y(_067_)
  );
  NAND _256_ (
    .A(_067_),
    .B(reset_L),
    .Y(_068_)
  );
  NOR _257_ (
    .A(_068_),
    .B(_064_),
    .Y(_011_[2])
  );
  NOT _258_ (
    .A(wr_ptr[3]),
    .Y(_069_)
  );
  NOR _259_ (
    .A(_063_),
    .B(_069_),
    .Y(_070_)
  );
  NAND _260_ (
    .A(_063_),
    .B(_069_),
    .Y(_071_)
  );
  NAND _261_ (
    .A(_071_),
    .B(reset_L),
    .Y(_072_)
  );
  NOR _262_ (
    .A(_072_),
    .B(_070_),
    .Y(_011_[3])
  );
  NOT _263_ (
    .A(Fifo_Full),
    .Y(_073_)
  );
  NOT _264_ (
    .A(_129_),
    .Y(_074_)
  );
  NOR _265_ (
    .A(_074_),
    .B(_073_),
    .Y(_075_)
  );
  NAND _266_ (
    .A(_031_),
    .B(_028_),
    .Y(_076_)
  );
  NOT _267_ (
    .A(_076_),
    .Y(_077_)
  );
  NOR _268_ (
    .A(_077_),
    .B(_075_),
    .Y(_078_)
  );
  NOR _269_ (
    .A(_078_),
    .B(_048_),
    .Y(_004_)
  );
  NOR _270_ (
    .A(_129_),
    .B(num_mem[2]),
    .Y(_079_)
  );
  NAND _271_ (
    .A(_079_),
    .B(_121_),
    .Y(_080_)
  );
  NOT _272_ (
    .A(Fifo_Empty),
    .Y(_081_)
  );
  NOR _273_ (
    .A(_074_),
    .B(_081_),
    .Y(_082_)
  );
  NOR _274_ (
    .A(_082_),
    .B(_048_),
    .Y(_083_)
  );
  NAND _275_ (
    .A(_083_),
    .B(_080_),
    .Y(_003_)
  );
  NAND _276_ (
    .A(_074_),
    .B(_117_),
    .Y(_084_)
  );
  NOR _277_ (
    .A(_084_),
    .B(_019_),
    .Y(_085_)
  );
  NAND _278_ (
    .A(_129_),
    .B(Pausa),
    .Y(_086_)
  );
  NAND _279_ (
    .A(_086_),
    .B(_076_),
    .Y(_087_)
  );
  NOR _280_ (
    .A(_087_),
    .B(_085_),
    .Y(_088_)
  );
  NOR _281_ (
    .A(_088_),
    .B(_048_),
    .Y(_005_)
  );
  NOT _282_ (
    .A(Umbral[0]),
    .Y(_089_)
  );
  NOR _283_ (
    .A(_074_),
    .B(_089_),
    .Y(_090_)
  );
  NOR _284_ (
    .A(_090_),
    .B(_130_),
    .Y(_091_)
  );
  NOR _285_ (
    .A(_091_),
    .B(_048_),
    .Y(_006_[0])
  );
  NOR _286_ (
    .A(_129_),
    .B(num_mem[1]),
    .Y(_092_)
  );
  NOT _287_ (
    .A(Umbral[1]),
    .Y(_093_)
  );
  NAND _288_ (
    .A(_129_),
    .B(_093_),
    .Y(_094_)
  );
  NAND _289_ (
    .A(_094_),
    .B(reset_L),
    .Y(_095_)
  );
  NOR _290_ (
    .A(_095_),
    .B(_092_),
    .Y(_006_[1])
  );
  NOT _291_ (
    .A(Umbral[2]),
    .Y(_096_)
  );
  NAND _292_ (
    .A(_129_),
    .B(_096_),
    .Y(_097_)
  );
  NAND _293_ (
    .A(_097_),
    .B(reset_L),
    .Y(_098_)
  );
  NOR _294_ (
    .A(_098_),
    .B(_079_),
    .Y(_006_[2])
  );
  NOR _295_ (
    .A(_129_),
    .B(num_mem[3]),
    .Y(_099_)
  );
  NOT _296_ (
    .A(Umbral[3]),
    .Y(_100_)
  );
  NAND _297_ (
    .A(_129_),
    .B(_100_),
    .Y(_101_)
  );
  NAND _298_ (
    .A(_101_),
    .B(reset_L),
    .Y(_102_)
  );
  NOR _299_ (
    .A(_102_),
    .B(_099_),
    .Y(_006_[3])
  );
  NOT _300_ (
    .A(Umbral[4]),
    .Y(_103_)
  );
  NOR _301_ (
    .A(_074_),
    .B(_103_),
    .Y(_104_)
  );
  NOR _302_ (
    .A(_104_),
    .B(_031_),
    .Y(_105_)
  );
  NOR _303_ (
    .A(_105_),
    .B(_048_),
    .Y(_006_[4])
  );
  NOT _304_ (
    .A(Almost_Full),
    .Y(_106_)
  );
  NOR _305_ (
    .A(_074_),
    .B(_106_),
    .Y(_107_)
  );
  NOR _306_ (
    .A(_107_),
    .B(_085_),
    .Y(_108_)
  );
  NOR _307_ (
    .A(_108_),
    .B(_048_),
    .Y(_001_)
  );
  NOR _308_ (
    .A(_129_),
    .B(_121_),
    .Y(_109_)
  );
  NOR _309_ (
    .A(_079_),
    .B(_048_),
    .Y(_110_)
  );
  NOT _310_ (
    .A(Almost_Empty),
    .Y(_111_)
  );
  NAND _311_ (
    .A(_129_),
    .B(_111_),
    .Y(_112_)
  );
  NAND _312_ (
    .A(_112_),
    .B(_110_),
    .Y(_113_)
  );
  NOR _313_ (
    .A(_113_),
    .B(_109_),
    .Y(_000_)
  );
  BUF _314_ (
    .A(rd_ptr[0]),
    .Y(_007_[0])
  );
  BUF _315_ (
    .A(rd_ptr[1]),
    .Y(_007_[1])
  );
  BUF _316_ (
    .A(rd_ptr[2]),
    .Y(_007_[2])
  );
  BUF _317_ (
    .A(rd_ptr[3]),
    .Y(_007_[3])
  );
  BUF _318_ (
    .A(wr_ptr[0]),
    .Y(_008_[0])
  );
  BUF _319_ (
    .A(wr_ptr[1]),
    .Y(_008_[1])
  );
  BUF _320_ (
    .A(wr_ptr[2]),
    .Y(_008_[2])
  );
  BUF _321_ (
    .A(wr_ptr[3]),
    .Y(_008_[3])
  );
  DFF _322_ (
    .C(clk),
    .D(_011_[0]),
    .Q(wr_ptr[0])
  );
  DFF _323_ (
    .C(clk),
    .D(_011_[1]),
    .Q(wr_ptr[1])
  );
  DFF _324_ (
    .C(clk),
    .D(_011_[2]),
    .Q(wr_ptr[2])
  );
  DFF _325_ (
    .C(clk),
    .D(_011_[3]),
    .Q(wr_ptr[3])
  );
  DFF _326_ (
    .C(clk),
    .D(_002_),
    .Q(Error_Fifo)
  );
  DFF _327_ (
    .C(clk),
    .D(_010_[0]),
    .Q(rd_ptr[0])
  );
  DFF _328_ (
    .C(clk),
    .D(_010_[1]),
    .Q(rd_ptr[1])
  );
  DFF _329_ (
    .C(clk),
    .D(_010_[2]),
    .Q(rd_ptr[2])
  );
  DFF _330_ (
    .C(clk),
    .D(_010_[3]),
    .Q(rd_ptr[3])
  );
  DFF _331_ (
    .C(clk),
    .D(_009_[0]),
    .Q(num_mem[0])
  );
  DFF _332_ (
    .C(clk),
    .D(_009_[1]),
    .Q(num_mem[1])
  );
  DFF _333_ (
    .C(clk),
    .D(_009_[2]),
    .Q(num_mem[2])
  );
  DFF _334_ (
    .C(clk),
    .D(_009_[3]),
    .Q(num_mem[3])
  );
  DFF _335_ (
    .C(clk),
    .D(_009_[4]),
    .Q(num_mem[4])
  );
  DFF _336_ (
    .C(clk),
    .D(_000_),
    .Q(Almost_Empty)
  );
  DFF _337_ (
    .C(clk),
    .D(_001_),
    .Q(Almost_Full)
  );
  DFF _338_ (
    .C(clk),
    .D(_006_[0]),
    .Q(Umbral[0])
  );
  DFF _339_ (
    .C(clk),
    .D(_006_[1]),
    .Q(Umbral[1])
  );
  DFF _340_ (
    .C(clk),
    .D(_006_[2]),
    .Q(Umbral[2])
  );
  DFF _341_ (
    .C(clk),
    .D(_006_[3]),
    .Q(Umbral[3])
  );
  DFF _342_ (
    .C(clk),
    .D(_006_[4]),
    .Q(Umbral[4])
  );
  DFF _343_ (
    .C(clk),
    .D(_005_),
    .Q(Pausa)
  );
  DFF _344_ (
    .C(clk),
    .D(_003_),
    .Q(Fifo_Empty)
  );
  DFF _345_ (
    .C(clk),
    .D(_004_),
    .Q(Fifo_Full)
  );
  DFF _346_ (
    .C(clk),
    .D(_008_[0]),
    .Q(wr_ptr[0])
  );
  DFF _347_ (
    .C(clk),
    .D(_008_[1]),
    .Q(wr_ptr[1])
  );
  DFF _348_ (
    .C(clk),
    .D(_008_[2]),
    .Q(wr_ptr[2])
  );
  DFF _349_ (
    .C(clk),
    .D(_008_[3]),
    .Q(wr_ptr[3])
  );
  DFF _350_ (
    .C(clk),
    .D(_007_[0]),
    .Q(rd_ptr[0])
  );
  DFF _351_ (
    .C(clk),
    .D(_007_[1]),
    .Q(rd_ptr[1])
  );
  DFF _352_ (
    .C(clk),
    .D(_007_[2]),
    .Q(rd_ptr[2])
  );
  DFF _353_ (
    .C(clk),
    .D(_007_[3]),
    .Q(rd_ptr[3])
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
