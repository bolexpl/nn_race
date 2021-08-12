function [y1] = gdNetT2N20(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 12-Aug-2021 21:35:50.
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
b1 = [-3.1528449971758845116;3.1968568851526915076;2.0869579679316054843;3.12821665089987766;1.6301674676179731538;1.1672336573874493304;0.49158632251112632794;-1.2438812746283305355;-2.8299227568898785989;-2.121493236268724214;1.2548334897239918906;-1.5713586558100474111;-0.92363100942421494377;0.70479263871129615993;3.730271656058869123;0.31445376379806733169;1.250597156626332751;1.3316358255302882529;0.72036148783550313368;2.9516281420602279439];
IW1_1 = [-0.31473635234702213026 -0.78617430006704180911 0.40786044902026141745 -1.2297351182672215941 -1.6688364136850235564 1.0363353662956245049 -0.18335488985588496713 -0.47402203295742012523 -1.1585066436555750968 -1.4721124040443396286 0.011059725565412389936 2.2809312047302530146 -1.2945810169378908494 -1.5787775246680382235;-0.7550338733052670559 -0.43319455600465595069 1.0536109567433935563 0.7861994134946717061 2.6636555277229438943 -1.8485395976772367455 1.652693501687519273 0.83439301083214112431 -1.4222601608276090879 -0.60620799459366525586 -0.027213471936113967087 -0.55912599856764522155 -0.55359703581528441063 -0.51358249382290988017;-0.27516137215125213711 0.66513357140966156145 -0.02884126846546024997 -0.040766320021260404882 1.6256933081495947846 0.76109793616662868576 0.26471645532545756696 -0.33581382257786063228 0.0032247325537531441528 0.029881684441180708656 0.15818598366850569747 -1.0958964038980898437 -0.45299337621956503597 -0.48021576370689084134;-0.73075552435961943498 0.62293304825198625441 0.28616294562500166343 -0.047554727512358820063 0.17467202430279082925 -1.284700305889972638 0.12327398084498142339 0.083095239926088804161 0.70530815703940485939 0.20912399722228691701 0.72801728851636537954 1.9642715859286470348 0.21410470890838462221 -0.48923153730487423108;-3.0974847195616468376 3.3810639839485978619 3.1129087981896290671 1.8026428196442885188 -1.1037294172048897067 0.23689901466187662793 -0.36151258677983671985 0.019246056791614642861 -0.13406239060376412553 -0.077988511035926466608 0.44916615220722327928 0.94690745961751732196 -3.0762975489636321669 0.60938845292885712723;-1.0589281359500095636 1.181513275804367602 0.85307442685400969307 0.13845750761671904439 0.65625438693881743557 -0.12695043774872255549 0.30283229103975478624 1.173059888026146691 0.09578272123065477428 -0.047230727692384899541 0.014840876410938803193 0.95377718852219495194 -0.36939504720356958201 0.41168136784870318357;1.3296538714232595257 -0.69542659135080298061 -1.5036685139853576132 -2.3040495593286265397 1.9815468181608089093 0.81712350860958937737 -0.031924245185841644556 -0.84139553804815825355 0.72759349059729838682 0.51098640294388986138 0.47229430621553603054 1.8353135243384133268 1.9096930881488731746 0.78897167790420574818;1.1226088180288431584 0.76206937044743872089 -0.32710039331342904978 1.0264673929939625019 0.73939655428366968248 0.97916179089200983121 0.30335030634260762294 0.4033533630963412886 0.40334688679844099557 0.27065438983434181308 0.36454830700294871271 0.62276040028872436949 1.1155819195158083179 0.061687173501890429916;-1.7792168673769757081 1.8320668289790953409 3.2277754838620400513 -0.34796995529874802378 0.11586026408521490905 -0.62127569193167286876 -0.1428945022095664541 -0.57550075943570544457 -1.7334441503503854598 -0.24352784274406927278 -3.4822354708829097447 1.1285328941544929826 -0.95791403431658173062 0.071174634650238211009;-0.56149366022243785146 -0.87061215907149303028 -0.89385035116843425396 -0.34665274613772500967 -0.3110506866219183153 0.66576973515019910455 -0.34850640673327637487 -0.6819290830423349048 0.070668972489708631324 0.29337672785182689061 0.2466710582033888044 -0.43364226498960267708 -0.63145644497286546049 0.16224571039617247115;0.47032572507853170896 0.78373011099696121562 -0.28864151569718865531 2.0984052040526832705 -1.820183042970507703 -2.0457937602328266635 0.020387464026766832781 0.055347497249030604138 -0.47817221655668928904 -0.059137429828295430545 -0.32077774357536403826 1.3414000054990267152 -0.61810982201442188355 -0.84745925100306718214;-0.091736752759767864474 -0.29917671272010554206 0.29274359704000313398 0.24836700050935917039 -0.73545896196600824002 -0.57359247037651150958 0.42117817785798689068 0.55267992895476636406 0.67410214172621440998 0.85962818776064808812 0.9478416820903662332 2.4677306098929490119 0.4755601624151731821 -1.3019571413064281451;0.085171738280136466415 -0.29853813798100492516 -0.2608011249647809171 0.32452661009304251127 -0.72016201947104874215 -0.069897244443320821761 -0.45013063981045642326 0.074941793526338035258 0.22237258997311126762 0.23063416375745585118 -0.14651407381100398086 -0.2965669338594843496 0.55529032644981435318 2.6024353388151744149;0.10760398041805510627 0.55217514853159499477 -0.62235682622673749176 0.063991460930403337715 1.0881482307095029505 -0.42699908962520477518 0.051513386157102561413 -0.524675649120785903 -0.14312194891541230035 0.065109481900419888256 -0.20484932515373219242 -0.064181150604750339395 -0.71224971110842227873 0.53891471703311510932;1.0018786664919343554 0.19443728236053592351 -1.2277354096446644327 -2.5382242083406820754 -0.0010634224780892136825 -0.2943705584625993521 0.40194680131514076704 -0.1141045317520545388 0.8252191653514256986 0.037503571285989439899 4.6267494359578593688 0.29306146551554201896 0.28552283678238510323 -1.3343717986329175496;-1.3885422365054187477 0.98335961590963849588 0.71780155453109906194 2.545724797326988309 -1.4390342312420374427 -0.066421689188115723423 -0.20986989432841871017 0.85644897951307774608 0.76512009067437547483 -0.50277093244668769056 -0.65213980120897574455 -0.4102131814315652103 -1.6433716838807412852 0.0022011992042422282023;-0.79267758599444337886 -0.054412992656727859897 3.2615368917002554028 2.7288596931791935241 0.065740942386692702293 -0.74296956846373118921 -0.68331739849216532878 0.49742250619626759978 2.0613386716573436352 -1.1889783771063684448 -0.66260877918756710958 -0.24512738445341517024 -1.9263680178021755918 1.739558571963965905;0.92844390188662129226 0.25676841181814757942 2.2396711839226175478 -0.4259692056614440836 0.057196246943510241356 -0.7768654189936042842 0.36346459150759785617 -0.010339024978744362077 -0.2792151172597617248 -0.25426653965767798127 -2.0963919337179266478 0.5651053411232527246 1.1560099652063344777 -0.14660796793483193978;-1.5070440105957589871 -0.48826893832774165283 2.8850578527227890291 2.9374319997242355207 -3.3868609707843426726 2.0769761474393675371 -0.54868671382818845483 0.27758330872679259915 -2.2837148278638483845 -0.53773071792129345514 1.4490213056038323547 0.061372477483934102793 -0.78869842335888140639 0.90189718323672796174;0.5342785847487849793 0.28340528823879024278 -0.3298832837905880111 -0.20727206510989690247 1.0241473510711935901 0.62084425517868691013 1.1124739201596440807 0.72355849329393517877 -0.46981782271982475141 0.54892618691869299319 0.78544138979143796053 0.1892848867731509177 -0.073390513206707364002 2.6377983015760237961];

% Layer 2
b2 = [0.49974800130729213343;0.38708870401512335269];
LW2_1 = [0.67283315622426331792 -1.0098385973333772192 1.0728281668858978826 -1.2395629828439043152 1.4007995733833198404 1.1521183755337356391 -1.2576060183905668488 1.1243705483932557865 -0.90271665495162334292 1.4523952864093374604 0.87280192246573307102 -1.8079516556856956022 -0.20750966909636359148 -1.3997677477187939754 0.81205062467343624988 -2.0515472814114770195 0.86490369306912728842 1.2042116386564813979 -0.53258009423610941369 0.15983722100817721046;0.00045699608900237522618 -0.013496489970841407668 -0.043557681379033125202 -0.059891237261048967111 -0.021785635299608661908 0.11918565359909762125 -0.026988575082614520151 -0.35314117006240552943 0.011135873801508504657 0.0027664657327706697332 -0.037859039883918428615 -0.16747980241388127354 1.3843564423928123031 0.5997556407296885661 0.013172092617224163968 -0.06671370658809544496 -0.0027118074828297328988 -0.015580450335656125319 0.0063650655425071976309 -1.6622474908972058039];

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
