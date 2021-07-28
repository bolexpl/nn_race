function [y1] = gdNetBDMix20(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 28-Jul-2021 21:59:26.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.014018;0.016235;0.019675;0.027656;0.035214;0.041072;0.047315;0.038958;0.034175;0.027592;0.019829;0.01641;0.014018;0.011819];
x1_step1.gain = [2.0284345961691;2.03300584997433;2.04013974957285;2.05688521757732;2.07299857170398;2.08566232292727;2.09932978896487;2.08107450038604;2.07076851396475;2.05674984163026;2.04046028703155;2.03336756168729;2.0284345961691;2.02816101570304];
x1_step1.ymin = -1;

% Layer 1
b1 = [0.80136247295027573934;1.6925244323571313476;-4.6769593271260099243;3.0662500983377141139;-0.038169005753501794587;1.696331223789427689;1.0496418812770975659;0.63218161024788710467;3.6262486097076980229;0.66720105337231416787;4.7224562328992183424;-2.7567043794582484217;0.94116874630608060581;1.0536255362337287877;-1.9595238078254331171;-0.234117669391876837;-4.2439887133239304617;-15.21433288073857959;5.3113547361601272101;-12.390775873571644894];
IW1_1 = [3.7050996867866254902 -2.8106236506578836654 -1.5311876023685437875 -3.8891843085949644454 0.84776042298599241231 -3.217980345079173965 -1.2780066473545985684 0.8746379525500049823 -0.63414470640901265952 -1.8835980456669121352 -2.1418665925876947398 -0.85126180523909034115 4.6465067688345564889 3.6569421475361059137;-0.071661570157109236168 -0.083735187380999664963 -1.6961844175579572358 -0.40469708722444092119 -0.070900714184981686317 0.25463166730106495672 -0.88677570870485078469 2.0996886577880067293 0.25144201304921059981 -0.78381934510744311062 0.99706692662336549038 0.26899764456269270596 0.45614659371232990637 -0.43001556476127544837;0.38949783244647362412 -4.9597815482660232433 -1.530814393972888432 0.86818244833601576627 0.60423684604212857252 -0.10554121152017038876 0.7307278626172308833 2.3969065945274494744 -1.0788804968649186034 0.41299426308586767442 1.5675089819373888567 0.66177205001165440024 0.31749945259066697512 0.8648491059197521702;-2.0235885293274624708 4.5486082988899214641 1.2823997883476772053 0.70301954284019907426 -0.49863976463362302827 -0.45052024204562624021 0.42732745266039573462 -0.84915367549736275876 0.21162384011107898685 1.1278491108049382152 0.28004582919956966247 0.34306405302133363699 -1.1976469512505500958 -0.096669449979810959106;0.88532738718086789742 0.80972284595420185305 0.21369064692816405748 -1.0647431426214910566 1.0163579072622117572 -1.0734972006716081427 -1.5788945667733227385 -0.76644801750348645619 0.067577706985430238684 0.42776275764278337554 -0.26446093153495286998 -0.40688687773108367374 -0.043121987013875456851 1.5157565690452383667;1.5616744089988410238 0.17267709692675631272 -0.54669978775975358598 -0.065008946967407110762 0.2234546082779023668 -0.086539001977140456168 -0.030494338907134585503 0.20007565641212521346 -0.43863751954696900137 0.18998404628337320355 0.16457311884611167119 0.77697421965360080609 2.0350918851771524487 0.88661389382202682174;2.263799821739949536 -0.55998662360114681569 -5.4529907908453187915 4.1373692169419387099 0.39813014847507027794 0.54772488141950026463 2.3147128526614073607 -0.93157944344185150687 -0.98805369256246755594 -0.72638984278992635435 0.96512749390533525418 -0.28968322456410572352 1.1848460781798042518 1.5481208573839884135;0.71927352516661902104 -1.1062289083385552502 -1.2108687785066376552 0.080036846461389754559 -0.055732797032786565716 -0.18391869973316973819 -0.11208927229353389532 0.79699393103942794969 0.16803052196177134525 -0.13122086232206645051 0.90994940294135195913 -0.11905061325685928342 0.42817786503881488658 0.020082621678350631028;2.8057548383164925276 -1.2368797127016291082 -1.0566446510262903491 -1.2101256590614448694 -0.75487246930140416978 -0.84806964378464977372 -1.3813365954252228018 7.1870543628549068416 -1.6648173328269855187 -0.32857167139467091665 -1.3131553354207721185 -1.2215790287329773012 1.4942271533958528806 0.73707014708044538143;0.076780232598934655686 0.22599730402642254079 -1.2048394627004506141 -0.99905352043379103133 0.52006647664131455677 -0.042953218485923622127 -0.75199407827930686565 0.7105354386567888092 -0.58972342899158913809 0.92056604008088993574 0.19416561816246372119 0.18333855134909546325 0.38168247299708574216 -0.27663790405035570963;-3.2603723891872919971 -0.035263676805464112818 1.0199929855565430525 -0.3567909213255854306 -0.44092120513688481953 0.11461926972593602936 -1.4096188639298274925 -0.093612544483116663652 -1.0215050301059267479 1.3049747008558438832 -1.0472151797395197192 13.538433051486006065 -2.9442054366378229702 2.1365756628898830982;-2.1194390983588617949 -1.3295494585728937498 1.027944440485251576 0.50217274950442014614 0.2207847903552352109 1.5152128737327144048 11.890901746839837472 -10.904033439168452801 -0.14216635425257825864 -4.0517138942787154221 0.48630428045097184864 1.8122977004527265343 -1.4458801483457977 0.47627048358592760646;1.295178112485922961 -0.61516348840596479786 -0.38284571114107074363 -0.27391866169310041812 0.1438323685380142325 -0.42326117629590914726 -0.76860187678297020586 0.029844291275071484909 -0.10975476907531328541 0.5892460994907512406 0.16443112833189996169 0.18583154863283085634 0.15904129728235724683 -0.35383420653767810871;0.29579201514186903577 -1.9668154405706286258 -0.69837152261899970718 0.78165467010640365952 0.61908494706204542091 -0.32522467467026155985 -0.78117578078955141052 1.4619067939435537173 0.08954901292562304771 0.94743335925503779915 1.7792476328087143411 0.94796619011142324585 0.25654901555887793529 -0.27637704035999094421;-0.96536268355991339263 -1.20889548969895122 1.0015512717289642985 0.8628477066274458096 -0.32501454353858161284 -0.24301316450168583549 -1.9804924922398829956 0.20871340161439017047 0.23276544261679613101 -0.2372010114200301667 -0.37550962822149175357 -0.051243893752559818711 -0.57118619243357060533 -0.34405766933581322098;-0.31596863048240969585 -0.55117554968763793344 -0.65901618375609594125 0.038993812913519873553 -0.2395342308434227907 1.4114782471622613347 0.75079283229839377523 -0.45632076138327359871 0.33053290633719412117 -1.039705855518366695 1.0811179701449591395 -1.4012704151960018173 -1.826968323012085893 -3.3946655130150684698;-0.013303469217043270567 -1.3237824669406765832 5.6179154794783823235 -0.88954611664611993316 -0.51388722040614298603 0.91632407272976290624 1.3856165663123731768 -1.6591794500015604186 0.14965398402901822217 -1.1009741811045856696 -0.41111410907405659954 -9.8514330502482252427 -0.21002519439368044774 -1.1230543575034142023;-3.9821782752461123422 -2.6499401240128266366 -0.18451351894241507789 0.72634752313006711866 -0.60520139421894492138 2.4140969987901601534 0.018211335801212258367 -1.3925633637880974192 -7.1329012077957081317 -6.4197242870376962642 6.0484905706790055291 -0.58625579589231302524 -3.7793335282779016993 -1.9620598993191138426;-0.48227910254608086227 6.9048501879693811034 1.0478454101212919536 -0.97234072325885811949 -0.7363206692489645544 0.27668567380319464277 -0.76278310706168217514 -2.7363909142378761707 1.1288785801787835084 -0.490646795202359709 -1.802289374235119146 -0.78702366846466076389 -0.63066739962774787109 -0.77021882383675910333;-0.75056208126761103649 -1.7123011005606378898 -0.14755725216844695069 -2.1083454980427962511 -0.13480805420302216513 0.70322439207136799855 1.0259425024222326162 -3.3437663663096119926 -0.20597664341908028529 -0.92698641068767451134 -5.5348880287792461274 -3.2575187285728781639 -0.60565014429078956049 4.2506839120642174734];

% Layer 2
b2 = [-1.2390108311483960524;0.52295059616896444332];
LW2_1 = [-0.51771755960718746081 -2.0418125573945320461 -5.9292348518633533061 1.0697337514433276073 0.50590239543500115094 0.98427465002325009724 -0.37350245092606609854 2.9079124729690888351 1.1950051961766843256 2.1140236570461254928 -0.25301120820903205688 0.2968357906640538002 -2.6037780807712955777 -0.80233938321299613783 0.60460909807969531737 0.32592720518028217569 -0.38863700378188448248 0.20457532060027708298 -5.1228860054998905937 -0.24810815546361428274;-0.30379290030911260123 -0.18059698413286714991 -0.48825368895182114093 -0.15350533855293194141 0.4262933324410937419 -0.15270853057660144225 0.013236456193940964593 0.46019642428680129775 0.47831408655442592126 -0.1831144094783188625 0.11301798203545469768 -0.00020872211156514313551 -0.61886431514729889347 0.30160705461265163718 -0.20083767905620469874 -0.28232815210233341841 0.0090968638711226412069 0.35074262635364727991 -0.47910402508859284421 0.12304003135953370252];

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
