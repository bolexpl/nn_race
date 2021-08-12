function [y1] = gdNetT3N20D(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 12-Aug-2021 22:20:30.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.014928;0.015425;0.017231;0.021103;0.027804;0.034437;0.04709;0.03412;0.027544;0.019775;0.016141;0.014448;0.014928;0.001797];
x1_step1.gain = [2.03030844445888;2.03133331640556;2.03506622614266;2.04311587429525;2.05719834272102;2.07133040516258;2.09883409765875;2.07065059841802;2.05664832136364;2.04034787931342;2.03281161223305;2.02931960972125;2.03030844445888;2.00451617494214];
x1_step1.ymin = -1;

% Layer 1
b1 = [-33.588721081004344171;2.4908814490435502442;-8.049669440907237572;-4.1002066242068764268;1.6510749289047326194;2.4156817373002237304;-1.1152514745118395911;0.57462442842606487048;-6.1020542575397653806;7.5186246670230660882;-17.325844667297648272;-15.099534844841230097;5.3260354778442060564;-8.9854842607686915557;-1.1869748312376342536;0.64874767612238271042;-22.155618047847671193;5.9043627274279852912;-6.8598129699507266466;0.78611049343552763524];
IW1_1 = [-7.8956528553076612553 -3.0439518609375375569 20.078741276589912701 -18.794552492697579993 -1.9223851143159325083 -1.8428672302057920174 1.017431791629716864 -0.92611421014399319951 -2.3782279832753001614 -23.507714778483908447 3.2236831322326766625 -2.328820243484805097 -7.3586545045026641176 0.010908759347440344367;-1.3570021680471417991 -2.2685937884246731855 3.7929639609874099548 -5.0307399203044740332 1.5708568970411822541 1.1039429241858802477 6.3683540531173772337 -2.5292633676986531199 4.8402928538713547724 -3.2908994710737711209 -1.0227678321174167309 -2.4837889102138470676 -1.1248474737865219453 -3.4037487986756045366;-0.43060871783665316537 2.0806232087326597124 -2.6202146885029189427 -1.3009804076118374194 0.041161772442535098093 0.3375211494928886391 1.6085550496237817075 0.17625969696269613851 -1.0263489599515507322 0.24703994652914021413 1.2026645094564945015 -6.491432373395270794 -0.4912580053094880439 0.17742493862140643057;-0.76843946595428158641 0.32194439654578971277 0.73831484307070194273 2.7565121818078544003 -0.30666406490256420403 0.055292183588491299051 0.12841761941271909175 -0.61384930697104456154 -0.57234963121322435242 -0.49100865688179079482 -3.3136242428902011881 -0.78781640512722317382 -1.7720527190094454983 1.3529539394838185906;0.50050328834538071465 -0.11650832684051501409 -0.16204109454575560401 0.11472734264278958149 -0.019354253608513876522 -0.24211166003961842597 -0.55954053771678058382 0.1548084172798597502 0.40360941618150075749 0.0076433805261147628324 0.19784925575580886159 0.45978238708864094253 -0.083013985053068617415 -0.22806249705975203956;1.4987040221232768022 1.0518668683179981382 -3.5386791589372701416 3.6562768570499790677 -2.0035109088385598675 0.26195290191029158011 -2.2463245321922507003 0.10185088494988907282 -0.32504581461449416624 0.67458262053592266128 2.4505376992466310071 0.85193777455502284202 0.68371063202633663991 0.0084997919114273047525;8.7533626211575601417 -17.032999127460197286 -3.5956481082580800113 1.443590410254712797 0.24761166994273256514 0.07889812223435788141 0.11566177700890764579 0.19412757393400850714 -0.1664690782577847028 -0.54640641710726756131 3.2636968401295716191 -0.14797756926134869593 8.9472962089497425353 1.5701905442221473219;-1.6171172868921011023 -1.6120581612455244791 -0.29039025002856500013 -0.1005516847833868993 2.2075206505222899622 -2.5772757045833079026 3.5413845413537154982 3.7406963262065109355 3.467421615526309342 -8.7040183972635087883 0.97179537689221462404 1.3682291712729204303 -2.213505645352600304 -2.5980780425387153265;-1.0122893459846005193 2.0737840687568005471 -1.9966682491615768136 -1.8226067173395654741 -0.17172260431860905672 0.39379986175127706938 1.7625791911888906149 0.20937527239338304952 -1.1027331893409950681 0.37590532699636908243 1.2505597780745436598 -6.765022547531868824 -0.073384548430088888948 -2.1973362978199713069;1.9455052112325050828 -1.6186975633433529076 -0.048257676961058731946 -0.29802064537674466393 5.4575937923187183287 -3.2149222077041903489 2.5089920119675639398 2.1743188403356161764 0.13801797075811339521 0.87175492601995241415 -0.57312995061423721577 0.92248762973278874977 2.6307631018684602964 4.9664278081686701327;-11.497900972606595715 -1.6667631339640229804 28.573183491144291679 -17.218661078589338587 -8.8041272758180291191 21.238043887860204251 -1.4769113773861397565 8.0372961248385781374 35.469826839206916702 -36.817399699677260116 -1.0746710114730957386 8.911968946031244343 -10.833702623155422984 19.031652461231544748;-4.6576132992564787116 -0.35446765180167111309 0.81928338420495072647 0.68222891073365876657 0.93176608568396646071 0.60801316909464764304 6.5600489792149900836 1.5832103504462562427 -10.908188414857779236 8.7211128008811460433 -1.5628038140998223859 -9.2308211112076055116 -4.9149975211452812118 0.91354182281673668165;0.64364857661146945844 1.2915631767140798303 0.39042423471823473058 -0.70653960919360814241 -1.5801264181190459723 -0.49986431545416015743 -0.57317906699796139502 5.385058800351457009 -2.357226877697724543 -0.094016875180430448111 -0.84972826734697814999 -0.33545476144855368439 0.39950268279600059662 -2.194651004732261601;1.8755750391839522973 -1.0911694423493387696 -3.913938188470268642 1.697572075027084626 1.3569175329509184369 -1.2177919862979504906 7.8005063458573253854 -5.0283232024760229351 -12.824766676684411948 6.317068438706614053 -0.30892978760112743686 -0.10245917362175799292 0.89571122751717990873 8.2986277705291122686;-0.011857194195710549917 0.044069151954040486352 -0.34784126825538053129 -0.1000026049840046366 0.41319198673816986966 -0.18850182810289056734 -0.55733230327909610846 -1.6138509663910671765 0.058925997022084737609 -0.032414261715737836822 1.4484030036923836171 0.16029880039717761542 -0.092183125179844657704 0.15632131729005507847;-0.19519175805147251368 0.19609972333111816423 -0.22178575227314017981 -0.61656665757398010363 0.50898131720803052591 0.42829082972044285604 0.039806817619896510407 -0.87984142787673591535 -0.82051204211430095459 -0.73901255598281001546 1.0679649555449328702 0.025753882876255237283 -0.018829041241651956612 -0.47156475548498921757;-0.98952976721793028947 -8.1762613048717494024 -4.7668418686533939876 2.2405672793600990289 1.1706507637602121541 0.80935036851893449317 0.88355545141490132721 0.44484207584637347477 -0.012662756175315377505 0.7016753120892865736 0.41833171168039690047 -4.9311242540938868828 -0.53761891762855107402 8.5395924358077675009;3.1362580186223327772 -1.1571884509456951129 -3.4568831924601313155 0.48419328040081499598 0.2827439438670099614 -0.075556753192916270567 -0.34139400313314272051 1.3972138216857916682 3.0436552928459934542 -1.1528241863480208629 1.3964513934296747255 -0.12355609023455862983 4.0439328674434955602 -0.22696564226008078546;-0.038365566339549739272 -2.1768628834460970189 0.61244148993506097867 0.16649191205172789165 0.0062007780904639320241 -3.5950708817632244241 -3.0102346761320837309 -0.80208081760443916686 2.0313196170673224472 -1.1371545139782022193 0.016553229480482749975 0.45530843492155526064 0.91451266828262811615 -2.1749422227991388468;1.8845317061256814384 1.9505063517707608156 -6.7391975846965106456 -4.0742111213388074731 1.3583129202590955575 0.63296917702450017362 0.41145568596308168541 0.79594934570399911156 1.3875612715168308409 1.0590954844667990198 3.9177153890756102328 -0.61548108424098901814 1.87203049594773141 -0.32129471647571972159];

% Layer 2
b2 = [0.5949024716878065222;0.14536452888089237967];
LW2_1 = [0.17957840437192393312 0.23051226343465183732 -1.036893448588523059 -0.78866735027878032138 -2.9534998189593317797 0.47252315133610328646 -0.52797329032991169306 0.24015497204694921662 -0.018870549900788839703 -0.032644438995598441811 0.077002778236898064557 -0.18406962546878752329 0.54684881805542884248 0.16782896881808656575 1.5463516855103114356 -0.81917791076446055953 0.38003648137435563914 0.39272191620827623382 -1.1253087222585738125 -0.40379552482986902362;0.0098678974996065545178 -0.0052931965760203737725 1.2443763272746577453 0.015361264042225007687 0.072622520283758221216 -0.010364591203159212798 0.025003441242181612819 0.0012051552335362533414 -1.167773836495014983 -0.99236263790914891469 0.012050774858235810752 -0.019768555864948678807 0.0072128263975953406384 0.026137916460521621459 0.024862237901208682905 -0.05937861345077027897 0.008339044908828941241 -0.015292864566900805576 -1.8857921378075204188 0.0060027533563404315495];

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
