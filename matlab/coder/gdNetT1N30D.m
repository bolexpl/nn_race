function [y1] = gdNetT1N30D(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 12-Aug-2021 21:54:14.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.014928;0.015425;0.017231;0.021103;0.027804;0.034437;0.04709;0.03412;0.027544;0.019775;0.016141;0.014448;0.014928;0.011211];
x1_step1.gain = [2.03030844445888;2.03133331640556;2.03506622614266;2.04311587429525;2.05719834272102;2.07133040516258;2.09883409765875;2.07065059841802;2.05664832136364;2.04034787931342;2.03281161223305;7.91323924491871;2.03030844445888;2.0236094514703];
x1_step1.ymin = -1;

% Layer 1
b1 = [-4.5042908094375988526;5.257377507523495197;2.7854235277342738186;-6.3415612870952680069;0.29808394454629066894;3.67013673933560991;-0.28258310443926137889;-4.9682337248950325659;-1.5828934805885972459;-2.6870341553313972227;-5.3332131935955686686;1.6513794012884199791;1.9261370097830583514;-3.8307912572654183592;3.8621605114328216857;4.6171139723568748181;-0.82299315023547470194;-3.0294528850539030884;-0.24853738422363841343;-0.33830691638954474287;0.013683605958626846033;2.6567700779612768436;-4.2264529214863637563;-3.7354421663637760176;5.9771368819708712294;1.3576501025461198413;-0.6531590944709736446;-0.80663957152730925149;4.7860203600217277042;3.8365588405218931101];
IW1_1 = [-0.61221309947868596257 0.29776789013620041935 -0.21569727066532595749 -1.0939649313016552856 -0.25840190420854669551 -0.33992395751560905426 0.0065696044945062394976 1.0023483998329278943 0.41475051056917378034 -5.5815288079858085268 1.7598022227969003506 -0.90952618244208038867 -0.3355503782002541846 -0.27923076135739743897;-0.12526223794595811589 1.2419285067162701974 0.99547394075603456987 2.856676186431163611 0.3518113188474984443 -1.041647418153576643 -0.29269301569905181726 -0.2135554393997065592 0.9979901972676118449 0.34643929712168797241 0.42452864662582334709 0.0068142730754492328304 -0.32208028123998244663 1.1837621899911412449;-0.69325848360279873628 -0.43120727227733285369 -0.14980516732816703818 0.22123101661604524515 1.7731215231297163815 0.23801751379844299228 0.21156753121942195595 0.23177166707282612079 0.27984359163976518792 0.8801679522392441557 0.87998345262186239424 -1.8662337235797248347 0.32877909375691372063 0.053012086549134918023;1.4253309524099007088 2.2247234526433805613 -1.2528801986967810222 -1.8547585613505856994 0.37045609071090895847 0.28999202641026416982 -2.3099094983422787664 -0.49489361559947914193 0.12152476302867036562 -2.3855984813060082672 -2.5467906576431169619 0.47997147696197917099 0.2249953545063926863 1.5566744854424878763;0.8887346158722428946 2.2722785108325465053 -1.8500616070466182617 -0.48966190076210702742 -0.35021059199471027412 -1.555855726727631394 0.26800238109645257989 -0.5902218248148694002 1.0281287024733707369 0.23851848769032726882 1.4201982608520442586 -1.0048149678713809152 -0.58631454500565627352 0.66501268776379784953;2.2154201041785981374 -7.1817372425702190597 5.4364959965935932829 0.71424454723446828552 -1.405187174945174533 -1.3112811333999960794 0.69877720218668482044 0.090532860161194050885 1.7793097576158376505 1.8202383744770873619 1.0733689353751694195 -0.1409306765304718656 2.7315899215773145059 1.1388679935279271138;0.48778051762797536295 0.90635669170041743836 0.35165767852601387267 2.1120062774740651079 0.15483681688609957083 -0.32943565298384791529 -0.96302887040280094055 -0.068949719675493903459 -1.6579754618644828579 2.0980680982815282931 -2.1931150310804081727 2.979228181458798197 0.60090678471321279375 2.2764217672533457737;0.54737887955896069592 -5.6173993285936756337 2.0504314904406131248 -3.5304324373739115472 0.089703353861193449448 1.1623361221726056236 0.6410049773089852021 0.22840877655755606468 -0.18770452542838114707 0.61168438210622499973 1.3341364399450641454 -0.88482667042808782476 -0.40543353023368783328 -0.74170126188587803817;-4.860967494733221983 -2.5479235827141364368 -0.089156887228841297244 5.4939661771400096768 22.293658899080192271 7.0785765287672841595 -6.9583676278402100124 1.8112258608094362611 24.657799610100710197 1.035193268817836465 10.435367877046690666 0.63483408550885622734 -5.09493899585654475 -6.754243321448061721;-0.067405619511108572084 -2.5042395445722522851 0.42383095234954243358 0.31021428670023148966 0.8536991136054631335 -1.0175692815501848898 0.75207448101849072586 0.82811205215532068813 0.096502430805737990371 -2.1452685539610909515 3.4242532425546858832 0.87329466010914080787 -1.4777683470613249828 1.3149239091492359588;-4.4465042914979511224 -0.28690160618011006921 0.13349372050792154831 -0.13174608679765217878 -1.2357661455937407613 -0.92529926070619850087 0.26969639657161698088 -1.7423715729209183767 3.9373921576239045983 -1.619325329016783499 -0.28618480308476945684 -2.8013388947721709066 -3.1742195908689629924 -2.033157306215546356;-2.2196024132333471712 3.2010149396120839427 -1.5757212221397391971 2.0069861152104730984 3.699812402119061705 1.7043958660653235615 0.54729204650183183034 3.3384799048680102729 -3.2573401552458416397 1.7395200588091610516 1.9406739014497023099 -1.916177715177846741 -2.1436473761594121434 0.036547980818896846911;-2.6015358118222629003 2.655939687811776917 1.1546615589283466541 -0.31495599008073316138 2.4262279801687318681 -1.383310056329002169 0.24258649170714099985 -0.1009734936951192652 0.071764321846932960236 4.6213903228955617308 1.4324814041675921761 -1.7681142847360920012 -2.0419052517678411007 1.7119613602467909086;-4.6637227552704043632 6.0373811986333976165 8.37827109118136093 4.1550361364832522071 3.9556782857985264279 3.5723912809997120377 15.817518426055398706 -2.6970869731497240096 -10.941287206263643483 5.8300881170582901092 -3.8973426539264011126 -14.479311039919325665 -5.1031606009427274984 -4.2443313617410280969;1.195393333515470724 12.434648220439640909 -9.9083217129211487162 -5.8078334441069410232 3.3216888525264525178 -2.3997716175037493436 -0.89852416058412121203 -3.7695051603703912946 0.22268500436466684422 -1.0406906232718950989 3.5674740072686321746 1.2324608057787223014 0.87855231898826680048 -1.8466443230731963698;0.60316569516093976322 -1.1709414916121816397 -0.34248340294584217469 -0.064055878955356762572 -0.18433208528536373927 -0.28891082967687048422 -1.3754676486138128766 -0.10017420093344529819 -1.106362332355272704 -0.71682113609283137912 2.0631704562264991942 -0.43030295972264992477 1.0648352754542469434 -4.6468604098294337135;-1.9151685029171843233 0.73034256160318511419 -2.5709113213599463776 1.3870532957604722046 0.71549090624601019428 -0.41915834547778885177 -2.6197628607111971277 0.05724318106307602072 2.0300242711068485768 2.5627961985428533431 -1.9783521582767555902 -1.2951999035990204856 -2.4292369772918198656 -2.5050390812215321823;-0.47614858479903748867 -1.1474625537559817179 -1.881401930381555454 -1.2343571200895868678 -3.6594882233748786682 1.2908981456938202204 -0.67231375787140867928 0.31791017107727909119 4.5895781518936011878 -2.8911216008146514156 -1.49145366963016901 -1.5915804227511824998 -0.32056181188475918464 -1.3106202905065991171;-2.0841402207889974108 2.2545265920130210802 -0.24685310521972664288 0.58641120793640033604 0.91510381553320629955 0.94221017395382866688 0.45205583377873226336 -0.63318730448287519064 -1.4454175075613355794 2.4739105981390658862 3.2762044543716086764 0.95890268481483320606 -1.6682649887939389188 3.8522424858057302544;0.0024368896980343744685 -0.60701383438816847171 -0.6880196729526899535 -0.3055238159943050591 0.31656612049726257085 0.19298465468027539704 0.92475375344372678921 -0.53897111262836827628 1.0915574646068937348 -1.2342498236699279701 0.20394219071961616763 0.38286397432648783257 -0.14113487214010081439 -0.18527005016026978912;1.5047885216421765797 -1.3940127349810034207 -0.95883210641468918922 -0.24179831183918965021 -1.1717475089001434529 -0.35862839634858467708 1.1184712747132763422 -0.86566863105875746509 2.6224690241383381561 -2.5707579296632241395 0.12483255674628278287 -0.11109523666195000868 1.6339821642335843332 -0.82252842625805244747;-2.3799012701689408189 0.080986168607785791185 -0.6028202921698965211 2.6722165496791867589 -0.63155023890526396091 1.4741334475548906191 3.1614474151583586981 3.2259561054601153529 -2.0816805129468662905 1.381301800081649489 5.4085319933862781028 -1.7048740837960376648 -2.4018555226285389637 2.515141989358399055;4.7251124503846133607 -5.960145870393652956 -8.139427073968015236 -4.077860327636635418 -3.8779460082335739379 -3.5185366833870399539 -15.378838125142609172 2.5091193275699379406 9.8545992056298210571 -2.5070102280354240598 -0.14755800155448983713 14.322529757416047502 5.1334055746007987153 11.093041583873120004;-0.13992947103995256874 0.26591774152588948388 -1.1499714362960375968 -1.950918584155953539 -1.709346153050697481 -0.3321090803512584122 1.0575942779250178116 -1.2861470249274633559 3.4389578660729442916 -3.2532412983648320015 -0.26925384394071982808 -0.79278819425854540892 0.15975517815636702812 -0.51986260510266957269;-0.84765524554138671487 0.091353894073535391041 0.02676909912270210648 3.051212482015928984 -0.45406152504535285397 0.18941714600293282911 6.531771503503633447 -1.2862475616578574744 -1.4878725062160700343 0.58815253256032984375 -0.59387169949688889403 3.903496582589259134 -0.80610340341832520394 1.8123914393673394851;-0.15613673123078383731 0.63993413470532267695 -0.80451684830925151992 -1.2702241862453906851 -0.3198194106977107487 -0.24466569661014431203 -1.2569456283809934405 0.21665753003482782213 0.035411175297885212621 0.11884318287883968712 2.7011000829041886817 -1.3835982677897915583 0.25044655184409103654 -1.6546478183108310756;0.30637076015828329512 3.3103428580954528115 -2.9033482522817979365 0.12181938371295117363 -0.70032540796343234479 -0.54882701307992165507 0.24984661429246662889 -0.89216127053865201812 -0.47241045342119281081 -0.58307888772180571646 -0.56748650448748927388 0.9408942053017721463 0.75091309846517229065 0.054048293932849156285;3.7041963560022588275 -0.32663057920707844195 0.10432909953574356909 0.091530034075210917055 0.23674722672116699229 1.1295882675942059414 0.69852613326221468792 0.89402267135113389074 -2.6355098584654998994 -0.2548183140428438298 -4.62944300066915293 3.3323884535801573392 3.9064086294876099181 3.1577243379619783781;0.26092804302979361042 -0.13649299170748829813 0.45654969731469924321 0.56891018536900739289 0.28069999982693011331 0.33285052532144576709 -0.026870487959377169912 -0.89233707597131894929 -0.40863768704799785514 5.2652742065629096757 -0.39310382580545844 0.24978121980710191186 0.26742152865571627851 0.24507289800399087443;-0.4827165093476345481 -0.015545708839407548774 -0.31652220853624774 -0.2234746725717627891 1.7210150995319126732 0.72065159363102304635 -0.043605970274204736148 0.51788218190429868848 -0.35000452724141450922 2.4933724251972235741 1.1398049434819363945 -2.8359113739094690132 0.18674997632985360085 0.047314877593921902954];

% Layer 2
b2 = [-1.2875810752628882305;0.011112787389478840511];
LW2_1 = [-5.9327338856040920945 2.974105927029954799 2.7124363074012038943 0.9569430734913214609 -1.9540015093564377935 0.80975305642022676889 0.76824158686671817353 2.0948057037327072472 -0.33404576957811854543 -0.66032950568488180121 -0.69609923649680016666 0.22771998491625841665 1.1278899255733592089 0.19729863512858361596 -0.25920383935169344358 -0.65897992152533169108 -0.57732377014371416557 0.64148908111411506727 -0.60501256616320109316 1.7358704286861885713 -2.3282018514782043539 0.39232278413072541046 0.22645434374681025491 1.9731436103402910653 1.027574285171713786 2.2822513592922919479 1.9340000512294470703 -0.86806349905211144247 -6.855470201503407246 -1.7506560028539397411;0.043147547883294640192 -0.020656194536364545777 -0.020811417223175525393 -0.0071546996039644449039 0.02407424991306087933 -0.0014877218913588495866 -0.010095630802929838471 0.00081190940546354271358 -1.0115465182514624676 0.0048369381636265921381 0.0063376045452822240417 0.00028095053243622561401 -0.011266823875105212716 1.0421939029680100663 0.0016244928846873836308 -0.0049097619666793107171 0.010167596022752599383 -0.0031587557188015313869 -0.011222832681717002587 -0.0016604839592121037675 -0.0079848378914657378719 -0.0021750683852986871063 1.0433184295381299211 -0.014038598926866988764 -0.031684438285053011242 -0.029755084236606950399 -0.01305444315791302011 0.0087149401059027544608 0.069378296600119487847 0.0081589262438523657561];

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
