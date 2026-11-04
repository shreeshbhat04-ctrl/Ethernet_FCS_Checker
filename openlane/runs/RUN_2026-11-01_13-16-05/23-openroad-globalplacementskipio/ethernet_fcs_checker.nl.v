module ethernet_fcs_checker (clk,
    fcs_error,
    fcs_valid,
    in_eop,
    in_sop,
    in_valid,
    rst,
    data_in,
    frame_len);
 input clk;
 output fcs_error;
 output fcs_valid;
 input in_eop;
 input in_sop;
 input in_valid;
 input rst;
 input [7:0] data_in;
 output [15:0] frame_len;

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
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire _175_;
 wire _176_;
 wire _177_;
 wire _178_;
 wire _179_;
 wire _180_;
 wire _181_;
 wire _182_;
 wire _183_;
 wire _184_;
 wire _185_;
 wire _186_;
 wire _187_;
 wire _188_;
 wire _189_;
 wire _190_;
 wire _191_;
 wire _192_;
 wire _193_;
 wire _194_;
 wire _195_;
 wire _196_;
 wire _197_;
 wire _198_;
 wire _199_;
 wire _200_;
 wire _201_;
 wire _202_;
 wire _203_;
 wire _204_;
 wire _205_;
 wire _206_;
 wire _207_;
 wire _208_;
 wire _209_;
 wire _210_;
 wire _211_;
 wire _212_;
 wire _213_;
 wire _214_;
 wire _215_;
 wire _216_;
 wire _217_;
 wire _218_;
 wire _219_;
 wire _220_;
 wire _221_;
 wire _222_;
 wire _223_;
 wire _224_;
 wire _225_;
 wire _226_;
 wire _227_;
 wire _228_;
 wire _229_;
 wire _230_;
 wire _231_;
 wire _232_;
 wire _233_;
 wire _234_;
 wire _235_;
 wire _236_;
 wire _237_;
 wire _238_;
 wire _239_;
 wire _240_;
 wire _241_;
 wire _242_;
 wire _243_;
 wire _244_;
 wire _245_;
 wire _246_;
 wire _247_;
 wire _248_;
 wire _249_;
 wire _250_;
 wire _251_;
 wire _252_;
 wire _253_;
 wire _254_;
 wire _255_;
 wire _256_;
 wire _257_;
 wire _258_;
 wire _259_;
 wire _260_;
 wire _261_;
 wire _262_;
 wire _263_;
 wire _264_;
 wire _265_;
 wire _266_;
 wire _267_;
 wire _268_;
 wire _269_;
 wire _270_;
 wire _271_;
 wire _272_;
 wire _273_;
 wire _274_;
 wire _275_;
 wire _276_;
 wire _277_;
 wire _278_;
 wire _279_;
 wire _280_;
 wire _281_;
 wire _282_;
 wire _283_;
 wire _284_;
 wire _285_;
 wire _286_;
 wire _287_;
 wire _288_;
 wire _289_;
 wire _290_;
 wire _291_;
 wire _292_;
 wire _293_;
 wire _294_;
 wire _295_;
 wire _296_;
 wire _297_;
 wire _298_;
 wire _299_;
 wire _300_;
 wire _301_;
 wire _302_;
 wire _303_;
 wire _304_;
 wire _305_;
 wire _306_;
 wire _307_;
 wire _308_;
 wire _309_;
 wire _310_;
 wire _311_;
 wire _312_;
 wire _313_;
 wire _314_;
 wire _315_;
 wire _316_;
 wire _317_;
 wire _318_;
 wire _319_;
 wire _320_;
 wire _321_;
 wire _322_;
 wire _323_;
 wire _324_;
 wire _325_;
 wire _326_;
 wire _327_;
 wire _328_;
 wire _329_;
 wire _330_;
 wire _331_;
 wire _332_;
 wire _333_;
 wire _334_;
 wire _335_;
 wire _336_;
 wire _337_;
 wire _338_;
 wire _339_;
 wire _340_;
 wire _341_;
 wire _342_;
 wire _343_;
 wire _344_;
 wire _345_;
 wire _346_;
 wire _347_;
 wire _348_;
 wire _349_;
 wire _350_;
 wire _351_;
 wire _352_;
 wire _353_;
 wire _354_;
 wire _355_;
 wire _356_;
 wire _357_;
 wire _358_;
 wire _359_;
 wire _360_;
 wire _361_;
 wire _362_;
 wire _363_;
 wire _364_;
 wire _365_;
 wire _366_;
 wire _367_;
 wire _368_;
 wire _369_;
 wire _370_;
 wire _371_;
 wire _372_;
 wire _373_;
 wire _374_;
 wire _375_;
 wire _376_;
 wire _377_;
 wire _378_;
 wire _379_;
 wire _380_;
 wire _381_;
 wire _382_;
 wire _383_;
 wire _384_;
 wire _385_;
 wire _386_;
 wire _387_;
 wire _388_;
 wire _389_;
 wire _390_;
 wire _391_;
 wire _392_;
 wire _393_;
 wire _394_;
 wire _395_;
 wire _396_;
 wire _397_;
 wire _398_;
 wire _399_;
 wire _400_;
 wire _401_;
 wire _402_;
 wire _403_;
 wire _404_;
 wire _405_;
 wire _406_;
 wire _407_;
 wire _408_;
 wire _409_;
 wire _410_;
 wire _411_;
 wire _412_;
 wire _413_;
 wire _414_;
 wire _415_;
 wire _416_;
 wire _417_;
 wire _418_;
 wire _419_;
 wire _420_;
 wire _421_;
 wire _422_;
 wire _423_;
 wire _424_;
 wire _425_;
 wire _426_;
 wire \crc_reg[0] ;
 wire \crc_reg[10] ;
 wire \crc_reg[11] ;
 wire \crc_reg[12] ;
 wire \crc_reg[13] ;
 wire \crc_reg[14] ;
 wire \crc_reg[15] ;
 wire \crc_reg[16] ;
 wire \crc_reg[17] ;
 wire \crc_reg[18] ;
 wire \crc_reg[19] ;
 wire \crc_reg[1] ;
 wire \crc_reg[20] ;
 wire \crc_reg[21] ;
 wire \crc_reg[22] ;
 wire \crc_reg[23] ;
 wire \crc_reg[24] ;
 wire \crc_reg[25] ;
 wire \crc_reg[26] ;
 wire \crc_reg[27] ;
 wire \crc_reg[28] ;
 wire \crc_reg[29] ;
 wire \crc_reg[2] ;
 wire \crc_reg[30] ;
 wire \crc_reg[31] ;
 wire \crc_reg[3] ;
 wire \crc_reg[4] ;
 wire \crc_reg[5] ;
 wire \crc_reg[6] ;
 wire \crc_reg[7] ;
 wire \crc_reg[8] ;
 wire \crc_reg[9] ;
 wire \len_cnt[0] ;
 wire \len_cnt[10] ;
 wire \len_cnt[11] ;
 wire \len_cnt[12] ;
 wire \len_cnt[13] ;
 wire \len_cnt[14] ;
 wire \len_cnt[15] ;
 wire \len_cnt[1] ;
 wire \len_cnt[2] ;
 wire \len_cnt[3] ;
 wire \len_cnt[4] ;
 wire \len_cnt[5] ;
 wire \len_cnt[6] ;
 wire \len_cnt[7] ;
 wire \len_cnt[8] ;
 wire \len_cnt[9] ;

 sky130_fd_sc_hd__inv_2 _427_ (.A(in_valid),
    .Y(_132_));
 sky130_fd_sc_hd__inv_2 _428_ (.A(in_sop),
    .Y(_133_));
 sky130_fd_sc_hd__inv_2 _429_ (.A(in_eop),
    .Y(_134_));
 sky130_fd_sc_hd__inv_2 _430_ (.A(rst),
    .Y(_002_));
 sky130_fd_sc_hd__or2_2 _431_ (.A(\crc_reg[29] ),
    .B(\crc_reg[23] ),
    .X(_135_));
 sky130_fd_sc_hd__nand2_2 _432_ (.A(\crc_reg[29] ),
    .B(\crc_reg[23] ),
    .Y(_136_));
 sky130_fd_sc_hd__a31o_2 _433_ (.A1(_133_),
    .A2(_135_),
    .A3(_136_),
    .B1(data_in[2]),
    .X(_137_));
 sky130_fd_sc_hd__nand4_2 _434_ (.A(_133_),
    .B(data_in[2]),
    .C(_135_),
    .D(_136_),
    .Y(_138_));
 sky130_fd_sc_hd__and3_2 _435_ (.A(in_valid),
    .B(_137_),
    .C(_138_),
    .X(_139_));
 sky130_fd_sc_hd__a21o_2 _436_ (.A1(\crc_reg[31] ),
    .A2(_132_),
    .B1(_139_),
    .X(_131_));
 sky130_fd_sc_hd__nor2_2 _437_ (.A(\crc_reg[28] ),
    .B(\crc_reg[22] ),
    .Y(_140_));
 sky130_fd_sc_hd__and2_2 _438_ (.A(\crc_reg[28] ),
    .B(\crc_reg[22] ),
    .X(_141_));
 sky130_fd_sc_hd__o21a_2 _439_ (.A1(_140_),
    .A2(_141_),
    .B1(\crc_reg[31] ),
    .X(_142_));
 sky130_fd_sc_hd__nor3_2 _440_ (.A(\crc_reg[31] ),
    .B(_140_),
    .C(_141_),
    .Y(_143_));
 sky130_fd_sc_hd__xor2_2 _441_ (.A(data_in[0]),
    .B(data_in[3]),
    .X(_144_));
 sky130_fd_sc_hd__or4_2 _442_ (.A(in_sop),
    .B(_142_),
    .C(_143_),
    .D(_144_),
    .X(_145_));
 sky130_fd_sc_hd__o31ai_2 _443_ (.A1(in_sop),
    .A2(_142_),
    .A3(_143_),
    .B1(_144_),
    .Y(_146_));
 sky130_fd_sc_hd__and3_2 _444_ (.A(in_valid),
    .B(_145_),
    .C(_146_),
    .X(_147_));
 sky130_fd_sc_hd__a21o_2 _445_ (.A1(_132_),
    .A2(\crc_reg[30] ),
    .B1(_147_),
    .X(_130_));
 sky130_fd_sc_hd__xor2_2 _446_ (.A(\crc_reg[31] ),
    .B(\crc_reg[30] ),
    .X(_148_));
 sky130_fd_sc_hd__xnor2_2 _447_ (.A(\crc_reg[31] ),
    .B(\crc_reg[30] ),
    .Y(_149_));
 sky130_fd_sc_hd__xor2_2 _448_ (.A(\crc_reg[27] ),
    .B(\crc_reg[21] ),
    .X(_150_));
 sky130_fd_sc_hd__xnor2_2 _449_ (.A(_149_),
    .B(_150_),
    .Y(_151_));
 sky130_fd_sc_hd__xnor2_2 _450_ (.A(data_in[0]),
    .B(data_in[4]),
    .Y(_152_));
 sky130_fd_sc_hd__inv_2 _451_ (.A(_152_),
    .Y(_153_));
 sky130_fd_sc_hd__xor2_2 _452_ (.A(data_in[1]),
    .B(_152_),
    .X(_154_));
 sky130_fd_sc_hd__nand3_2 _453_ (.A(_133_),
    .B(_151_),
    .C(_154_),
    .Y(_155_));
 sky130_fd_sc_hd__a21o_2 _454_ (.A1(_133_),
    .A2(_151_),
    .B1(_154_),
    .X(_156_));
 sky130_fd_sc_hd__and3_2 _455_ (.A(in_valid),
    .B(_155_),
    .C(_156_),
    .X(_157_));
 sky130_fd_sc_hd__o21ba_2 _456_ (.A1(in_valid),
    .A2(\crc_reg[29] ),
    .B1_N(_157_),
    .X(_129_));
 sky130_fd_sc_hd__xnor2_2 _457_ (.A(\crc_reg[26] ),
    .B(\crc_reg[20] ),
    .Y(_158_));
 sky130_fd_sc_hd__xor2_2 _458_ (.A(\crc_reg[30] ),
    .B(\crc_reg[29] ),
    .X(_159_));
 sky130_fd_sc_hd__xnor2_2 _459_ (.A(_158_),
    .B(_159_),
    .Y(_160_));
 sky130_fd_sc_hd__xor2_2 _460_ (.A(data_in[1]),
    .B(data_in[2]),
    .X(_161_));
 sky130_fd_sc_hd__xor2_2 _461_ (.A(data_in[5]),
    .B(_161_),
    .X(_162_));
 sky130_fd_sc_hd__a21oi_2 _462_ (.A1(_133_),
    .A2(_160_),
    .B1(_162_),
    .Y(_163_));
 sky130_fd_sc_hd__and3_2 _463_ (.A(_133_),
    .B(_160_),
    .C(_162_),
    .X(_164_));
 sky130_fd_sc_hd__nand2_2 _464_ (.A(_132_),
    .B(\crc_reg[28] ),
    .Y(_165_));
 sky130_fd_sc_hd__o31ai_2 _465_ (.A1(_132_),
    .A2(_163_),
    .A3(_164_),
    .B1(_165_),
    .Y(_128_));
 sky130_fd_sc_hd__xnor2_2 _466_ (.A(\crc_reg[29] ),
    .B(\crc_reg[28] ),
    .Y(_166_));
 sky130_fd_sc_hd__xnor2_2 _467_ (.A(\crc_reg[25] ),
    .B(\crc_reg[19] ),
    .Y(_167_));
 sky130_fd_sc_hd__xnor2_2 _468_ (.A(_166_),
    .B(_167_),
    .Y(_168_));
 sky130_fd_sc_hd__nand2_2 _469_ (.A(\crc_reg[31] ),
    .B(_168_),
    .Y(_169_));
 sky130_fd_sc_hd__or2_2 _470_ (.A(\crc_reg[31] ),
    .B(_168_),
    .X(_170_));
 sky130_fd_sc_hd__xor2_2 _471_ (.A(data_in[3]),
    .B(data_in[2]),
    .X(_171_));
 sky130_fd_sc_hd__xnor2_2 _472_ (.A(data_in[0]),
    .B(data_in[6]),
    .Y(_172_));
 sky130_fd_sc_hd__xnor2_2 _473_ (.A(_171_),
    .B(_172_),
    .Y(_173_));
 sky130_fd_sc_hd__a31o_2 _474_ (.A1(_133_),
    .A2(_169_),
    .A3(_170_),
    .B1(_173_),
    .X(_174_));
 sky130_fd_sc_hd__nand4_2 _475_ (.A(_133_),
    .B(_169_),
    .C(_170_),
    .D(_173_),
    .Y(_175_));
 sky130_fd_sc_hd__and3_2 _476_ (.A(in_valid),
    .B(_174_),
    .C(_175_),
    .X(_176_));
 sky130_fd_sc_hd__o21ba_2 _477_ (.A1(in_valid),
    .A2(\crc_reg[27] ),
    .B1_N(_176_),
    .X(_127_));
 sky130_fd_sc_hd__or2_2 _478_ (.A(in_valid),
    .B(\crc_reg[26] ),
    .X(_177_));
 sky130_fd_sc_hd__xnor2_2 _479_ (.A(\crc_reg[28] ),
    .B(\crc_reg[27] ),
    .Y(_178_));
 sky130_fd_sc_hd__xnor2_2 _480_ (.A(\crc_reg[30] ),
    .B(\crc_reg[24] ),
    .Y(_179_));
 sky130_fd_sc_hd__xnor2_2 _481_ (.A(\crc_reg[18] ),
    .B(_179_),
    .Y(_180_));
 sky130_fd_sc_hd__nand2_2 _482_ (.A(_178_),
    .B(_180_),
    .Y(_181_));
 sky130_fd_sc_hd__or2_2 _483_ (.A(_178_),
    .B(_180_),
    .X(_182_));
 sky130_fd_sc_hd__xnor2_2 _484_ (.A(data_in[4]),
    .B(data_in[3]),
    .Y(_183_));
 sky130_fd_sc_hd__xnor2_2 _485_ (.A(data_in[7]),
    .B(data_in[1]),
    .Y(_184_));
 sky130_fd_sc_hd__xor2_2 _486_ (.A(_183_),
    .B(_184_),
    .X(_185_));
 sky130_fd_sc_hd__a31oi_2 _487_ (.A1(_133_),
    .A2(_181_),
    .A3(_182_),
    .B1(_185_),
    .Y(_186_));
 sky130_fd_sc_hd__and4_2 _488_ (.A(_133_),
    .B(_181_),
    .C(_182_),
    .D(_185_),
    .X(_187_));
 sky130_fd_sc_hd__o31a_2 _489_ (.A1(_132_),
    .A2(_186_),
    .A3(_187_),
    .B1(_177_),
    .X(_126_));
 sky130_fd_sc_hd__xnor2_2 _490_ (.A(\crc_reg[27] ),
    .B(\crc_reg[26] ),
    .Y(_188_));
 sky130_fd_sc_hd__or2_2 _491_ (.A(\crc_reg[17] ),
    .B(_188_),
    .X(_189_));
 sky130_fd_sc_hd__a21oi_2 _492_ (.A1(\crc_reg[17] ),
    .A2(_188_),
    .B1(in_sop),
    .Y(_190_));
 sky130_fd_sc_hd__xnor2_2 _493_ (.A(data_in[4]),
    .B(data_in[5]),
    .Y(_191_));
 sky130_fd_sc_hd__a21o_2 _494_ (.A1(_189_),
    .A2(_190_),
    .B1(_191_),
    .X(_192_));
 sky130_fd_sc_hd__nand3_2 _495_ (.A(_189_),
    .B(_190_),
    .C(_191_),
    .Y(_193_));
 sky130_fd_sc_hd__and3_2 _496_ (.A(in_valid),
    .B(_192_),
    .C(_193_),
    .X(_194_));
 sky130_fd_sc_hd__a21o_2 _497_ (.A1(_132_),
    .A2(\crc_reg[25] ),
    .B1(_194_),
    .X(_125_));
 sky130_fd_sc_hd__or2_2 _498_ (.A(\crc_reg[16] ),
    .B(in_sop),
    .X(_195_));
 sky130_fd_sc_hd__nor2_2 _499_ (.A(\crc_reg[31] ),
    .B(in_sop),
    .Y(_196_));
 sky130_fd_sc_hd__or3b_2 _500_ (.A(\crc_reg[31] ),
    .B(in_sop),
    .C_N(data_in[5]),
    .X(_197_));
 sky130_fd_sc_hd__o21bai_2 _501_ (.A1(\crc_reg[31] ),
    .A2(in_sop),
    .B1_N(data_in[5]),
    .Y(_198_));
 sky130_fd_sc_hd__a21oi_2 _502_ (.A1(_197_),
    .A2(_198_),
    .B1(_195_),
    .Y(_199_));
 sky130_fd_sc_hd__and3_2 _503_ (.A(_195_),
    .B(_197_),
    .C(_198_),
    .X(_200_));
 sky130_fd_sc_hd__xor2_2 _504_ (.A(\crc_reg[26] ),
    .B(\crc_reg[25] ),
    .X(_201_));
 sky130_fd_sc_hd__and3_2 _505_ (.A(_133_),
    .B(_172_),
    .C(_201_),
    .X(_202_));
 sky130_fd_sc_hd__a21oi_2 _506_ (.A1(_133_),
    .A2(_201_),
    .B1(_172_),
    .Y(_203_));
 sky130_fd_sc_hd__or4_2 _507_ (.A(_199_),
    .B(_200_),
    .C(_202_),
    .D(_203_),
    .X(_204_));
 sky130_fd_sc_hd__o22ai_2 _508_ (.A1(_199_),
    .A2(_200_),
    .B1(_202_),
    .B2(_203_),
    .Y(_205_));
 sky130_fd_sc_hd__and2_2 _509_ (.A(_132_),
    .B(\crc_reg[24] ),
    .X(_206_));
 sky130_fd_sc_hd__a31o_2 _510_ (.A1(in_valid),
    .A2(_204_),
    .A3(_205_),
    .B1(_206_),
    .X(_124_));
 sky130_fd_sc_hd__xnor2_2 _511_ (.A(\crc_reg[25] ),
    .B(\crc_reg[24] ),
    .Y(_207_));
 sky130_fd_sc_hd__xnor2_2 _512_ (.A(\crc_reg[30] ),
    .B(_207_),
    .Y(_208_));
 sky130_fd_sc_hd__o21ai_2 _513_ (.A1(\crc_reg[15] ),
    .A2(in_sop),
    .B1(data_in[6]),
    .Y(_209_));
 sky130_fd_sc_hd__or3_2 _514_ (.A(\crc_reg[15] ),
    .B(in_sop),
    .C(data_in[6]),
    .X(_210_));
 sky130_fd_sc_hd__a21oi_2 _515_ (.A1(_209_),
    .A2(_210_),
    .B1(_184_),
    .Y(_211_));
 sky130_fd_sc_hd__and3_2 _516_ (.A(_184_),
    .B(_209_),
    .C(_210_),
    .X(_212_));
 sky130_fd_sc_hd__nor4_2 _517_ (.A(in_sop),
    .B(_208_),
    .C(_211_),
    .D(_212_),
    .Y(_213_));
 sky130_fd_sc_hd__o22a_2 _518_ (.A1(in_sop),
    .A2(_208_),
    .B1(_211_),
    .B2(_212_),
    .X(_214_));
 sky130_fd_sc_hd__or3_2 _519_ (.A(_132_),
    .B(_213_),
    .C(_214_),
    .X(_215_));
 sky130_fd_sc_hd__a21bo_2 _520_ (.A1(_132_),
    .A2(\crc_reg[23] ),
    .B1_N(_215_),
    .X(_123_));
 sky130_fd_sc_hd__or2_2 _521_ (.A(\crc_reg[24] ),
    .B(\crc_reg[14] ),
    .X(_216_));
 sky130_fd_sc_hd__a21oi_2 _522_ (.A1(\crc_reg[24] ),
    .A2(\crc_reg[14] ),
    .B1(in_sop),
    .Y(_217_));
 sky130_fd_sc_hd__a21oi_2 _523_ (.A1(_216_),
    .A2(_217_),
    .B1(data_in[7]),
    .Y(_218_));
 sky130_fd_sc_hd__and3_2 _524_ (.A(data_in[7]),
    .B(_216_),
    .C(_217_),
    .X(_219_));
 sky130_fd_sc_hd__or3_2 _525_ (.A(_132_),
    .B(_218_),
    .C(_219_),
    .X(_220_));
 sky130_fd_sc_hd__a21bo_2 _526_ (.A1(_132_),
    .A2(\crc_reg[22] ),
    .B1_N(_220_),
    .X(_122_));
 sky130_fd_sc_hd__a21oi_2 _527_ (.A1(\crc_reg[29] ),
    .A2(\crc_reg[13] ),
    .B1(in_sop),
    .Y(_221_));
 sky130_fd_sc_hd__o21ai_2 _528_ (.A1(\crc_reg[29] ),
    .A2(\crc_reg[13] ),
    .B1(_221_),
    .Y(_222_));
 sky130_fd_sc_hd__xnor2_2 _529_ (.A(data_in[2]),
    .B(_222_),
    .Y(_223_));
 sky130_fd_sc_hd__mux2_1 _530_ (.A0(\crc_reg[21] ),
    .A1(_223_),
    .S(in_valid),
    .X(_121_));
 sky130_fd_sc_hd__a21oi_2 _531_ (.A1(\crc_reg[28] ),
    .A2(\crc_reg[12] ),
    .B1(in_sop),
    .Y(_224_));
 sky130_fd_sc_hd__o21ai_2 _532_ (.A1(\crc_reg[28] ),
    .A2(\crc_reg[12] ),
    .B1(_224_),
    .Y(_225_));
 sky130_fd_sc_hd__xnor2_2 _533_ (.A(data_in[3]),
    .B(_225_),
    .Y(_226_));
 sky130_fd_sc_hd__mux2_1 _534_ (.A0(\crc_reg[20] ),
    .A1(_226_),
    .S(in_valid),
    .X(_120_));
 sky130_fd_sc_hd__nor2_2 _535_ (.A(\crc_reg[27] ),
    .B(\crc_reg[11] ),
    .Y(_227_));
 sky130_fd_sc_hd__and2_2 _536_ (.A(\crc_reg[27] ),
    .B(\crc_reg[11] ),
    .X(_228_));
 sky130_fd_sc_hd__o21a_2 _537_ (.A1(_227_),
    .A2(_228_),
    .B1(\crc_reg[31] ),
    .X(_229_));
 sky130_fd_sc_hd__nor3_2 _538_ (.A(\crc_reg[31] ),
    .B(_227_),
    .C(_228_),
    .Y(_230_));
 sky130_fd_sc_hd__o31a_2 _539_ (.A1(in_sop),
    .A2(_229_),
    .A3(_230_),
    .B1(_153_),
    .X(_231_));
 sky130_fd_sc_hd__nor4_2 _540_ (.A(in_sop),
    .B(_153_),
    .C(_229_),
    .D(_230_),
    .Y(_232_));
 sky130_fd_sc_hd__or3_2 _541_ (.A(_132_),
    .B(_231_),
    .C(_232_),
    .X(_233_));
 sky130_fd_sc_hd__a21bo_2 _542_ (.A1(_132_),
    .A2(\crc_reg[19] ),
    .B1_N(_233_),
    .X(_119_));
 sky130_fd_sc_hd__or2_2 _543_ (.A(in_valid),
    .B(\crc_reg[18] ),
    .X(_234_));
 sky130_fd_sc_hd__xnor2_2 _544_ (.A(\crc_reg[26] ),
    .B(\crc_reg[10] ),
    .Y(_235_));
 sky130_fd_sc_hd__nand2_2 _545_ (.A(_149_),
    .B(_235_),
    .Y(_236_));
 sky130_fd_sc_hd__or2_2 _546_ (.A(_149_),
    .B(_235_),
    .X(_237_));
 sky130_fd_sc_hd__xor2_2 _547_ (.A(data_in[1]),
    .B(data_in[5]),
    .X(_238_));
 sky130_fd_sc_hd__xnor2_2 _548_ (.A(data_in[0]),
    .B(_238_),
    .Y(_239_));
 sky130_fd_sc_hd__and4_2 _549_ (.A(_133_),
    .B(_236_),
    .C(_237_),
    .D(_239_),
    .X(_240_));
 sky130_fd_sc_hd__a31oi_2 _550_ (.A1(_133_),
    .A2(_236_),
    .A3(_237_),
    .B1(_239_),
    .Y(_241_));
 sky130_fd_sc_hd__o31a_2 _551_ (.A1(_132_),
    .A2(_240_),
    .A3(_241_),
    .B1(_234_),
    .X(_118_));
 sky130_fd_sc_hd__xor2_2 _552_ (.A(\crc_reg[25] ),
    .B(\crc_reg[9] ),
    .X(_242_));
 sky130_fd_sc_hd__nand2_2 _553_ (.A(_159_),
    .B(_242_),
    .Y(_243_));
 sky130_fd_sc_hd__or2_2 _554_ (.A(_159_),
    .B(_242_),
    .X(_244_));
 sky130_fd_sc_hd__xnor2_2 _555_ (.A(data_in[6]),
    .B(_161_),
    .Y(_245_));
 sky130_fd_sc_hd__nand4_2 _556_ (.A(_133_),
    .B(_243_),
    .C(_244_),
    .D(_245_),
    .Y(_246_));
 sky130_fd_sc_hd__a31o_2 _557_ (.A1(_133_),
    .A2(_243_),
    .A3(_244_),
    .B1(_245_),
    .X(_247_));
 sky130_fd_sc_hd__and3_2 _558_ (.A(in_valid),
    .B(_246_),
    .C(_247_),
    .X(_248_));
 sky130_fd_sc_hd__o21ba_2 _559_ (.A1(in_valid),
    .A2(\crc_reg[17] ),
    .B1_N(_248_),
    .X(_117_));
 sky130_fd_sc_hd__xor2_2 _560_ (.A(\crc_reg[24] ),
    .B(\crc_reg[8] ),
    .X(_249_));
 sky130_fd_sc_hd__xnor2_2 _561_ (.A(_166_),
    .B(_249_),
    .Y(_250_));
 sky130_fd_sc_hd__xor2_2 _562_ (.A(data_in[7]),
    .B(_171_),
    .X(_251_));
 sky130_fd_sc_hd__and3_2 _563_ (.A(_133_),
    .B(_250_),
    .C(_251_),
    .X(_252_));
 sky130_fd_sc_hd__a21oi_2 _564_ (.A1(_133_),
    .A2(_250_),
    .B1(_251_),
    .Y(_253_));
 sky130_fd_sc_hd__or3_2 _565_ (.A(_132_),
    .B(_252_),
    .C(_253_),
    .X(_254_));
 sky130_fd_sc_hd__a21bo_2 _566_ (.A1(_132_),
    .A2(\crc_reg[16] ),
    .B1_N(_254_),
    .X(_116_));
 sky130_fd_sc_hd__or2_2 _567_ (.A(in_valid),
    .B(\crc_reg[15] ),
    .X(_255_));
 sky130_fd_sc_hd__xnor2_2 _568_ (.A(\crc_reg[29] ),
    .B(\crc_reg[7] ),
    .Y(_256_));
 sky130_fd_sc_hd__xnor2_2 _569_ (.A(_178_),
    .B(_256_),
    .Y(_257_));
 sky130_fd_sc_hd__nand2_2 _570_ (.A(\crc_reg[31] ),
    .B(_257_),
    .Y(_258_));
 sky130_fd_sc_hd__or2_2 _571_ (.A(\crc_reg[31] ),
    .B(_257_),
    .X(_259_));
 sky130_fd_sc_hd__xnor2_2 _572_ (.A(_152_),
    .B(_171_),
    .Y(_260_));
 sky130_fd_sc_hd__a31oi_2 _573_ (.A1(_133_),
    .A2(_258_),
    .A3(_259_),
    .B1(_260_),
    .Y(_261_));
 sky130_fd_sc_hd__and4_2 _574_ (.A(_133_),
    .B(_258_),
    .C(_259_),
    .D(_260_),
    .X(_262_));
 sky130_fd_sc_hd__o31a_2 _575_ (.A1(_132_),
    .A2(_261_),
    .A3(_262_),
    .B1(_255_),
    .X(_115_));
 sky130_fd_sc_hd__or2_2 _576_ (.A(in_valid),
    .B(\crc_reg[14] ),
    .X(_263_));
 sky130_fd_sc_hd__xnor2_2 _577_ (.A(_183_),
    .B(_239_),
    .Y(_264_));
 sky130_fd_sc_hd__xnor2_2 _578_ (.A(\crc_reg[26] ),
    .B(\crc_reg[6] ),
    .Y(_265_));
 sky130_fd_sc_hd__xnor2_2 _579_ (.A(_178_),
    .B(_265_),
    .Y(_266_));
 sky130_fd_sc_hd__xnor2_2 _580_ (.A(_148_),
    .B(_266_),
    .Y(_267_));
 sky130_fd_sc_hd__and3_2 _581_ (.A(_133_),
    .B(_264_),
    .C(_267_),
    .X(_268_));
 sky130_fd_sc_hd__a21oi_2 _582_ (.A1(_133_),
    .A2(_267_),
    .B1(_264_),
    .Y(_269_));
 sky130_fd_sc_hd__o31a_2 _583_ (.A1(_132_),
    .A2(_268_),
    .A3(_269_),
    .B1(_263_),
    .X(_114_));
 sky130_fd_sc_hd__xor2_2 _584_ (.A(\crc_reg[29] ),
    .B(\crc_reg[5] ),
    .X(_270_));
 sky130_fd_sc_hd__or2_2 _585_ (.A(_148_),
    .B(_270_),
    .X(_271_));
 sky130_fd_sc_hd__a21oi_2 _586_ (.A1(_148_),
    .A2(_270_),
    .B1(in_sop),
    .Y(_272_));
 sky130_fd_sc_hd__nor2_2 _587_ (.A(in_sop),
    .B(_149_),
    .Y(_273_));
 sky130_fd_sc_hd__xnor2_2 _588_ (.A(_152_),
    .B(_161_),
    .Y(_274_));
 sky130_fd_sc_hd__xnor2_2 _589_ (.A(data_in[6]),
    .B(data_in[5]),
    .Y(_275_));
 sky130_fd_sc_hd__nand3_2 _590_ (.A(\crc_reg[27] ),
    .B(_133_),
    .C(_201_),
    .Y(_276_));
 sky130_fd_sc_hd__or3_2 _591_ (.A(\crc_reg[27] ),
    .B(in_sop),
    .C(_201_),
    .X(_277_));
 sky130_fd_sc_hd__nand2_2 _592_ (.A(_276_),
    .B(_277_),
    .Y(_278_));
 sky130_fd_sc_hd__and3_2 _593_ (.A(_271_),
    .B(_272_),
    .C(_275_),
    .X(_279_));
 sky130_fd_sc_hd__a21oi_2 _594_ (.A1(_271_),
    .A2(_272_),
    .B1(_275_),
    .Y(_280_));
 sky130_fd_sc_hd__nand3_2 _595_ (.A(_274_),
    .B(_276_),
    .C(_277_),
    .Y(_281_));
 sky130_fd_sc_hd__a21o_2 _596_ (.A1(_276_),
    .A2(_277_),
    .B1(_274_),
    .X(_282_));
 sky130_fd_sc_hd__o211a_2 _597_ (.A1(_279_),
    .A2(_280_),
    .B1(_281_),
    .C1(_282_),
    .X(_283_));
 sky130_fd_sc_hd__a211oi_2 _598_ (.A1(_281_),
    .A2(_282_),
    .B1(_279_),
    .C1(_280_),
    .Y(_284_));
 sky130_fd_sc_hd__or3_2 _599_ (.A(_132_),
    .B(_283_),
    .C(_284_),
    .X(_285_));
 sky130_fd_sc_hd__a21bo_2 _600_ (.A1(_132_),
    .A2(\crc_reg[13] ),
    .B1_N(_285_),
    .X(_113_));
 sky130_fd_sc_hd__or2_2 _601_ (.A(in_valid),
    .B(\crc_reg[12] ),
    .X(_286_));
 sky130_fd_sc_hd__xor2_2 _602_ (.A(\crc_reg[26] ),
    .B(_207_),
    .X(_287_));
 sky130_fd_sc_hd__xor2_2 _603_ (.A(\crc_reg[28] ),
    .B(\crc_reg[4] ),
    .X(_288_));
 sky130_fd_sc_hd__xnor2_2 _604_ (.A(_159_),
    .B(_288_),
    .Y(_289_));
 sky130_fd_sc_hd__xnor2_2 _605_ (.A(_287_),
    .B(_289_),
    .Y(_290_));
 sky130_fd_sc_hd__nand2_2 _606_ (.A(_133_),
    .B(_287_),
    .Y(_291_));
 sky130_fd_sc_hd__nand2_2 _607_ (.A(_133_),
    .B(_159_),
    .Y(_292_));
 sky130_fd_sc_hd__xor2_2 _608_ (.A(data_in[7]),
    .B(data_in[6]),
    .X(_293_));
 sky130_fd_sc_hd__xnor2_2 _609_ (.A(data_in[3]),
    .B(_293_),
    .Y(_294_));
 sky130_fd_sc_hd__xnor2_2 _610_ (.A(_162_),
    .B(_294_),
    .Y(_295_));
 sky130_fd_sc_hd__and3_2 _611_ (.A(_133_),
    .B(_290_),
    .C(_295_),
    .X(_296_));
 sky130_fd_sc_hd__a21oi_2 _612_ (.A1(_133_),
    .A2(_290_),
    .B1(_295_),
    .Y(_297_));
 sky130_fd_sc_hd__o31a_2 _613_ (.A1(_132_),
    .A2(_296_),
    .A3(_297_),
    .B1(_286_),
    .X(_112_));
 sky130_fd_sc_hd__or2_2 _614_ (.A(in_valid),
    .B(\crc_reg[11] ),
    .X(_298_));
 sky130_fd_sc_hd__xor2_2 _615_ (.A(_183_),
    .B(_293_),
    .X(_299_));
 sky130_fd_sc_hd__xnor2_2 _616_ (.A(_178_),
    .B(_207_),
    .Y(_300_));
 sky130_fd_sc_hd__or2_2 _617_ (.A(in_sop),
    .B(_300_),
    .X(_301_));
 sky130_fd_sc_hd__a21oi_2 _618_ (.A1(\crc_reg[3] ),
    .A2(_300_),
    .B1(in_sop),
    .Y(_302_));
 sky130_fd_sc_hd__or2_2 _619_ (.A(\crc_reg[3] ),
    .B(_300_),
    .X(_303_));
 sky130_fd_sc_hd__and3b_2 _620_ (.A_N(_299_),
    .B(_302_),
    .C(_303_),
    .X(_304_));
 sky130_fd_sc_hd__a21boi_2 _621_ (.A1(_302_),
    .A2(_303_),
    .B1_N(_299_),
    .Y(_305_));
 sky130_fd_sc_hd__o31a_2 _622_ (.A1(_132_),
    .A2(_304_),
    .A3(_305_),
    .B1(_298_),
    .X(_111_));
 sky130_fd_sc_hd__or2_2 _623_ (.A(in_valid),
    .B(\crc_reg[10] ),
    .X(_306_));
 sky130_fd_sc_hd__xnor2_2 _624_ (.A(\crc_reg[24] ),
    .B(_188_),
    .Y(_307_));
 sky130_fd_sc_hd__xor2_2 _625_ (.A(\crc_reg[29] ),
    .B(_307_),
    .X(_308_));
 sky130_fd_sc_hd__nor2_2 _626_ (.A(in_sop),
    .B(_307_),
    .Y(_309_));
 sky130_fd_sc_hd__or2_2 _627_ (.A(\crc_reg[2] ),
    .B(in_sop),
    .X(_310_));
 sky130_fd_sc_hd__xnor2_2 _628_ (.A(data_in[2]),
    .B(_310_),
    .Y(_311_));
 sky130_fd_sc_hd__xor2_2 _629_ (.A(data_in[7]),
    .B(data_in[5]),
    .X(_312_));
 sky130_fd_sc_hd__xnor2_2 _630_ (.A(data_in[4]),
    .B(_312_),
    .Y(_313_));
 sky130_fd_sc_hd__xnor2_2 _631_ (.A(_311_),
    .B(_313_),
    .Y(_314_));
 sky130_fd_sc_hd__a21oi_2 _632_ (.A1(_133_),
    .A2(_308_),
    .B1(_314_),
    .Y(_315_));
 sky130_fd_sc_hd__and3_2 _633_ (.A(_133_),
    .B(_308_),
    .C(_314_),
    .X(_316_));
 sky130_fd_sc_hd__o31a_2 _634_ (.A1(_132_),
    .A2(_315_),
    .A3(_316_),
    .B1(_306_),
    .X(_110_));
 sky130_fd_sc_hd__xnor2_2 _635_ (.A(_166_),
    .B(_201_),
    .Y(_317_));
 sky130_fd_sc_hd__nand3_2 _636_ (.A(_133_),
    .B(_171_),
    .C(_317_),
    .Y(_318_));
 sky130_fd_sc_hd__a21o_2 _637_ (.A1(_133_),
    .A2(_317_),
    .B1(_171_),
    .X(_319_));
 sky130_fd_sc_hd__nor2_2 _638_ (.A(\crc_reg[1] ),
    .B(in_sop),
    .Y(_320_));
 sky130_fd_sc_hd__xnor2_2 _639_ (.A(_275_),
    .B(_320_),
    .Y(_321_));
 sky130_fd_sc_hd__a21oi_2 _640_ (.A1(_318_),
    .A2(_319_),
    .B1(_321_),
    .Y(_322_));
 sky130_fd_sc_hd__and3_2 _641_ (.A(_318_),
    .B(_319_),
    .C(_321_),
    .X(_323_));
 sky130_fd_sc_hd__or2_2 _642_ (.A(in_valid),
    .B(\crc_reg[9] ),
    .X(_324_));
 sky130_fd_sc_hd__o31a_2 _643_ (.A1(_132_),
    .A2(_322_),
    .A3(_323_),
    .B1(_324_),
    .X(_109_));
 sky130_fd_sc_hd__a21o_2 _644_ (.A1(\crc_reg[0] ),
    .A2(_300_),
    .B1(in_sop),
    .X(_325_));
 sky130_fd_sc_hd__nor2_2 _645_ (.A(\crc_reg[0] ),
    .B(_300_),
    .Y(_326_));
 sky130_fd_sc_hd__o21ai_2 _646_ (.A1(_325_),
    .A2(_326_),
    .B1(_299_),
    .Y(_327_));
 sky130_fd_sc_hd__or3_2 _647_ (.A(_299_),
    .B(_325_),
    .C(_326_),
    .X(_328_));
 sky130_fd_sc_hd__a21oi_2 _648_ (.A1(_327_),
    .A2(_328_),
    .B1(_132_),
    .Y(_329_));
 sky130_fd_sc_hd__a21o_2 _649_ (.A1(_132_),
    .A2(\crc_reg[8] ),
    .B1(_329_),
    .X(_108_));
 sky130_fd_sc_hd__xnor2_2 _650_ (.A(data_in[2]),
    .B(_152_),
    .Y(_330_));
 sky130_fd_sc_hd__xnor2_2 _651_ (.A(_196_),
    .B(_312_),
    .Y(_331_));
 sky130_fd_sc_hd__xnor2_2 _652_ (.A(_330_),
    .B(_331_),
    .Y(_332_));
 sky130_fd_sc_hd__a21o_2 _653_ (.A1(_133_),
    .A2(_308_),
    .B1(_332_),
    .X(_333_));
 sky130_fd_sc_hd__nand3_2 _654_ (.A(_133_),
    .B(_308_),
    .C(_332_),
    .Y(_334_));
 sky130_fd_sc_hd__and3_2 _655_ (.A(in_valid),
    .B(_333_),
    .C(_334_),
    .X(_335_));
 sky130_fd_sc_hd__o21ba_2 _656_ (.A1(in_valid),
    .A2(\crc_reg[7] ),
    .B1_N(_335_),
    .X(_107_));
 sky130_fd_sc_hd__or2_2 _657_ (.A(in_valid),
    .B(\crc_reg[6] ),
    .X(_336_));
 sky130_fd_sc_hd__xnor2_2 _658_ (.A(_172_),
    .B(_238_),
    .Y(_337_));
 sky130_fd_sc_hd__xnor2_2 _659_ (.A(_273_),
    .B(_337_),
    .Y(_338_));
 sky130_fd_sc_hd__a21oi_2 _660_ (.A1(_318_),
    .A2(_319_),
    .B1(_338_),
    .Y(_339_));
 sky130_fd_sc_hd__and3_2 _661_ (.A(_318_),
    .B(_319_),
    .C(_338_),
    .X(_340_));
 sky130_fd_sc_hd__o31a_2 _662_ (.A1(_132_),
    .A2(_339_),
    .A3(_340_),
    .B1(_336_),
    .X(_106_));
 sky130_fd_sc_hd__xnor2_2 _663_ (.A(data_in[0]),
    .B(_196_),
    .Y(_341_));
 sky130_fd_sc_hd__xnor2_2 _664_ (.A(_292_),
    .B(_341_),
    .Y(_342_));
 sky130_fd_sc_hd__xnor2_2 _665_ (.A(_161_),
    .B(_293_),
    .Y(_343_));
 sky130_fd_sc_hd__xnor2_2 _666_ (.A(_342_),
    .B(_343_),
    .Y(_344_));
 sky130_fd_sc_hd__xnor2_2 _667_ (.A(_183_),
    .B(_301_),
    .Y(_345_));
 sky130_fd_sc_hd__xnor2_2 _668_ (.A(_344_),
    .B(_345_),
    .Y(_346_));
 sky130_fd_sc_hd__mux2_1 _669_ (.A0(\crc_reg[5] ),
    .A1(_346_),
    .S(in_valid),
    .X(_105_));
 sky130_fd_sc_hd__a21oi_2 _670_ (.A1(\crc_reg[30] ),
    .A2(\crc_reg[28] ),
    .B1(in_sop),
    .Y(_347_));
 sky130_fd_sc_hd__o21ai_2 _671_ (.A1(\crc_reg[30] ),
    .A2(\crc_reg[28] ),
    .B1(_347_),
    .Y(_348_));
 sky130_fd_sc_hd__xnor2_2 _672_ (.A(_313_),
    .B(_348_),
    .Y(_349_));
 sky130_fd_sc_hd__xor2_2 _673_ (.A(data_in[1]),
    .B(data_in[3]),
    .X(_350_));
 sky130_fd_sc_hd__xnor2_2 _674_ (.A(_309_),
    .B(_350_),
    .Y(_351_));
 sky130_fd_sc_hd__xnor2_2 _675_ (.A(_349_),
    .B(_351_),
    .Y(_352_));
 sky130_fd_sc_hd__mux2_1 _676_ (.A0(\crc_reg[4] ),
    .A1(_352_),
    .S(in_valid),
    .X(_104_));
 sky130_fd_sc_hd__xor2_2 _677_ (.A(_152_),
    .B(_275_),
    .X(_353_));
 sky130_fd_sc_hd__xnor2_2 _678_ (.A(_196_),
    .B(_353_),
    .Y(_354_));
 sky130_fd_sc_hd__xnor2_2 _679_ (.A(_278_),
    .B(_354_),
    .Y(_355_));
 sky130_fd_sc_hd__mux2_1 _680_ (.A0(\crc_reg[3] ),
    .A1(_355_),
    .S(in_valid),
    .X(_103_));
 sky130_fd_sc_hd__xnor2_2 _681_ (.A(data_in[7]),
    .B(_291_),
    .Y(_356_));
 sky130_fd_sc_hd__xor2_2 _682_ (.A(_338_),
    .B(_356_),
    .X(_357_));
 sky130_fd_sc_hd__mux2_1 _683_ (.A0(\crc_reg[2] ),
    .A1(_357_),
    .S(in_valid),
    .X(_102_));
 sky130_fd_sc_hd__xor2_2 _684_ (.A(_172_),
    .B(_184_),
    .X(_358_));
 sky130_fd_sc_hd__nor3_2 _685_ (.A(in_sop),
    .B(_148_),
    .C(_207_),
    .Y(_359_));
 sky130_fd_sc_hd__a21oi_2 _686_ (.A1(_207_),
    .A2(_273_),
    .B1(_359_),
    .Y(_360_));
 sky130_fd_sc_hd__xnor2_2 _687_ (.A(_358_),
    .B(_360_),
    .Y(_361_));
 sky130_fd_sc_hd__mux2_1 _688_ (.A0(\crc_reg[1] ),
    .A1(_361_),
    .S(in_valid),
    .X(_101_));
 sky130_fd_sc_hd__nor2_2 _689_ (.A(in_sop),
    .B(_179_),
    .Y(_362_));
 sky130_fd_sc_hd__xnor2_2 _690_ (.A(_184_),
    .B(_362_),
    .Y(_363_));
 sky130_fd_sc_hd__mux2_1 _691_ (.A0(\crc_reg[0] ),
    .A1(_363_),
    .S(in_valid),
    .X(_100_));
 sky130_fd_sc_hd__nor2_2 _692_ (.A(_132_),
    .B(_134_),
    .Y(_364_));
 sky130_fd_sc_hd__nand2_2 _693_ (.A(in_valid),
    .B(in_eop),
    .Y(_365_));
 sky130_fd_sc_hd__and3_2 _694_ (.A(\len_cnt[2] ),
    .B(\len_cnt[1] ),
    .C(\len_cnt[0] ),
    .X(_366_));
 sky130_fd_sc_hd__and4_2 _695_ (.A(\len_cnt[3] ),
    .B(\len_cnt[2] ),
    .C(\len_cnt[1] ),
    .D(\len_cnt[0] ),
    .X(_367_));
 sky130_fd_sc_hd__and3_2 _696_ (.A(\len_cnt[5] ),
    .B(\len_cnt[4] ),
    .C(_367_),
    .X(_368_));
 sky130_fd_sc_hd__and4_2 _697_ (.A(\len_cnt[6] ),
    .B(\len_cnt[5] ),
    .C(\len_cnt[4] ),
    .D(_367_),
    .X(_369_));
 sky130_fd_sc_hd__and3_2 _698_ (.A(\len_cnt[8] ),
    .B(\len_cnt[7] ),
    .C(_369_),
    .X(_370_));
 sky130_fd_sc_hd__and4_2 _699_ (.A(\len_cnt[9] ),
    .B(\len_cnt[8] ),
    .C(\len_cnt[7] ),
    .D(_369_),
    .X(_371_));
 sky130_fd_sc_hd__and3_2 _700_ (.A(\len_cnt[11] ),
    .B(\len_cnt[10] ),
    .C(_371_),
    .X(_372_));
 sky130_fd_sc_hd__and4_2 _701_ (.A(\len_cnt[12] ),
    .B(\len_cnt[11] ),
    .C(\len_cnt[10] ),
    .D(_371_),
    .X(_373_));
 sky130_fd_sc_hd__a31o_2 _702_ (.A1(\len_cnt[14] ),
    .A2(\len_cnt[13] ),
    .A3(_373_),
    .B1(\len_cnt[15] ),
    .X(_374_));
 sky130_fd_sc_hd__a41o_2 _703_ (.A1(\len_cnt[15] ),
    .A2(\len_cnt[14] ),
    .A3(\len_cnt[13] ),
    .A4(_373_),
    .B1(in_sop),
    .X(_375_));
 sky130_fd_sc_hd__nand2b_2 _704_ (.A_N(_375_),
    .B(_374_),
    .Y(_376_));
 sky130_fd_sc_hd__nand2_2 _705_ (.A(frame_len[15]),
    .B(_365_),
    .Y(_377_));
 sky130_fd_sc_hd__o21ai_2 _706_ (.A1(_365_),
    .A2(_376_),
    .B1(_377_),
    .Y(_099_));
 sky130_fd_sc_hd__a21oi_2 _707_ (.A1(\len_cnt[13] ),
    .A2(_373_),
    .B1(\len_cnt[14] ),
    .Y(_378_));
 sky130_fd_sc_hd__a31o_2 _708_ (.A1(\len_cnt[14] ),
    .A2(\len_cnt[13] ),
    .A3(_373_),
    .B1(in_sop),
    .X(_379_));
 sky130_fd_sc_hd__nor2_2 _709_ (.A(_378_),
    .B(_379_),
    .Y(_380_));
 sky130_fd_sc_hd__mux2_1 _710_ (.A0(frame_len[14]),
    .A1(_380_),
    .S(_364_),
    .X(_098_));
 sky130_fd_sc_hd__a21oi_2 _711_ (.A1(\len_cnt[13] ),
    .A2(_373_),
    .B1(in_sop),
    .Y(_381_));
 sky130_fd_sc_hd__o21a_2 _712_ (.A1(\len_cnt[13] ),
    .A2(_373_),
    .B1(_381_),
    .X(_382_));
 sky130_fd_sc_hd__mux2_1 _713_ (.A0(frame_len[13]),
    .A1(_382_),
    .S(_364_),
    .X(_097_));
 sky130_fd_sc_hd__nor2_2 _714_ (.A(in_sop),
    .B(_373_),
    .Y(_383_));
 sky130_fd_sc_hd__o21a_2 _715_ (.A1(\len_cnt[12] ),
    .A2(_372_),
    .B1(_383_),
    .X(_384_));
 sky130_fd_sc_hd__mux2_1 _716_ (.A0(frame_len[12]),
    .A1(_384_),
    .S(_364_),
    .X(_096_));
 sky130_fd_sc_hd__a21oi_2 _717_ (.A1(\len_cnt[10] ),
    .A2(_371_),
    .B1(\len_cnt[11] ),
    .Y(_385_));
 sky130_fd_sc_hd__nor3_2 _718_ (.A(in_sop),
    .B(_372_),
    .C(_385_),
    .Y(_386_));
 sky130_fd_sc_hd__mux2_1 _719_ (.A0(frame_len[11]),
    .A1(_386_),
    .S(_364_),
    .X(_095_));
 sky130_fd_sc_hd__a21oi_2 _720_ (.A1(\len_cnt[10] ),
    .A2(_371_),
    .B1(in_sop),
    .Y(_387_));
 sky130_fd_sc_hd__o21a_2 _721_ (.A1(\len_cnt[10] ),
    .A2(_371_),
    .B1(_387_),
    .X(_388_));
 sky130_fd_sc_hd__mux2_1 _722_ (.A0(frame_len[10]),
    .A1(_388_),
    .S(_364_),
    .X(_094_));
 sky130_fd_sc_hd__nor2_2 _723_ (.A(in_sop),
    .B(_371_),
    .Y(_389_));
 sky130_fd_sc_hd__o21a_2 _724_ (.A1(\len_cnt[9] ),
    .A2(_370_),
    .B1(_389_),
    .X(_390_));
 sky130_fd_sc_hd__mux2_1 _725_ (.A0(frame_len[9]),
    .A1(_390_),
    .S(_364_),
    .X(_093_));
 sky130_fd_sc_hd__a21oi_2 _726_ (.A1(\len_cnt[7] ),
    .A2(_369_),
    .B1(\len_cnt[8] ),
    .Y(_391_));
 sky130_fd_sc_hd__nor3_2 _727_ (.A(in_sop),
    .B(_370_),
    .C(_391_),
    .Y(_392_));
 sky130_fd_sc_hd__mux2_1 _728_ (.A0(frame_len[8]),
    .A1(_392_),
    .S(_364_),
    .X(_092_));
 sky130_fd_sc_hd__a21oi_2 _729_ (.A1(\len_cnt[7] ),
    .A2(_369_),
    .B1(in_sop),
    .Y(_393_));
 sky130_fd_sc_hd__o21a_2 _730_ (.A1(\len_cnt[7] ),
    .A2(_369_),
    .B1(_393_),
    .X(_394_));
 sky130_fd_sc_hd__mux2_1 _731_ (.A0(frame_len[7]),
    .A1(_394_),
    .S(_364_),
    .X(_091_));
 sky130_fd_sc_hd__nor2_2 _732_ (.A(in_sop),
    .B(_369_),
    .Y(_395_));
 sky130_fd_sc_hd__o21a_2 _733_ (.A1(\len_cnt[6] ),
    .A2(_368_),
    .B1(_395_),
    .X(_396_));
 sky130_fd_sc_hd__mux2_1 _734_ (.A0(frame_len[6]),
    .A1(_396_),
    .S(_364_),
    .X(_090_));
 sky130_fd_sc_hd__a21oi_2 _735_ (.A1(\len_cnt[4] ),
    .A2(_367_),
    .B1(\len_cnt[5] ),
    .Y(_397_));
 sky130_fd_sc_hd__nor3_2 _736_ (.A(in_sop),
    .B(_368_),
    .C(_397_),
    .Y(_398_));
 sky130_fd_sc_hd__mux2_1 _737_ (.A0(frame_len[5]),
    .A1(_398_),
    .S(_364_),
    .X(_089_));
 sky130_fd_sc_hd__a21oi_2 _738_ (.A1(\len_cnt[4] ),
    .A2(_367_),
    .B1(in_sop),
    .Y(_399_));
 sky130_fd_sc_hd__o21a_2 _739_ (.A1(\len_cnt[4] ),
    .A2(_367_),
    .B1(_399_),
    .X(_400_));
 sky130_fd_sc_hd__mux2_1 _740_ (.A0(frame_len[4]),
    .A1(_400_),
    .S(_364_),
    .X(_088_));
 sky130_fd_sc_hd__nor2_2 _741_ (.A(in_sop),
    .B(_367_),
    .Y(_401_));
 sky130_fd_sc_hd__o21a_2 _742_ (.A1(\len_cnt[3] ),
    .A2(_366_),
    .B1(_401_),
    .X(_402_));
 sky130_fd_sc_hd__mux2_1 _743_ (.A0(frame_len[3]),
    .A1(_402_),
    .S(_364_),
    .X(_087_));
 sky130_fd_sc_hd__a21oi_2 _744_ (.A1(\len_cnt[1] ),
    .A2(\len_cnt[0] ),
    .B1(\len_cnt[2] ),
    .Y(_403_));
 sky130_fd_sc_hd__nor3_2 _745_ (.A(in_sop),
    .B(_366_),
    .C(_403_),
    .Y(_404_));
 sky130_fd_sc_hd__mux2_1 _746_ (.A0(frame_len[2]),
    .A1(_404_),
    .S(_364_),
    .X(_086_));
 sky130_fd_sc_hd__a21oi_2 _747_ (.A1(\len_cnt[1] ),
    .A2(\len_cnt[0] ),
    .B1(in_sop),
    .Y(_405_));
 sky130_fd_sc_hd__o21a_2 _748_ (.A1(\len_cnt[1] ),
    .A2(\len_cnt[0] ),
    .B1(_405_),
    .X(_406_));
 sky130_fd_sc_hd__mux2_1 _749_ (.A0(frame_len[1]),
    .A1(_406_),
    .S(_364_),
    .X(_085_));
 sky130_fd_sc_hd__or3b_2 _750_ (.A(_132_),
    .B(in_sop),
    .C_N(\len_cnt[0] ),
    .X(_407_));
 sky130_fd_sc_hd__o22a_2 _751_ (.A1(frame_len[0]),
    .A2(_364_),
    .B1(_407_),
    .B2(_134_),
    .X(_084_));
 sky130_fd_sc_hd__nor2_2 _752_ (.A(in_valid),
    .B(\len_cnt[15] ),
    .Y(_408_));
 sky130_fd_sc_hd__a21oi_2 _753_ (.A1(in_valid),
    .A2(_376_),
    .B1(_408_),
    .Y(_083_));
 sky130_fd_sc_hd__mux2_1 _754_ (.A0(\len_cnt[14] ),
    .A1(_380_),
    .S(in_valid),
    .X(_082_));
 sky130_fd_sc_hd__mux2_1 _755_ (.A0(\len_cnt[13] ),
    .A1(_382_),
    .S(in_valid),
    .X(_081_));
 sky130_fd_sc_hd__mux2_1 _756_ (.A0(\len_cnt[12] ),
    .A1(_384_),
    .S(in_valid),
    .X(_080_));
 sky130_fd_sc_hd__mux2_1 _757_ (.A0(\len_cnt[11] ),
    .A1(_386_),
    .S(in_valid),
    .X(_079_));
 sky130_fd_sc_hd__mux2_1 _758_ (.A0(\len_cnt[10] ),
    .A1(_388_),
    .S(in_valid),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _759_ (.A0(\len_cnt[9] ),
    .A1(_390_),
    .S(in_valid),
    .X(_077_));
 sky130_fd_sc_hd__mux2_1 _760_ (.A0(\len_cnt[8] ),
    .A1(_392_),
    .S(in_valid),
    .X(_076_));
 sky130_fd_sc_hd__mux2_1 _761_ (.A0(\len_cnt[7] ),
    .A1(_394_),
    .S(in_valid),
    .X(_075_));
 sky130_fd_sc_hd__mux2_1 _762_ (.A0(\len_cnt[6] ),
    .A1(_396_),
    .S(in_valid),
    .X(_074_));
 sky130_fd_sc_hd__mux2_1 _763_ (.A0(\len_cnt[5] ),
    .A1(_398_),
    .S(in_valid),
    .X(_073_));
 sky130_fd_sc_hd__mux2_1 _764_ (.A0(\len_cnt[4] ),
    .A1(_400_),
    .S(in_valid),
    .X(_072_));
 sky130_fd_sc_hd__mux2_1 _765_ (.A0(\len_cnt[3] ),
    .A1(_402_),
    .S(in_valid),
    .X(_071_));
 sky130_fd_sc_hd__mux2_1 _766_ (.A0(\len_cnt[2] ),
    .A1(_404_),
    .S(in_valid),
    .X(_070_));
 sky130_fd_sc_hd__mux2_1 _767_ (.A0(\len_cnt[1] ),
    .A1(_406_),
    .S(in_valid),
    .X(_069_));
 sky130_fd_sc_hd__o21a_2 _768_ (.A1(in_valid),
    .A2(\len_cnt[0] ),
    .B1(_407_),
    .X(_068_));
 sky130_fd_sc_hd__o22a_2 _769_ (.A1(_261_),
    .A2(_262_),
    .B1(_268_),
    .B2(_269_),
    .X(_409_));
 sky130_fd_sc_hd__o211a_2 _770_ (.A1(_186_),
    .A2(_187_),
    .B1(_174_),
    .C1(_175_),
    .X(_410_));
 sky130_fd_sc_hd__and4_2 _771_ (.A(_145_),
    .B(_146_),
    .C(_155_),
    .D(_156_),
    .X(_411_));
 sky130_fd_sc_hd__o211a_2 _772_ (.A1(_163_),
    .A2(_164_),
    .B1(_192_),
    .C1(_193_),
    .X(_412_));
 sky130_fd_sc_hd__o211a_2 _773_ (.A1(_218_),
    .A2(_219_),
    .B1(_137_),
    .C1(_138_),
    .X(_413_));
 sky130_fd_sc_hd__and4bb_2 _774_ (.A_N(_223_),
    .B_N(_226_),
    .C(_363_),
    .D(_413_),
    .X(_414_));
 sky130_fd_sc_hd__and4_2 _775_ (.A(_355_),
    .B(_411_),
    .C(_412_),
    .D(_414_),
    .X(_415_));
 sky130_fd_sc_hd__o211a_2 _776_ (.A1(_252_),
    .A2(_253_),
    .B1(_246_),
    .C1(_247_),
    .X(_416_));
 sky130_fd_sc_hd__o211a_2 _777_ (.A1(_213_),
    .A2(_214_),
    .B1(_204_),
    .C1(_205_),
    .X(_417_));
 sky130_fd_sc_hd__o22a_2 _778_ (.A1(_231_),
    .A2(_232_),
    .B1(_240_),
    .B2(_241_),
    .X(_418_));
 sky130_fd_sc_hd__and4_2 _779_ (.A(_361_),
    .B(_416_),
    .C(_417_),
    .D(_418_),
    .X(_419_));
 sky130_fd_sc_hd__nand4_2 _780_ (.A(_409_),
    .B(_410_),
    .C(_415_),
    .D(_419_),
    .Y(_420_));
 sky130_fd_sc_hd__nand3b_2 _781_ (.A_N(_357_),
    .B(_346_),
    .C(_352_),
    .Y(_421_));
 sky130_fd_sc_hd__a211o_2 _782_ (.A1(_327_),
    .A2(_328_),
    .B1(_322_),
    .C1(_323_),
    .X(_422_));
 sky130_fd_sc_hd__o211a_2 _783_ (.A1(_339_),
    .A2(_340_),
    .B1(_333_),
    .C1(_334_),
    .X(_423_));
 sky130_fd_sc_hd__o22a_2 _784_ (.A1(_283_),
    .A2(_284_),
    .B1(_296_),
    .B2(_297_),
    .X(_424_));
 sky130_fd_sc_hd__o22a_2 _785_ (.A1(_304_),
    .A2(_305_),
    .B1(_315_),
    .B2(_316_),
    .X(_425_));
 sky130_fd_sc_hd__nand4b_2 _786_ (.A_N(_422_),
    .B(_423_),
    .C(_424_),
    .D(_425_),
    .Y(_426_));
 sky130_fd_sc_hd__o31a_2 _787_ (.A1(_420_),
    .A2(_421_),
    .A3(_426_),
    .B1(_364_),
    .X(_000_));
 sky130_fd_sc_hd__nor4_2 _788_ (.A(_365_),
    .B(_420_),
    .C(_421_),
    .D(_426_),
    .Y(_001_));
 sky130_fd_sc_hd__inv_2 _789_ (.A(rst),
    .Y(_003_));
 sky130_fd_sc_hd__inv_2 _790_ (.A(rst),
    .Y(_004_));
 sky130_fd_sc_hd__inv_2 _791_ (.A(rst),
    .Y(_005_));
 sky130_fd_sc_hd__inv_2 _792_ (.A(rst),
    .Y(_006_));
 sky130_fd_sc_hd__inv_2 _793_ (.A(rst),
    .Y(_007_));
 sky130_fd_sc_hd__inv_2 _794_ (.A(rst),
    .Y(_008_));
 sky130_fd_sc_hd__inv_2 _795_ (.A(rst),
    .Y(_009_));
 sky130_fd_sc_hd__inv_2 _796_ (.A(rst),
    .Y(_010_));
 sky130_fd_sc_hd__inv_2 _797_ (.A(rst),
    .Y(_011_));
 sky130_fd_sc_hd__inv_2 _798_ (.A(rst),
    .Y(_012_));
 sky130_fd_sc_hd__inv_2 _799_ (.A(rst),
    .Y(_013_));
 sky130_fd_sc_hd__inv_2 _800_ (.A(rst),
    .Y(_014_));
 sky130_fd_sc_hd__inv_2 _801_ (.A(rst),
    .Y(_015_));
 sky130_fd_sc_hd__inv_2 _802_ (.A(rst),
    .Y(_016_));
 sky130_fd_sc_hd__inv_2 _803_ (.A(rst),
    .Y(_017_));
 sky130_fd_sc_hd__inv_2 _804_ (.A(rst),
    .Y(_018_));
 sky130_fd_sc_hd__inv_2 _805_ (.A(rst),
    .Y(_019_));
 sky130_fd_sc_hd__inv_2 _806_ (.A(rst),
    .Y(_020_));
 sky130_fd_sc_hd__inv_2 _807_ (.A(rst),
    .Y(_021_));
 sky130_fd_sc_hd__inv_2 _808_ (.A(rst),
    .Y(_022_));
 sky130_fd_sc_hd__inv_2 _809_ (.A(rst),
    .Y(_023_));
 sky130_fd_sc_hd__inv_2 _810_ (.A(rst),
    .Y(_024_));
 sky130_fd_sc_hd__inv_2 _811_ (.A(rst),
    .Y(_025_));
 sky130_fd_sc_hd__inv_2 _812_ (.A(rst),
    .Y(_026_));
 sky130_fd_sc_hd__inv_2 _813_ (.A(rst),
    .Y(_027_));
 sky130_fd_sc_hd__inv_2 _814_ (.A(rst),
    .Y(_028_));
 sky130_fd_sc_hd__inv_2 _815_ (.A(rst),
    .Y(_029_));
 sky130_fd_sc_hd__inv_2 _816_ (.A(rst),
    .Y(_030_));
 sky130_fd_sc_hd__inv_2 _817_ (.A(rst),
    .Y(_031_));
 sky130_fd_sc_hd__inv_2 _818_ (.A(rst),
    .Y(_032_));
 sky130_fd_sc_hd__inv_2 _819_ (.A(rst),
    .Y(_033_));
 sky130_fd_sc_hd__inv_2 _820_ (.A(rst),
    .Y(_034_));
 sky130_fd_sc_hd__inv_2 _821_ (.A(rst),
    .Y(_035_));
 sky130_fd_sc_hd__inv_2 _822_ (.A(rst),
    .Y(_036_));
 sky130_fd_sc_hd__inv_2 _823_ (.A(rst),
    .Y(_037_));
 sky130_fd_sc_hd__inv_2 _824_ (.A(rst),
    .Y(_038_));
 sky130_fd_sc_hd__inv_2 _825_ (.A(rst),
    .Y(_039_));
 sky130_fd_sc_hd__inv_2 _826_ (.A(rst),
    .Y(_040_));
 sky130_fd_sc_hd__inv_2 _827_ (.A(rst),
    .Y(_041_));
 sky130_fd_sc_hd__inv_2 _828_ (.A(rst),
    .Y(_042_));
 sky130_fd_sc_hd__inv_2 _829_ (.A(rst),
    .Y(_043_));
 sky130_fd_sc_hd__inv_2 _830_ (.A(rst),
    .Y(_044_));
 sky130_fd_sc_hd__inv_2 _831_ (.A(rst),
    .Y(_045_));
 sky130_fd_sc_hd__inv_2 _832_ (.A(rst),
    .Y(_046_));
 sky130_fd_sc_hd__inv_2 _833_ (.A(rst),
    .Y(_047_));
 sky130_fd_sc_hd__inv_2 _834_ (.A(rst),
    .Y(_048_));
 sky130_fd_sc_hd__inv_2 _835_ (.A(rst),
    .Y(_049_));
 sky130_fd_sc_hd__inv_2 _836_ (.A(rst),
    .Y(_050_));
 sky130_fd_sc_hd__inv_2 _837_ (.A(rst),
    .Y(_051_));
 sky130_fd_sc_hd__inv_2 _838_ (.A(rst),
    .Y(_052_));
 sky130_fd_sc_hd__inv_2 _839_ (.A(rst),
    .Y(_053_));
 sky130_fd_sc_hd__inv_2 _840_ (.A(rst),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _841_ (.A(rst),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _842_ (.A(rst),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _843_ (.A(rst),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _844_ (.A(rst),
    .Y(_058_));
 sky130_fd_sc_hd__inv_2 _845_ (.A(rst),
    .Y(_059_));
 sky130_fd_sc_hd__inv_2 _846_ (.A(rst),
    .Y(_060_));
 sky130_fd_sc_hd__inv_2 _847_ (.A(rst),
    .Y(_061_));
 sky130_fd_sc_hd__inv_2 _848_ (.A(rst),
    .Y(_062_));
 sky130_fd_sc_hd__inv_2 _849_ (.A(rst),
    .Y(_063_));
 sky130_fd_sc_hd__inv_2 _850_ (.A(rst),
    .Y(_064_));
 sky130_fd_sc_hd__inv_2 _851_ (.A(rst),
    .Y(_065_));
 sky130_fd_sc_hd__inv_2 _852_ (.A(rst),
    .Y(_066_));
 sky130_fd_sc_hd__inv_2 _853_ (.A(rst),
    .Y(_067_));
 sky130_fd_sc_hd__dfrtp_2 _854_ (.CLK(clk),
    .D(_068_),
    .RESET_B(_002_),
    .Q(\len_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _855_ (.CLK(clk),
    .D(_069_),
    .RESET_B(_003_),
    .Q(\len_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_2 _856_ (.CLK(clk),
    .D(_070_),
    .RESET_B(_004_),
    .Q(\len_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_2 _857_ (.CLK(clk),
    .D(_071_),
    .RESET_B(_005_),
    .Q(\len_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_2 _858_ (.CLK(clk),
    .D(_072_),
    .RESET_B(_006_),
    .Q(\len_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_2 _859_ (.CLK(clk),
    .D(_073_),
    .RESET_B(_007_),
    .Q(\len_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_2 _860_ (.CLK(clk),
    .D(_074_),
    .RESET_B(_008_),
    .Q(\len_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_2 _861_ (.CLK(clk),
    .D(_075_),
    .RESET_B(_009_),
    .Q(\len_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_2 _862_ (.CLK(clk),
    .D(_076_),
    .RESET_B(_010_),
    .Q(\len_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_2 _863_ (.CLK(clk),
    .D(_077_),
    .RESET_B(_011_),
    .Q(\len_cnt[9] ));
 sky130_fd_sc_hd__dfrtp_2 _864_ (.CLK(clk),
    .D(_078_),
    .RESET_B(_012_),
    .Q(\len_cnt[10] ));
 sky130_fd_sc_hd__dfrtp_2 _865_ (.CLK(clk),
    .D(_079_),
    .RESET_B(_013_),
    .Q(\len_cnt[11] ));
 sky130_fd_sc_hd__dfrtp_2 _866_ (.CLK(clk),
    .D(_080_),
    .RESET_B(_014_),
    .Q(\len_cnt[12] ));
 sky130_fd_sc_hd__dfrtp_2 _867_ (.CLK(clk),
    .D(_081_),
    .RESET_B(_015_),
    .Q(\len_cnt[13] ));
 sky130_fd_sc_hd__dfrtp_2 _868_ (.CLK(clk),
    .D(_082_),
    .RESET_B(_016_),
    .Q(\len_cnt[14] ));
 sky130_fd_sc_hd__dfrtp_2 _869_ (.CLK(clk),
    .D(_083_),
    .RESET_B(_017_),
    .Q(\len_cnt[15] ));
 sky130_fd_sc_hd__dfrtp_2 _870_ (.CLK(clk),
    .D(_001_),
    .RESET_B(_018_),
    .Q(fcs_valid));
 sky130_fd_sc_hd__dfrtp_2 _871_ (.CLK(clk),
    .D(_000_),
    .RESET_B(_019_),
    .Q(fcs_error));
 sky130_fd_sc_hd__dfrtp_2 _872_ (.CLK(clk),
    .D(_084_),
    .RESET_B(_020_),
    .Q(frame_len[0]));
 sky130_fd_sc_hd__dfrtp_2 _873_ (.CLK(clk),
    .D(_085_),
    .RESET_B(_021_),
    .Q(frame_len[1]));
 sky130_fd_sc_hd__dfrtp_2 _874_ (.CLK(clk),
    .D(_086_),
    .RESET_B(_022_),
    .Q(frame_len[2]));
 sky130_fd_sc_hd__dfrtp_2 _875_ (.CLK(clk),
    .D(_087_),
    .RESET_B(_023_),
    .Q(frame_len[3]));
 sky130_fd_sc_hd__dfrtp_2 _876_ (.CLK(clk),
    .D(_088_),
    .RESET_B(_024_),
    .Q(frame_len[4]));
 sky130_fd_sc_hd__dfrtp_2 _877_ (.CLK(clk),
    .D(_089_),
    .RESET_B(_025_),
    .Q(frame_len[5]));
 sky130_fd_sc_hd__dfrtp_2 _878_ (.CLK(clk),
    .D(_090_),
    .RESET_B(_026_),
    .Q(frame_len[6]));
 sky130_fd_sc_hd__dfrtp_2 _879_ (.CLK(clk),
    .D(_091_),
    .RESET_B(_027_),
    .Q(frame_len[7]));
 sky130_fd_sc_hd__dfrtp_2 _880_ (.CLK(clk),
    .D(_092_),
    .RESET_B(_028_),
    .Q(frame_len[8]));
 sky130_fd_sc_hd__dfrtp_2 _881_ (.CLK(clk),
    .D(_093_),
    .RESET_B(_029_),
    .Q(frame_len[9]));
 sky130_fd_sc_hd__dfrtp_2 _882_ (.CLK(clk),
    .D(_094_),
    .RESET_B(_030_),
    .Q(frame_len[10]));
 sky130_fd_sc_hd__dfrtp_2 _883_ (.CLK(clk),
    .D(_095_),
    .RESET_B(_031_),
    .Q(frame_len[11]));
 sky130_fd_sc_hd__dfrtp_2 _884_ (.CLK(clk),
    .D(_096_),
    .RESET_B(_032_),
    .Q(frame_len[12]));
 sky130_fd_sc_hd__dfrtp_2 _885_ (.CLK(clk),
    .D(_097_),
    .RESET_B(_033_),
    .Q(frame_len[13]));
 sky130_fd_sc_hd__dfrtp_2 _886_ (.CLK(clk),
    .D(_098_),
    .RESET_B(_034_),
    .Q(frame_len[14]));
 sky130_fd_sc_hd__dfrtp_2 _887_ (.CLK(clk),
    .D(_099_),
    .RESET_B(_035_),
    .Q(frame_len[15]));
 sky130_fd_sc_hd__dfstp_2 _888_ (.CLK(clk),
    .D(_100_),
    .SET_B(_036_),
    .Q(\crc_reg[0] ));
 sky130_fd_sc_hd__dfstp_2 _889_ (.CLK(clk),
    .D(_101_),
    .SET_B(_037_),
    .Q(\crc_reg[1] ));
 sky130_fd_sc_hd__dfstp_2 _890_ (.CLK(clk),
    .D(_102_),
    .SET_B(_038_),
    .Q(\crc_reg[2] ));
 sky130_fd_sc_hd__dfstp_2 _891_ (.CLK(clk),
    .D(_103_),
    .SET_B(_039_),
    .Q(\crc_reg[3] ));
 sky130_fd_sc_hd__dfstp_2 _892_ (.CLK(clk),
    .D(_104_),
    .SET_B(_040_),
    .Q(\crc_reg[4] ));
 sky130_fd_sc_hd__dfstp_2 _893_ (.CLK(clk),
    .D(_105_),
    .SET_B(_041_),
    .Q(\crc_reg[5] ));
 sky130_fd_sc_hd__dfstp_2 _894_ (.CLK(clk),
    .D(_106_),
    .SET_B(_042_),
    .Q(\crc_reg[6] ));
 sky130_fd_sc_hd__dfstp_2 _895_ (.CLK(clk),
    .D(_107_),
    .SET_B(_043_),
    .Q(\crc_reg[7] ));
 sky130_fd_sc_hd__dfstp_2 _896_ (.CLK(clk),
    .D(_108_),
    .SET_B(_044_),
    .Q(\crc_reg[8] ));
 sky130_fd_sc_hd__dfstp_2 _897_ (.CLK(clk),
    .D(_109_),
    .SET_B(_045_),
    .Q(\crc_reg[9] ));
 sky130_fd_sc_hd__dfstp_2 _898_ (.CLK(clk),
    .D(_110_),
    .SET_B(_046_),
    .Q(\crc_reg[10] ));
 sky130_fd_sc_hd__dfstp_2 _899_ (.CLK(clk),
    .D(_111_),
    .SET_B(_047_),
    .Q(\crc_reg[11] ));
 sky130_fd_sc_hd__dfstp_2 _900_ (.CLK(clk),
    .D(_112_),
    .SET_B(_048_),
    .Q(\crc_reg[12] ));
 sky130_fd_sc_hd__dfstp_2 _901_ (.CLK(clk),
    .D(_113_),
    .SET_B(_049_),
    .Q(\crc_reg[13] ));
 sky130_fd_sc_hd__dfstp_2 _902_ (.CLK(clk),
    .D(_114_),
    .SET_B(_050_),
    .Q(\crc_reg[14] ));
 sky130_fd_sc_hd__dfstp_2 _903_ (.CLK(clk),
    .D(_115_),
    .SET_B(_051_),
    .Q(\crc_reg[15] ));
 sky130_fd_sc_hd__dfstp_2 _904_ (.CLK(clk),
    .D(_116_),
    .SET_B(_052_),
    .Q(\crc_reg[16] ));
 sky130_fd_sc_hd__dfstp_2 _905_ (.CLK(clk),
    .D(_117_),
    .SET_B(_053_),
    .Q(\crc_reg[17] ));
 sky130_fd_sc_hd__dfstp_2 _906_ (.CLK(clk),
    .D(_118_),
    .SET_B(_054_),
    .Q(\crc_reg[18] ));
 sky130_fd_sc_hd__dfstp_2 _907_ (.CLK(clk),
    .D(_119_),
    .SET_B(_055_),
    .Q(\crc_reg[19] ));
 sky130_fd_sc_hd__dfstp_2 _908_ (.CLK(clk),
    .D(_120_),
    .SET_B(_056_),
    .Q(\crc_reg[20] ));
 sky130_fd_sc_hd__dfstp_2 _909_ (.CLK(clk),
    .D(_121_),
    .SET_B(_057_),
    .Q(\crc_reg[21] ));
 sky130_fd_sc_hd__dfstp_2 _910_ (.CLK(clk),
    .D(_122_),
    .SET_B(_058_),
    .Q(\crc_reg[22] ));
 sky130_fd_sc_hd__dfstp_2 _911_ (.CLK(clk),
    .D(_123_),
    .SET_B(_059_),
    .Q(\crc_reg[23] ));
 sky130_fd_sc_hd__dfstp_2 _912_ (.CLK(clk),
    .D(_124_),
    .SET_B(_060_),
    .Q(\crc_reg[24] ));
 sky130_fd_sc_hd__dfstp_2 _913_ (.CLK(clk),
    .D(_125_),
    .SET_B(_061_),
    .Q(\crc_reg[25] ));
 sky130_fd_sc_hd__dfstp_2 _914_ (.CLK(clk),
    .D(_126_),
    .SET_B(_062_),
    .Q(\crc_reg[26] ));
 sky130_fd_sc_hd__dfstp_2 _915_ (.CLK(clk),
    .D(_127_),
    .SET_B(_063_),
    .Q(\crc_reg[27] ));
 sky130_fd_sc_hd__dfstp_2 _916_ (.CLK(clk),
    .D(_128_),
    .SET_B(_064_),
    .Q(\crc_reg[28] ));
 sky130_fd_sc_hd__dfstp_2 _917_ (.CLK(clk),
    .D(_129_),
    .SET_B(_065_),
    .Q(\crc_reg[29] ));
 sky130_fd_sc_hd__dfstp_2 _918_ (.CLK(clk),
    .D(_130_),
    .SET_B(_066_),
    .Q(\crc_reg[30] ));
 sky130_fd_sc_hd__dfstp_2 _919_ (.CLK(clk),
    .D(_131_),
    .SET_B(_067_),
    .Q(\crc_reg[31] ));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Right_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Right_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Right_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Right_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Right_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Right_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Right_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Right_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Right_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Right_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Right_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Right_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Right_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Right_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Right_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Right_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Right_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_59 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_60 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_61 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_62 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_63 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_64 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_65 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_66 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_67 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_68 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_69 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_70 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_71 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_72 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_73 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_74 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_75 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_76 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_30_Left_77 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_31_Left_78 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_32_Left_79 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_33_Left_80 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_34_Left_81 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_35_Left_82 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_36_Left_83 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_37_Left_84 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_38_Left_85 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_39_Left_86 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_40_Left_87 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_41_Left_88 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_42_Left_89 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_43_Left_90 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_44_Left_91 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_45_Left_92 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_46_Left_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_209 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_210 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_211 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_212 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_213 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_214 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_215 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_216 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_217 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_218 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_219 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_220 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_221 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_222 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_223 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_224 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_225 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_226 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_227 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_228 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_229 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_230 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_231 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_232 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_233 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_234 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_235 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_236 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_30_237 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_238 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_239 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_240 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_31_241 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_242 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_243 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_244 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_245 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_32_246 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_247 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_248 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_249 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_33_250 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_251 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_252 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_253 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_254 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_34_255 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_256 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_257 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_258 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_35_259 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_260 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_261 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_262 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_263 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_36_264 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_265 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_266 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_267 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_37_268 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_269 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_270 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_271 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_272 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_38_273 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_274 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_275 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_276 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_39_277 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_278 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_279 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_280 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_281 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_40_282 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_283 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_284 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_285 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_41_286 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_287 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_288 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_289 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_290 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_42_291 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_292 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_293 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_294 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_43_295 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_296 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_297 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_298 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_299 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_44_300 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_301 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_302 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_303 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_45_304 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_305 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_306 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_307 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_308 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_309 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_310 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_311 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_312 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_46_313 ();
endmodule
