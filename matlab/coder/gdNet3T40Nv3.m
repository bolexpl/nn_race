function [y1] = gdNet3T40Nv3(x1)
%GDNET3T40NV3 neural network simulation function.
%
% Auto-generated by MATLAB, 18-Aug-2021 19:53:46.
% 
% [y1] = gdNet3T40Nv3(x1) takes these arguments:
%   x = 14xQ matrix, input #1
% and returns:
%   y = 2xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.014469;0.014929;0.016612;0.019995;0.027617;0.033082;0.040462;0.032248;0.027544;0.019775;0.016141;0.014448;0.014469;0.001797];
x1_step1.gain = [2.02936285109246;2.03031050553716;2.03378524041375;2.04080591425554;2.05680272073864;2.06842772603261;2.08433642023557;2.06664517355686;2.05664832136364;2.04034787931342;2.03281161223305;2.02931960972125;2.02936285109246;2.00451617494214];
x1_step1.ymin = -1;

% Layer 1
b1 = [-3.2598983922233708554;-0.60741366714244882097;8.9531921662836175813;4.3730143165101784675;0.13423409594669449829;9.4329290869291089194;1.3272121830576162349;4.6137675154932997756;1.7784636052829307928;-7.1084423065868129754;5.5583095823628978494;0.50415951442204043342;3.2205968174611543375;0.28573272090898987896;-8.4997387464419507097;1.1591193744100523055;15.561014083882259484;8.2803264568080763297;0.1740716969258699065;-2.5415130547846938036;0.94833105109369308927;4.7034720280940902626;-10.9073705843882518;4.0931255439925156026;-1.8108547094106319797;-3.8396714056427652118;-1.618896585571601543;-0.74324009816406788609;3.2545040186503304547;-1.6239075557654647497;-3.4350384176211452569;-0.68244827485979908666;5.6749242411784912576;-3.0614783891008974237;29.420462754686457885;8.6612263734652223945;6.1150999217960251286;4.0428340982390631453;-6.757145007814176374;-9.7588853689129564373];
IW1_1 = [-0.028323167741316605112 0.81269696283210235421 0.83338725894194698451 -1.2470319102019016277 0.51279749388089013173 -1.4545281807575773936 0.55297884947258779675 0.65396024387298001823 0.30911369874108274303 -1.2560807394497737199 0.7777684990799593745 -2.4580986407214076017 -0.43684000454032617666 -0.19075342625675870134;-1.0093985232051074785 -0.16320383997894827299 -1.5158124538805388681 -2.438388416598956443 3.4651019334228867486 -2.194448168786086395 0.5507483270417085075 -3.4890742906048610728 0.84336407987945360976 -3.9162305610936285483 -0.44728859716494828724 0.6593684943575375268 -1.4217732394749809099 0.34842989836589904895;0.90445980664559988416 0.29189372064878732482 0.71293446426055040455 0.24937217452502447035 -0.92071470502843744121 -0.71154849491546656726 -0.53868799682187440414 5.6158709918676761319 0.46896412722340846679 -0.20448101110963923244 -0.56034204588050562368 6.5085660589302296586 1.2625930197279351397 0.1341032847207067058;-0.33056995916854386985 -0.22246387017550331433 0.69801779095633165184 -7.2651208532358797498 4.8658373896725901631 7.2226552198152598194 1.699752489610199202 1.2401349768699359011 -0.63822794587236697517 2.307211644826347996 0.049253903079933492037 -1.6746395906148183741 -0.30386866995020234139 0.19255486956503894969;-0.05989292251610776191 2.6771914334182715933 -0.63481938652959069014 4.4068235583025563429 -3.8257123785985509556 -1.4589471086730620986 0.38175959104141382605 0.86666356032607516635 3.3734782696307048511 -0.84740784472430741303 1.032590669264785932 1.3583865419377909589 0.55762811727462990863 0.88186122872712457976;-3.8202373940026128629 3.7834636890894217665 8.3505479688340376043 3.0587689778078810399 -0.59134453228959238391 -1.0818088268514360895 -0.34167426231174291562 1.376185374439075737 -0.73314322780763241383 -0.88635909948221436316 -0.095801260242767707909 5.8183468789300274437 -3.1306883947545229852 0.24677337509801999804;-0.13669134682441982931 -0.55974910725110338383 -1.2172816029092290435 -0.37163180541221829678 -1.8159433808470852867 0.02954936697694081349 -0.62951849654974745274 -0.45467053589130201896 -0.67169860277236193014 -0.32726180696890133648 2.5018221123434725151 -0.64968593334579549659 0.33009628466703455629 0.45408402515774032304;-0.13379586871588866615 0.45060082254157107773 -0.32041550754626302311 -0.16283043855198039984 -0.13980014783687069735 -0.72815021901953091987 -1.7711183583205487579 2.9617922534415148661 -1.9450381128899678629 0.53721383666562017023 0.62693053929694630977 1.6690473601566186979 0.9141083531544099694 2.4258110426741814614;-0.89990479381053711805 -0.32450164840376849451 0.29493387244197677433 -0.80658020284499287733 0.50524473618732779201 0.77087957235694914981 1.3625785516129922392 1.405704345959747803 -0.92891111677213389353 -2.1890829856738789339 3.1773763845103766279 0.66837434601677203627 0.049795815957954778219 0.19735765095457660778;-0.957719717536900772 -1.0879403223516990185 -0.58937304028233172826 -0.077133439536248821211 0.2751897830943260681 0.48440995941598885555 0.35885788112800537375 -2.459216007070107235 -3.618675777222247536 -1.081874499689464697 -0.2106923224281376239 -1.0555337193676319618 -0.46482135448939226885 -0.053170409766357902559;-6.6518845337420993147 0.49593626514648991854 -1.5394975424604724346 6.4437078430175365185 0.48979435012254057824 -2.8486586457690017404 -3.5757482283017956171 9.6788548647026111382 4.6404045552243911033 -13.306297616113292648 -1.2948927169893853506 15.994739993097185859 -5.6988798950151133837 -1.6482531070403596551;-0.15068084185096794481 0.62340855999593047798 2.3271959526768797311 -2.6197953484105336308 2.2979827704814872469 0.14378631218519125068 2.8781732552634866629 1.417408625590610427 -0.68142930469962426088 0.45719632160692574852 1.8621527296421447328 -2.9694779717864814295 0.27269947443417724697 0.3021363790264270377;6.1672896252156172991 -8.9704714653049961726 -2.0521744093148495125 -0.12919306810564029631 -1.2192606631429214747 -1.6590979256751419157 4.3746225488773138323 -1.6171670022051221061 -1.8011280737508441607 -0.91516715692111694214 1.7310178835896623539 -0.90816375250400760422 5.1217366717663646014 -0.50868768417348508848;-0.89203558194865539832 -0.2136106061112299781 -0.12695414594562129396 -2.6431931722150570074 2.7076272048901155465 1.9365104973562932145 0.23954210274316772855 -0.74657598961030091633 0.7725374226662506949 -0.43454667095681748235 0.7769628880367882573 -0.40147791388404863167 0.57138268869826858154 -0.046227088779006123009;0.6294924775117820559 0.31452212573780219396 -0.35305357173567780693 0.11299605688672859083 -2.0131651844247162586 -1.4126547290036219895 -0.60629623209424765573 1.4919223300552113542 0.13632343738964669555 0.14630675852982680252 -0.42502544587075563598 -6.3029734398011285634 -0.40858339559007350594 -1.582204716610609907;0.51600798781390122549 -0.16781800067774577112 1.5930040681213748499 0.067138840932933374628 -0.88936689383603173553 -0.46880737873669153792 -0.0050036742410178277132 1.6789651959517837287 -0.24215932163118919496 0.30138860866431271823 0.40628760657979801074 0.20336817376051904982 0.73568087169365092848 0.18999280445362765057;-0.71609480058669117142 -1.4402006912096154689 1.6411288919176014733 0.079059176557121649265 -0.16675353232201664544 6.5094676710169032674 2.5070254922049604041 -5.635002634037144631 2.1066103507866889011 -2.0351317155869184106 1.3931168578881545361 11.202235871145866497 -1.1270435796488222913 4.4730551994713998454;0.87596542194552251548 12.445393259525959095 -4.4288787653921461995 -2.4354342526091898868 -4.8197484266226346961 -0.59591602223747974776 2.7284257353326522022 -0.22555741621899547122 1.5435702687308969772 0.083166482211117873091 -0.31252185565903090048 7.4034414765044207485 -0.30654303580600161805 0.29203081429392585555;-0.031132803227228708631 0.42416269360549996303 -0.41023687070170905544 -1.9347109637087112066 -0.10826948775372929878 -1.555207961830676 2.4821500065503760979 0.11408274161562681481 -0.65268011448844920341 1.4281500638493873634 8.2929887924320944137 -6.7682698210353233748 0.064010318412994954285 -0.21653047591466953459;-2.2431963321168013614 -0.95177146350792141138 0.77592968436792608689 1.2876057777829617024 -0.058562364779922049252 0.441469921574395463 -0.43482580264729747688 0.31419773169801629153 0.35640486931861398157 0.4822283142198394712 -0.27750866685035968651 -0.18440590995488170822 -2.3228087230718981182 0.074673592768225757754;-0.21954771992994864815 0.046037689554468477771 0.18845511545187909608 -0.10682864049589328725 0.15945118263886839949 0.030592755819020777536 -0.055582398400289008411 0.05329639675480755262 0.062362703345158740365 -0.17944662928471169505 0.089201265321455891488 0.16380884151011473882 0.20282960259799664993 -1.5694003460897421043;11.146781908969851216 -15.323579763930370135 -4.6513684576482203781 1.0978955133417982459 0.41439714276697908746 0.61124580274141993019 0.88300724835196042761 0.6545669330339041192 0.89646133049894960454 -1.1931156744577571249 4.3685637408549009564 -0.51643643179331111259 10.428262665843082146 0.17801197803612506254;-1.8422490910995634739 -4.3290612967164525671 6.0717568629709290917 -3.5471808180666068999 -6.9640768606330185619 -2.1963955355709599004 1.4646496167296216839 2.627052457052440726 0.83617946842931056839 -0.9743219142176875458 -0.64094337237197707147 0.12217708639193877729 -0.54007859901644339473 -5.2232771798754269454;-0.71516005400766957667 10.038856447102386227 -3.9325156060222474785 -0.8332429891248536169 -3.4739651721346711533 -1.7325799167872264483 3.9158251072140815019 -0.15473395808855272548 0.27098121400236602208 2.428247424829144574 -0.11027542600469403267 1.6517286024681963053 0.12031283600940417822 0.15271700808753513323;0.29913390793743716012 -0.13363818236877494927 0.15936667116462796545 -0.58934266093184528579 -0.16527941750480931726 0.044657972176925797569 -0.076053210067724724697 -0.79931679668773147895 -0.70079333761488449284 -3.6313939278833546886 2.0256016961814968802 0.96179032777543715937 0.66691447078726096009 0.057354076191132044582;-3.7564679230336781579 4.5399845310196580428 -4.892838405106735955 0.38701979859094315373 4.5894262972896724406 -5.6799738044175391849 -1.338180719462356727 1.4812293200512973712 3.9476976848406368781 -0.73727718842918388287 -5.8190640178463439725 0.3711709439192979465 -2.1711555012670746834 -0.75144840807649593284;0.44034638969488804072 -2.1202061657605231204 -1.1762459780571592471 0.94025197416664285655 -1.9691110554520414588 3.1614980116399640231 -0.36793858232331272395 -1.437883632101917275 -2.8049613746991997054 -2.2492384866795016585 3.1571974453585047726 -0.041717980317695586845 -0.94271802422871342486 0.18374858048534434274;-1.5699498849306119386 1.0972033632236395384 2.5037086139827890996 0.50181309161473763858 -0.15924091901418677142 0.2843947345746951072 -0.56574992768706233726 -1.7691917656260292002 0.88348099923006750966 -3.5406162799825970922 1.6255373822185579247 0.58192552947157871746 -0.59179563034175131087 0.24584963496292749907;1.0122723843087724216 1.4878670199694541409 -0.6408591006195204498 -0.42655415103138927257 -1.048011217927133476 0.12333801036441206789 0.30259382070588447533 -0.24092683338021148032 -0.88111652514700611327 2.1376768547627711392 12.743185180031984416 -11.429924595338709636 1.3218241662160512551 0.014272210571153774034;-0.4238079815308411491 -0.017196935849142464675 0.13662443380777872237 0.31530831083264937442 0.046289682916841087823 0.20821720765796697394 0.38265157548077344263 0.36123949765879009854 0.06324415789509352237 0.46580766738386314429 0.18506828171920416959 -0.33846005712372356777 -0.77275291269261892069 -0.0390373568442424837;-0.27205705649811207092 -1.4655568599982156108 -1.7908537341975334645 1.1161517860797232071 -1.665190588296438623 -0.16698535153191920721 -0.82818726146901722185 0.15491592377886273524 -0.84526474748983926322 -1.9007169854130439024 -0.3259311654148496773 -0.32177614508024193762 -0.21512789757448633199 -0.1412390407573287654;-0.29174320041492701749 3.741289792960281968 -1.1472327532541350958 -2.2441588724459786697 24.660428343286252328 -13.649670918333734804 -14.335002706004473794 -1.6195555838299786622 2.7896719568876751083 7.218659052677717014 -8.4725711771354692559 -0.48087565400206649935 0.85956348877431976163 -0.16829923465035168118;-0.1197094840637138724 1.7068931793464134916 -0.35400526552738026398 -0.53394588646309515401 0.16709403253359575436 -0.9553478749139839854 -1.6489260868852000375 3.0056997051339853222 -2.1016725537991063355 0.82014902186939864226 -0.51527392557552609276 3.4601387657748055027 0.23143075112247363245 2.2752656828053710036;-0.058561112645875136595 -0.44733697873180400251 -2.8469148947142914885 0.36530425361439089471 0.81350538169169328562 -1.8617738658058351486 1.0939484197528446252 -0.10028026446852081333 -1.8655326359480004506 -1.3367945167862314015 -0.95268002978844179562 -0.44394380851132586585 -0.97491364467714791697 -0.062126569318907004513;9.6114905933171623786 -0.68515727331724896043 -1.8241260587235412771 0.86647434177254789578 -0.029132982395592900426 1.1199438878260115082 0.22749950977711072553 0.72410803163395409676 -0.32526215361246263447 3.392656749013544637 6.342507239951745035 7.5310781690256938248 9.109026120956841055 0.021477247059542039359;6.358881667102058266 -0.89796647936370277421 -0.040531125611631739492 -8.8628449162224054447 -0.1179339829433845438 1.7414933126386753504 -1.5600808817604505663 -1.3956542435215293363 -1.2803206918865057684 5.3253825268060275278 -1.9787727117897440099 5.3318882520674266701 6.0210815575168847857 -0.36074374830110633727;0.54573979183215681754 4.6180142562514712168 -0.495757983878788 -0.48944336961380063844 1.411754780473042814 -1.7106485206430921409 -0.60098537688077136032 6.1391818956453034772 0.36449885387726765895 0.35107830014027391341 -2.3569294557679993929 -0.19319244504217539249 0.50502837181377469022 0.29715165697956791302;3.2082657301960226803 -1.1107565661582374794 -0.41639339557867172115 -0.88750702707434425687 0.89616754283873023557 -1.2469203320082431485 0.31844425376557244922 3.8976718239453154169 0.46190349233299010656 0.89194612231976033723 -2.3505346007778897821 -0.11162518820727748703 2.4861101789851196564 0.18179701262953121277;-3.1386544907260178761 -6.6712976284361165114 4.5215146957186682641 -0.10799537549684697091 -0.36937010408294834729 -1.8957128633813820073 1.7380436358273660957 -0.54395224347545345633 -0.57459825213355963935 -0.01589327545773860581 -5.6988529114649955076 6.2303271862731124386 -3.3515334285135236492 -0.28263522313930516949;-0.67873845602515070485 -1.1356990522808385613 -0.32555415341484744696 -0.77295827432251296152 -0.69419658653471905119 -0.83263357224287870562 -1.6837927674161934366 -0.53133738908800176581 -0.86974911797100951105 -0.0056033325340341874621 -5.8129444756325749921 -0.20578986028500190208 -0.23677708618495699189 -2.0844494469758680921];

% Layer 2
b2 = [4.1984846831018325375;1.7066326397702775708];
LW2_1 = [-1.085599465326622326 0.57544848840288376213 -0.50154915340384065292 0.21723764149136401413 0.31429877440703496427 0.30734324543523000584 -1.294258886198540015 1.5887228926019381081 0.36832922887787927779 -0.68298568678684201672 0.095440377135050227797 0.21255609973081213138 0.3679630686359573466 -0.63517542265287796344 1.3387579732641514685 -0.7846516793571726156 0.59219973552593152544 0.3036876217841067982 0.37559083200548504244 -0.51818682297569540474 -0.11554979827445309437 -0.33733411192612644536 -0.12294070802410123067 -0.39357694402140347423 0.67166862216439060518 -0.19552378534133271759 -0.50849777412765051476 -0.58660738761946673581 -0.53389597390885323858 4.489847994425189448 0.6318602301190495707 0.14729649648419174124 -1.6190528388804419357 -0.70657074248243156855 -0.29616673432087908813 0.24776018052219067611 0.40805423289393216724 -0.60317739920858093328 -0.20558297613452317099 -0.13252681601849927717;0.0071904926645381785424 0.037080774998546596477 -0.04654150604770914551 -0.027045690462799063664 0.003508346107181344823 0.0013938093890870943345 -0.46386909446225627063 6.3429739453493292345 0.049122443015992736659 -0.066005481639347649003 0.0073015553870970509656 0.0061497974544066401695 0.00034128203244901742083 0.028258120876192536347 0.15296736703531746415 0.038454127026197992834 0.57700990108065453033 0.0015801804601900547222 0.015160532290296100527 0.015967444502791888761 -1.0651277621885668623 -0.015088642821081150319 0.3312533336603740719 0.008001301936235461279 0.04042269322775508128 -0.014960947752873900857 -0.019155332026696069575 -0.0018191870513161022965 -0.051189168246852816135 -0.31640803526273775237 -0.0026747148923108999934 0.019358305511236698071 -6.7352562272405798183 -0.0049170116015209344024 9.5418440404735981692e-05 0.011790535684282775833 0.013445467930491028855 -0.0034108959765766343891 -0.011369785640003909552 0.95742008506672671153];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [1;2];
y1_step1.xoffset = [-1;0];

% ===== SIMULATION ========

% Dimensions
Q = size(x1,2); % samples

% Input 1
xp1 = mapminmax_apply(x1,x1_step1);

% Layer 1
a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*xp1);

% Layer 2
a2 = repmat(b2,1,Q) + LW2_1*a1;

% Output 1
y1 = mapminmax_reverse(a2,y1_step1);
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
