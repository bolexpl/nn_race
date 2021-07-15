function [y1] = gdNet2(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 15-Jul-2021 22:36:25.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.016842;0.019052;0.022363;0.028153;0.038785;0.048118;0.065766;0.076225;0.055487;0.036092;0.027469;0.023251;0.016842;0.012255];
x1_step1.gain = [2.03426102416906;2.03884405697346;2.04574908682875;2.05793710326831;2.08069994746233;2.10110076669167;2.14079127927264;2.16502936321074;2.11749335371774;2.07488681492425;2.05648971600905;2.04760895583205;2.03426102416906;2.02905814164652];
x1_step1.ymin = -1;

% Layer 1
b1 = [-2.0577403978815089758;-3.0390006115549135224;0.38467520606206118128;3.4851309122968068266;-0.26471253893346680108;-1.3175779414200337047;-1.7823586159796545036;0.9905661802176984887;-0.4858795843790524871;2.6387014194392079958;-1.9489232402937024524;2.620230736863898624;-0.8217585166558686316;-1.1038664434639289258;0.102317889879000673;-1.5558941978061238132;-1.0236602804345713569;-0.22884467457739407492;1.5716618023451967012;-3.9036082021855982305;-0.5562150651984486549;2.218127034095590755;0.21913319587803675725;-2.3780035837994915049;-2.7818074971854813704;-3.5914830241614623674;2.5806655001660563364;1.2760055076316139111;-2.8279614020360517301;5.3698039428479917845];
IW1_1 = [0.49018684158315539712 -1.6856214660436241726 1.05623101368220218 -0.98135922646641493561 0.75650664247236276694 0.65851213828888777169 -0.82227194714975893053 -1.9365715327103782961 -0.034799408449943114441 -0.59954795109463931979 1.1242477282758098767 0.058479641451206022806 0.76771589114331018067 -0.82789676617167351491;1.3845138006246116014 -6.3235484487555329025 0.079773640590128702677 -0.6501087747841880482 -2.0644756000559123521 2.9701683589116329998 -1.907675826490851767 1.035191836350327188 -0.32190586264947529394 -1.4301187823274974509 -0.95735792849090028955 1.0493222348057638094 0.89581264020678175175 -1.6521064826129692182;-0.72160425484018286824 0.87267728989842385801 -0.49561646618684729315 0.96468876443420437106 0.40738815598532185369 0.083475079188115058892 0.7231218883031412803 -0.7315662986453220773 -1.0292873461900158283 -0.50565668735275925982 0.30159100883063749698 0.74255517782116120529 0.2322223622422110445 -0.40307271527970173208;1.6508841210554530132 -1.0855606048899109073 0.15152279842714846958 1.5209441145198521195 -0.07962230188876129322 -0.73968835937737820174 0.0039433710381541961509 0.078757638970795698641 -0.71165763861878050811 -0.26556742003249622641 -0.95759816428617638984 -0.54050160636511546119 2.3150761247961448852 0.73676716526077390412;-1.58067129462266176 3.4575602361101056559 2.6317209419135036974 2.9922685417384742301 -1.1308641846662637054 -1.7120898914604216756 0.045165069390888157308 -1.8940665358622932324 3.4515095697006601405 -0.89457616971946452011 -4.5778098817278998212 -0.47444260530428999934 -0.40790866848153095603 0.41038487809584150989;0.24503343777464955955 1.4728650737061390608 0.020978347775763371563 -0.31672868981099888686 0.93695822136901241173 -0.2395123555036114682 0.010536914386356718842 -0.78019311499696841761 -1.4938110713634487059 -1.5069426177374669606 0.35573815950044795908 0.3989164712095391585 -0.70203587213609797146 0.4232624400577324475;0.10024111454072187621 0.68196392559199769945 -0.32114971559483024288 0.72270478430128792802 -1.9763472117279461404 -1.2452213283529207644 0.23465806599351557438 0.76588160635438051749 0.42876606156729168973 0.3738215676372800278 0.23905436023952972291 -0.13082196661479067457 -0.64555991144590874065 -1.6915928215387698863;0.90109778322889744206 -1.3484982097182236505 0.75034450783766526438 -0.38135872482511118386 1.0203504990133960284 -0.25439392023479695526 -0.66959517926338385507 -0.62010542734178986102 -0.78068954519376632106 -1.0023213567666087176 -0.020341760647343987839 0.1917637933043063736 0.43523357767837161925 -0.63605012465212618089;-0.20396402919245820717 -1.4316602542523453323 1.2191951128931275417 -2.6220699449483695354 -1.3068327895554363582 0.72288728547762548526 -0.3200164476818442294 0.90228829970662671744 -1.0130721000897633388 -0.72389366771991692229 -1.466945452108677328 2.0502347351189547098 0.015383020427015836606 1.8087220297855561846;3.8229961368496048202 -2.0492484349181059322 -4.0780448812526381985 5.3131272738392052446 -2.2671744308417292046 0.31705861142199681657 -0.36103293692755905608 0.78440074127632541945 -2.4623890679963462702 6.2539104301144945453 -2.4259766554491335455 -2.9741688820977696395 4.1779252230344878782 -1.1853931309317846665;-0.1630995926622799963 -1.2509052978406320911 0.75545209798847590132 -0.68030179366035536948 0.37707957502894096091 2.6779273507933401 -0.68338134448469489701 -0.37653073705766804125 1.0343697998208254418 2.1746359882456105517 -1.015199262538089009 0.92075682264348357453 -1.4256400227040038065 2.1042598379212615889;-0.78415702337833714797 3.3609489074549605547 -0.20550883909310410647 0.64015324802112594238 0.087372782414118693728 -1.3589790909282131182 1.1911693678192414314 4.9916932926920916103 -1.0162532567452287058 -0.67628098052322971334 -2.8416494836722709927 0.87001865776770925809 -0.26900570436288578913 1.9563285428738903526;1.3316909394596350147 1.1638790914332186599 -2.0433373122056357474 -0.9287651459074475202 -0.088651734100905432712 0.28152160065050313431 -0.81220445675810315489 1.1316776724292869627 1.3269442466821059767 -0.66597573927755437939 -1.2632630521298842119 0.71915959911951532479 0.34114513644442684415 0.95969342768169008107;0.26175074352600286032 -0.62682065016033783333 -0.93385153433041068194 -6.2850840544806212407 0.64631124920479343654 4.719928932005446498 -3.6781202193935897959 1.806270395768452941 -0.15125908583308025901 -1.9003275358215738766 -2.2755917648591141855 4.5391911372734394803 0.87295578334801338105 2.2911768318468612726;0.69670703822851920428 -0.25463348198895963126 -0.74831277193851386542 -0.067846092476921887604 0.29866442425896855273 -0.49446246670896021325 -0.44439175502861677503 1.4778880353853658391 0.45457139376596350511 1.1689031963220219978 -0.41181150842988251126 -0.5666057475570805968 0.91315023530287398046 1.1259596911008775688;-0.76372847766808371617 1.6667493624584199807 0.75770807365113146403 1.07785844424907018 -0.31984551169218111699 0.97333530079744323693 0.98952924538649411623 -2.3399613501424654238 0.21396607308490661614 0.063485399822173882445 0.44920314131621985609 -1.738773021347430392 -1.7810522894776792402 0.33106771593311340451;-2.184812489663724655 2.5685413253710644987 2.5237636886964018856 3.8623202466499622076 -1.4948587924305796193 1.3559683088151437413 0.56010999931869698276 -2.1662470993748623727 -0.79429760589485431943 2.9665917046086422992 -1.0421241190674621624 3.1559493978554038485 -1.4780962519179898784 6.2405449262308323455;-0.11361934025242229063 0.21873553748696031307 -2.5881373739535540324 -3.6829015207792767939 -0.045338343213426918199 3.4993393514242812081 -1.2491433110494829517 1.6437353151696463271 -3.0488028024208184696 0.56785139021007480231 4.3753387949358364395 0.43710692558012964604 -0.71496118178884215943 0.36254132592571658433;1.7604857267589326675 -1.7182696302540072519 -0.50703839370070180603 -1.1135212350579628549 0.37495593138552280044 -1.064749281099347078 -0.75851641124570567953 1.9064369919299792855 -0.07773018578164184178 -0.16964088631423029918 -0.19101431547654126875 1.1623076263164140443 0.56469387867608678011 -0.89483716421853132239;-2.7029770380551543241 -0.9951630087444807149 0.86369997219701721836 -0.66192686305881043296 -0.019495306571833282555 0.37401873460044626762 0.039089979700462219869 0.41600310152429331723 0.71397172673614273108 0.55407123202772057269 0.89730843319062658647 0.71220849934452667984 -1.5385415415251180171 -0.75551017380970786341;-0.22763789286329372263 0.50681474743820575934 0.44716143372394911992 -0.68796957354442089816 -0.30108108605165939675 1.4233388126418951014 0.10293745829560635441 -1.2718059904112199998 -0.11117402700054371256 -0.078125020633866670838 0.34821897029765319642 -0.44577460496783949395 -1.0336578837383338936 -0.63486546930866460947;1.5610680526356561781 -0.13387865300610943264 -0.8519951630965240108 0.36746815472817839776 0.03736410691356212288 2.0307077001120901194 -0.11530998798863295596 -0.86557639102444849932 -0.4205718516346556024 -0.35954530947955598563 -0.52039514121693675186 -0.13010922735721919263 0.57193462385238291734 2.0491068714497697734;0.57602945882491085605 -0.57775380922323016364 0.94419763083681007565 -1.4951098486071567883 0.20900459476248256507 -0.94271459377050870199 0.69139122564226629386 -0.035183354895793363115 0.3032864428776159138 -0.2548141047024216066 -1.4725110920075599186 0.73304321841721864494 0.46484488782239719029 0.99393500936033052362;0.14525743050570022463 -0.50112841633950533371 -0.53732004546599687611 -1.308065887743437683 -0.52332269810981779656 0.88199065813364185829 -0.85604906779028533403 1.3086674824139132856 -0.72244168928436558463 0.11748236933370426183 -0.44733427855164620279 -0.59543201947042545541 -0.18892750614964207156 2.2769246158033840111;-2.0781611311688696908 0.64699049025609811636 -0.68074648457887487751 0.17933164827258782359 1.0046261041687445381 -0.48947210246479494478 0.89173679100058700353 0.45729593412451763346 1.0238104485526289267 -0.97239058487742036085 1.2130371041989154168 1.6943910537626269974 -0.74644681101781684696 3.0728355357763015299;-1.8475184073458987832 -1.1359946264982569986 2.1352635116268579019 -0.39228360597878170202 1.2036458652441814898 -3.4577109433413206752 0.99684013903096424514 0.039269027578943488388 1.027871399424626242 -0.88403917969092948859 -0.64196036724858696054 -1.1745645872612526794 -1.1724805986932331781 -2.4555047660296414058;2.7831373213862518057 0.80527339002262821044 -2.4533660753997752479 -1.0232513490688333047 0.12100952185112542892 -0.41376148926430844632 -5.5169944300786077918 2.4872758403877890387 2.3094595774015447276 -1.6920756411274411324 -1.4303915622744935998 -0.86668496451441079387 2.1162840366502635447 1.2114562863486140198;0.65690064291768224258 -1.2486043235817907426 1.2340610153728814868 -0.15010784750748801253 0.58547430107165465696 -0.26069164322483345808 -0.5179391330800198201 -0.36237767317707159087 -0.5037646429006955584 -0.37921163530867835201 0.13088921858749172356 -0.032442814387394644515 0.21432772775075201177 -0.74918732480006156038;-0.28252369797095944204 -2.3150253672819522954 -0.020914096001610853887 -0.99804230792963932739 0.13373012726012292739 1.0884455920084847858 -1.2725252911112436838 -5.0315550857387325578 0.80512533786202233888 0.50108757850872609474 2.8603368034347442794 -0.95352799354741413218 0.74831971497210947319 -1.7829579186930646362;1.9136474460073260584 -0.022658216544816582594 -0.79612102233042192356 0.18442401108972886203 -0.63048162314708233733 0.19446093066139577554 -0.5538841273410090027 1.0005535209876881275 3.5020998839404162695 -1.3077392323019063625 1.5693566765967510435 -0.47328637388324307222 0.582463055151377751 0.7904881729374213517];

% Layer 2
b2 = [-2.8644378264954122315;-1.0593096922804055016];
LW2_1 = [2.4155952999721441721 -0.66693794408913464888 2.3165344680702322222 5.0225503451390069998 0.80010590054790409198 -2.398723808941622071 -1.4234719018509780497 -3.4969312412031179349 -1.1485739394201393004 0.3200060303168242859 -0.65687776798502206521 2.0498859070311996611 1.6014262452552041616 -0.56007318325978727724 -1.0407357750006671626 -5.0375901993334295526 -0.29634931343269721449 1.0706722072688765746 -4.748180623943694556 4.4914221417653159563 2.0896323855199354647 0.16094421143896817106 1.7121193009519966033 1.2641917559960669237 0.55104040763597383901 0.73568319993791986278 0.64664580522996140122 5.0223255100104076121 2.3182969467476093328 2.4378427603583086025;-0.49153788962685868169 -0.18495808917576511687 -0.3922201934815070512 0.15874989910193876286 -0.30349526499090506704 0.26915531213173676806 -3.4241695111130017182 -0.091504547119503107377 -0.073157678509782997356 -0.0068256980642381025193 0.26884671073640548089 -2.0510250888953822646 0.36964855589889106247 -0.14989220015690651877 -0.85932345608263682735 -1.0479159972614116025 -0.098413234353202774796 -0.14899309475218022736 -1.3429712678431489081 -0.32070076313842027504 -0.72885228315503858276 -2.9016060896312616535 -0.086382869450556773461 0.46053398310395204929 0.0062006448983168349284 0.095382262001355549996 0.0038845376511395454666 0.01178320366512847564 -1.7540449152584141057 0.63978633977085230811];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [1;2];
y1_step1.xoffset = [-1;0];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,1); % samples

% Input 1
x1 = x1';
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
y1 = y1';
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
