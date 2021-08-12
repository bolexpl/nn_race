function [y1] = gdNetT2N20D(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 12-Aug-2021 21:59:12.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.015853;0.016293;0.018015;0.0213;0.027949;0.041065;0.056708;0.036124;0.028091;0.020117;0.016488;0.014631;0.015853;0.001797];
x1_step1.gain = [2.03221673185002;2.03312571731217;2.03669098815155;2.04352712782262;2.05750521320383;2.08564709808277;2.12023424347922;2.07495569969581;2.0578058233847;2.04106000410253;2.03352882323754;2.02969648933547;2.03221673185002;2.00549103445233];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.1944311463704280207;11.78086949733394917;-2.9343968118320722382;3.449747847950052293;0.75322312938271540617;0.85153195944168413867;-7.5629990916682139357;7.2103504444323807121;0.93400299041647405485;3.6277844407080501732;-0.65029299963860154321;-4.7615160359930337464;-3.1136916809116046423;5.671439340612520752;-2.4046232523992507879;3.6853116753411070405;-0.8950796150664203088;1.0757876252287412733;6.3355484229339777968;0.75219201294492155085];
IW1_1 = [-2.1958579573270502472 -3.4104320918682162755 -3.3829769521535233423 3.0696938278340049067 -3.3751962390556231597 1.152374835064292613 -2.7501708972962948252 0.66108206308434791509 -0.40467767306581631237 0.6164543000559571384 -1.8177445855208314018 6.0097665522238399305 -2.2261574893163800226 2.1158631885110867898;-0.93066921677506730948 -2.1485806928717927633 2.4245241950975584544 -2.8258806497566504312 3.1744297946987742876 0.66293968816885706641 -0.058632414223644242768 -1.9575486749079864524 -0.90152063880745414437 -0.90912447606661395128 -0.421655498341368562 0.67295426604164243489 0.24270546572803566865 -11.047919504485840037;-0.43980916300400113572 3.2521351567704042118 0.090890874035639501738 0.55436840610219384473 0.16985594573129539353 2.3926424676990207807 0.26213199556066840712 0.102822519841209159 -0.34464760656129722616 -4.2242323771526919529 -1.2581710526206040246 0.042831571884674464468 -1.434335787545307106 -0.78778005901691683377;5.9378043865080378794 -12.823725346812540948 18.090297492621335351 -6.2101080168440603302 -12.624019063131644458 -13.007268623150530118 11.003522486608442676 -1.8291498165736292947 -0.95504295697709806756 -1.9899006255759166262 -1.1575823321052063353 8.2971962784618131792 6.0949331065982592648 1.215636449231842553;-1.1745408734081284052 1.5064804598584904394 -0.42817420266223110703 1.833727776755428307 -0.95307239833261336859 0.053408286859180434392 -0.14107417429292640199 -0.29563275060058963328 0.22312661225764282569 0.13119113819557351452 0.54844998809059353206 -0.77573521408019574519 -0.38040214805249472629 0.1743479284952475783;-0.077397589363277091712 -1.9411881530296246634 0.33528552228024205428 0.5360695489632832933 -0.779201195434419569 -1.1975568834466494561 -5.4324858051940472237 7.7365534284247008401 0.17655977554145571573 -0.90668887446455126433 -0.52299764523983438558 1.6471063312207305795 0.20782011484936879775 -1.6715541038642256488;2.1613115058067884355 1.6200168718512699684 -4.4368923708145846518 -4.7986215257374222887 0.013271054533004388032 5.1033305013467593625 0.13126373169836380583 10.614502641182092191 -1.0880789011268985345 2.8970784995954299568 -5.2975536707947519233 10.62447746120771086 1.45591561223074617 0.5423424781562383723;-0.44929500445086217875 1.4341609435861022437 1.7254204649571838193 -2.0944578485821234715 2.640612673583254022 -1.2524803809342801575 0.72263252005783285004 -1.5988549468395099051 -0.60171939236826965658 -0.1496981779755408859 -0.35775207828782840114 0.12427888559537307589 -0.39328775029657558893 -5.3241953427621124817;-6.8977917557605739063 19.212809338679981863 -4.2029822690301559263 -0.75166064020326062156 0.15163955613511348464 -0.27591451042025677554 -0.12832721072721325895 -0.33727133262394692892 1.1085049727845577294 0.41214681673336067691 -1.3321703347359701297 -0.26878904843897483135 -6.9685890924461908469 -0.82912576331866949531;0.42930579460897200228 0.88289402576208964035 1.8913821866541571382 0.23164465363479980198 -0.61970638887121065608 -1.7023303314538453801 1.8122775265173565185 1.2992098739800121976 1.393623028397448671 -2.2264409382093726109 0.081225444482694864057 0.3022558580607604406 0.5640840760777691143 2.8209150259350685985;1.9850445448068612109 -6.3531844909961572299 0.75323392606379047098 -0.30635648549446881095 -0.31709112650331777727 -0.21122926824927112932 0.36448430720204283428 0.25422041098891062783 0.84760649727721415481 -0.32564097444428313777 0.082348917558139320128 -0.8045171305954512686 2.6546093911326149595 0.77230775130985407362;-0.70930708201336312158 -0.63040005932809040079 -0.97321292967034378485 -5.4481951046229255553 6.2701629859110985521 2.2377859535239492672 -1.7268457617117849434 -2.0376553945231563603 -3.2626302743312640686 -1.3374187483639197183 0.66949298229299591956 1.3261183971954200178 -1.5166822043103793671 0.35665746254192015607;-0.8080637398079331124 -1.3631805865811015277 -0.94410118339862092451 -0.19203469055666949616 0.88807486559022752459 1.7707828193231276437 -1.088806284468143204 -2.4560263359904119795 -1.1083200954549405903 2.2577225013633310802 -0.050716514882904240036 0.0327735237712224875 -0.30568774153978334196 -2.9188385909769127835;2.140689520420556935 0.67496409088206588134 -1.1178556356143456441 -4.4545495343023846502 1.8406275497879505121 0.58651970910816986216 0.17373230488798563353 -0.155314716659802593 0.98121452205760462117 0.023745621697700870778 3.9223320006328790122 1.6258479450789486975 1.6925576632546672773 0.15928732313345006499;1.5365882653007609804 -0.81765064350604343968 0.55565265511946371202 -2.6079867261512696963 4.942884633699405228 0.6014179822954016652 0.46165539822870055309 -2.4300418617936081489 -1.0750107062931093527 -4.2451119767956049245 1.6662605478697438688 -0.13313898930468745507 0.86278254690756350787 0.53125366008232344228;1.2123013324310358829 -0.42927152198252255255 -0.32122339055820864351 4.2895945813913431977 -0.25274224972760539476 0.34486213084467098877 -1.1772634895622009488 0.28470212495689767307 2.3924164231734854624 -1.9552951066162473914 -0.084762418194177235886 1.1096647037321769602 0.087124983161446539759 2.7641699096905685273;0.15853689761575770478 -1.3430466384855439532 0.14136895674439972637 -1.6294633841199364088 0.81058385368533536486 0.064466646487309611779 0.098101783844328702133 0.16763645341841740266 -0.10225509960454168268 -0.14772741593257110448 -0.42990529704189189841 0.53830837101814943413 1.2317774338411748847 -0.038097602030371408022;0.05870472813540783541 -1.6724335948613724412 0.13690218401268797188 0.7442795453376849224 -1.1712109392765284177 -1.0944022769925694227 -5.3613979605392634298 7.7134244582976547733 0.13618959022465382258 -0.77062118056880557493 -0.61082629845503855215 1.8830472761618683997 0.19960006709385941237 -1.7136422167062308475;0.34759205323427461165 4.4323501713205191166 -0.89894600478436081925 5.4376728781162420034 -6.4960660314156841721 1.9458208024289223026 -5.1356055402116966846 5.0921924656069288417 1.8786949247715394318 2.9465107975489628345 0.76492985877879471346 0.53335260709223342168 -0.5087692214897379106 -1.1980642597610455802;-1.7159205822736307567 2.3755107668126314024 1.7051760165950127224 6.3066569447378526547 -5.0783707743622628072 -1.1832123815255062294 -0.14243996508640141552 2.9744296156626761629 0.80052449602231945391 1.1775577555196541368 -3.8609430829957962494 -0.057219043030290746288 -3.064398782780862085 0.96168200099501777167];

% Layer 2
b2 = [-1.3502424668828474363;0.28336955059883583985];
LW2_1 = [0.309504650142569393 0.6828637204424269358 0.51314466555078108723 0.17807240399012502774 -9.1906092069571059255 -3.2972812619283340396 -0.43329093361724380085 -0.83972349096007237179 0.81513100800186177874 -1.6754917347882547496 1.340180944128930296 0.38693889577390977452 -1.3922177803242268279 0.51447453257084529987 -0.46272049522078911865 0.67486750070683754199 -10.553064182084382239 3.2222723368653878318 -0.34469930323414965656 -0.48669706758063224772;0.012492193268049152713 -0.063269417252257723061 0.0082732301561902702597 0.0094599386950626283138 0.57896769970632655511 0.058806068635854719107 0.038597871684711806961 0.0014821447386247164207 -0.050421040660966552627 -4.3511604932709238014 -0.046869479186752993627 -0.0022644975811376209622 -4.1657331721121719781 -0.019252021789680877351 -0.012119420997708317544 0.99179583583451591533 0.63399294778534720507 -0.074822986229124782698 0.0044808641221284525175 -0.012481716603048104847];

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
