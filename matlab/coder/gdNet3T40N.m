function [y1] = gdNet3T40N(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 14-Aug-2021 21:14:03.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.014928;0.015345;0.016987;0.020906;0.027804;0.033082;0.040625;0.032347;0.027544;0.019775;0.016141;0.014448;0.014928;0.001797];
x1_step1.gain = [2.03030844445888;2.03116827721385;2.03456108922262;2.04270478626158;2.05719834272102;2.06842772603261;2.08469055374593;2.0668566107892;2.05664832136364;2.04034787931342;2.03281161223305;2.02931960972125;2.03030844445888;2.00451617494214];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.6115014716635642777;2.3257626665752564321;0.13874164578756839616;-0.15397764251072501573;-6.9457027184403443698;2.4809513441093140607;31.774984367810745312;4.2609359838390172825;0.39944837604247762641;8.3997258782389288001;2.8256934669534907734;-5.9951248250031721199;-0.93596349366755027255;8.9189212799173187562;0.43672650226501918969;9.4811022392062849207;1.1129257056388510705;3.5586596329399418082;6.0879088208787504044;3.1053539563661676226;-2.4592808799408016895;-3.0373005204416037017;0.25999509293949812916;-14.745670989665738304;-5.4017408212263031686;-10.407509767117323563;16.57766859786568503;-1.9128115929351299229;-4.3799710560993361241;1.8824219866605615969;6.4106285118174204385;-3.915922998239247832;-0.90990889462019430844;-1.6153256160884430503;-4.2625868235072106316;9.1482204552310921741;-14.302545237336589778;0.099107145799948628828;4.0833688271745405274;7.9206066836708064471];
IW1_1 = [0.30339109794163948708 -1.66133353911232029 -1.3086083784805013774 0.46750704624706829193 -0.15705574708639574721 -0.025609775658978421731 -0.44990831051470225876 0.0096263293675058481114 3.6423912649858101176 2.1527406659301262515 -1.5736600818078201325 0.1641735077153862743 0.29548065148850399808 0.80121819540823968619;0.72243075567592252018 0.44601702733188447469 -0.11578959497130550393 -1.1877259904523538303 0.047100162255818395218 0.52517019977166545797 -0.7067518299799698811 -0.00023861468814042067956 -0.43293471488872609099 0.17858375938245596437 -0.081054365571064004858 0.27623121545130485677 0.95345120253495585505 -0.094954667446980819956;0.26647497605153358524 0.025884260390028203391 0.8163184395827713935 -0.047980487670546349832 0.12111606374055612634 -0.53782481260145131863 0.011414045013703254944 -0.14633878362849406241 0.048523293502209886852 0.63357486587348033069 0.28162241396194165333 0.11623997876320371625 -0.071429945034412203886 -0.14790972655244793987;0.21543177637009461312 0.031287284072818062619 1.2178540612933923537 -0.18534887398659588564 0.31547315916842100236 -1.2101758576869507955 0.17104965743125921662 0.14608112830435826535 -0.078516649825184914313 0.70770398826230029865 0.36181374237269192662 0.063964704143011058557 0.17108490064552941967 -0.10088173135922409718;-1.7294951706711345629 0.88587744833827775093 0.3305881672373965352 -1.1400902596620030582 -0.87858326590037261195 0.99618857915598979513 -1.3511641265645286669 0.85521893256905756608 -2.94940311880307382 1.201455757815199199 -2.2322175634801881827 -0.29443299479342283087 -1.6878910153505914948 0.26986289080298925258;-9.6769233231810574125 17.134080322257766227 -5.1300093228309018301 -3.9298791654610165658 10.410082334280666316 -8.5753410724735044113 3.1931842822881586486 -1.9644539595072407767 -4.8890130425140716497 -2.7733973725238354469 3.9447447937127160245 3.3568024740353443747 -9.6683837374668613052 -0.66452210382534504518;12.810459472113794988 2.6285045703571863207 -7.1371164399725524063 -6.4568559419934166144 -8.143828470064475411 -2.2567452173911388691 11.782187141785747997 2.2545470699444392082 -15.678312117580702534 -0.1834656301117200683 5.3107162015010631606 -0.83054779639356512977 13.518309959281150867 1.5538094977063159341;-0.32335498286313063554 3.3023535302700559591 -5.8821821782159613434 3.9737748232059972864 -4.5824180340208062745 0.76344977863093199666 1.8045760552960332657 0.59767741398453000379 -1.3079902018233855454 2.5562498455113114026 -0.45015573817934351197 4.0942687658036787113 -0.070453181825841273977 -0.91395106744721410497;-2.9081671400576922792 -3.0037121019767361041 1.7424165705462397735 8.7418316766982488986 0.6201606125020920901 -2.1660685315599814693 1.9964716952615650936 3.278860703878231142 -2.6485277307937988844 1.3753614754884000426 0.44489224902249741023 -5.5145140136677159859 -3.2343847831082825905 -1.1138513917543995113;1.2760713644486219032 -3.1968548762738047131 -1.4919971589919236443 -3.7134015811466727364 1.0151797570098139989 -4.8122866362875456048 -0.41392308384909798358 -25.709673933636089771 2.930510131229944637 3.9312224837056541915 -5.5055190004825478312 22.943945127226307079 1.7202813056088390731 -15.045146444609748926;0.33797602166164042448 1.5568532558718610748 -0.3069234392516642651 -0.91433754757015017756 0.075762926656736187536 -0.2180370556799266224 -1.1005716216782981398 1.2670269246012619835 0.63720260277209583855 0.26125335421681861181 -0.35336535855495082581 0.18504294239264865163 0.34769138723388393064 -0.1736789399878004847;-0.096457630833954866034 3.4440336005700729061 -3.6778882434883888308 3.9042515008582969749 -3.6666278061189223614 -2.2772912963457039304 2.0976643716897322989 0.050831438313763105397 -5.0303668962229659556 0.46603524710039584411 3.3015308297053200803 -0.1725454524933826006 -0.28611553759310309752 0.39671639480404219391;-0.40195012589468354092 -0.67832935450749998196 0.48793559753365861598 0.82703497950870752398 -0.011269338846245830627 0.2736421484438566476 -0.7119788782782493497 -0.18097447161238056079 0.39171319837262436048 0.47160663537010633073 0.14001218244136198754 0.13109227009045851253 -0.32539660489401661669 -0.22600125093669037879;-1.3099728058782784679 3.4837971951038886331 -0.23207976362926421854 -0.57381604983010692234 0.5882449173816749477 2.3581783032423579982 5.3225470712961122643 0.61627116925257674485 -5.155712474945364221 1.347971533063200722 0.8393665174175373167 5.1977926027103276141 -1.0607539876856411087 5.7186193744358870816;-0.0041609437441411005823 -0.31666354001899477133 0.4643432798602145084 0.65050083030862959621 0.3981072290274981218 0.38478108408002792418 0.7241123465123316949 0.037882871399428821868 -0.25855641284752634013 0.30953447890291357902 -0.027854030629786842577 0.44587211416711702849 -0.1543984930401716138 -2.3368772627864742297;-5.2023543023282279307 1.0817312964895822169 12.091852709550371614 1.4028155965507724812 4.1394376247822961545 -0.56669162758063118535 -0.77066027437849693449 0.666883602046906665 -0.69328725008513258921 -2.1598790639379950029 -0.83795090928102955452 7.4895835829074890455 -4.9228646185500766208 2.2479402048868024622;0.18764102641366078861 0.66016293599887099219 0.93035960023577712885 -0.39744789600872820756 0.61138645106118172379 -1.7434154561261445693 -0.21244146664853263973 1.1487142527017459859 1.8537097660270220878 0.88036286534566621231 -0.56056719200695437344 -0.31367523638145883291 0.55875933611153916214 -0.050745851015608627044;0.27070303964669151231 -0.84398079199284881113 -6.1471294245153229596 -0.52612466449575334693 6.7460755266687009168 1.4680067785828208038 -0.43897857243391885662 -1.9232557259267044625 -0.90142526063310257634 0.37218375304925471747 1.7730329104608337776 0.10423553095558366066 0.1847277162997310318 -1.4010396051770217518;2.3429891484878533348 -1.2499633000846106512 -4.551918806757212721 -0.34578281148132927747 2.7184381018186933865 -1.2595328103667509101 3.3076673138465686463 -3.1350792694417792816 -1.5701996144917489406 0.14596747982289384749 3.5363303182001173397 0.40956767309520980547 2.283555877405319734 -1.2011309629844926228;2.6539184561402886509 -1.4459411215613919843 0.12974539775202775793 -1.054858164047355773 1.1736916733695805792 0.36340403292216938436 2.0070592523447183808 0.18053542931032132146 0.88974683206092985976 0.78969936422495756734 -0.66178623751969745115 -0.36132727012348048179 1.4635346394618682364 0.14331262692194801645;-1.1019576136726292326 2.3070218119374645838 1.341139151899951143 -0.54306816669575341816 0.6238098887141526605 -0.76934310039168252171 0.4054358926889590764 -1.6865895980380669616 0.28348155944661013184 0.16367905761873574599 -1.6077425569513330572 -0.77752321851165528965 -1.2478994881764937652 -0.45396779348026422563;-0.36123277260695890734 0.41458672208713209795 -1.8651097472439346348 -0.016120929036938930201 -0.16297608907531707656 0.44378728434745040587 -1.02722692916379299 0.39816669055790993026 -2.8300921368289126967 -2.0226660298198573251 3.6569311784152502831 0.14183138557886187936 -0.62783505077395185268 0.047337980599580470331;-13.117473698037878549 25.233891524761169478 4.1810629151393419178 -1.9623121792737094893 0.18132296018474919341 -0.15644456372591505899 -0.70681675902141483103 0.091284941675150249596 -0.67695547902288211173 -2.2735609541506747178 -2.1516172520249328137 2.8731852433178346473 -13.113201313844964346 -0.26388804438519714024;-2.8050057900210063622 -0.61612055846844238083 7.8972869376056822333 -6.8248559769604488778 -0.087005795161539487004 0.45820798508655974368 3.1991987796188130488 -0.0023449881796396565559 -3.3207902313411161721 0.86197445729627908406 -9.7731097986163337765 1.3876172893750335913 -3.1173276011183745915 3.150395713647121898;-1.1935695044127956344 1.1346873113533328947 -5.395264896995639603 -2.0263754198300891751 0.84554348008424717875 -1.3212358293469153026 -1.6114473862884599598 4.0279722587158657277 8.6621880999096987352 -18.099637113514141618 8.5477217578302706613 -0.86563743476570254032 -1.8794298003649734241 0.16426393348859075205;-2.0080764878680152918 -0.32905369870202544336 0.75011287614584953864 -2.1110046401763127299 3.9846899046491577323 -0.29843241397598752052 -1.6187030085210996067 -3.4330973916534479606 0.19403132616752336026 0.7260909598739031523 0.30885712644803214877 -7.6989168973661463724 -1.0821832406646585412 0.79659571099925863269;4.2233882037811270038 -0.46219143292092157438 -2.479033677214447895 1.7190322071415133909 -0.42026020314242651388 -0.057865106109919156596 -5.6462875709795898871 -0.16068081863779759555 8.3453636425090582662 -1.9537012909764110979 -2.6332146090522154935 8.5213773253455133982 3.3306692580281169747 -3.7461933362596755437;-0.46027127079807533816 -0.6883551266287287751 -0.39767330017392876762 -0.084416210269338223804 -0.11799739978589444955 1.1644953260339077072 0.46151579529752317921 -0.99247768793557455957 -1.2618809485593427411 -0.84715889869868143958 -0.33734964834251801591 -0.032751657533602304695 -0.11510376574037245456 0.27417008245512508591;-0.88167841635193322514 -8.5877028835626507686 2.5263701096334516549 1.9634773667757712268 -0.65861405757587854204 -1.4639567261411374766 0.11764903953362648714 0.11470582363276300708 0.018489495326313984402 -5.4157391482822356821 5.5726920553479493137 0.040575612533117852432 -0.62253635758088332608 -0.64350777210198473188;0.88882069313953393497 4.4362750077709236507 0.096328131382634740731 -5.6595277929341927248 2.9864419835334476971 -0.5538823315202671127 3.4486285716055609107 0.96662430983486080649 -3.2820391228700889208 -0.60194080016505713271 3.4137235880261567189 -0.38524614655518907291 0.32557569505985023417 0.51369491789398802339;1.7736281653828573912 0.075587687932511152256 -5.0455782108103051087 3.1605535868579646142 -0.3861617195257656121 -0.28555842718360990862 -1.8908844345096706974 0.53603121238040907226 -0.58927167106492628346 -0.097526351221405960246 -0.54548367320133572811 6.3259578416894726161 1.3652882859526198622 -0.34821988243140605812;-0.52889004265127648186 -2.0225846573518784233 0.11169280770590132856 0.92433453045479596621 -0.27871121972969992164 0.079446116277481312884 1.1421288229485289101 -1.1141308167764476522 -1.0478599005467030825 -0.66157316038204638797 0.63605376085648446249 -0.024944074256718330729 -0.38582991099344510211 0.3155523946099991206;-0.20672879829108956051 -4.2107867714288067518 -0.17633750207263626519 5.4259509914345542825 -2.908866009715635581 0.56247593466555889652 -3.2859371120699356617 -0.93541663506557215513 3.0930674187630597949 0.54624000193353083876 -3.2176714787640081639 0.32871957239399951511 -0.98278603218117932538 -1.5040861925331840965;-0.33380774335886537196 1.6955538912763943316 0.10363882785774930495 -0.42150069037732845745 0.91974934376939720959 -0.46499517456722366804 0.36129945842488181418 -0.58688872281054260682 -4.1152939244611692615 -0.94225126310416928987 0.57860479358188332544 0.56437131436822096653 -0.13655290449516482854 -0.32060681189582251882;-5.0285438700038964654 -0.69299855090307116434 0.51463238829309976285 2.2322254616976242581 -0.59051665140111442298 2.1457932568646334026 0.31087286309024891873 1.6653480407711325206 0.31210559290314787706 1.1196863927906945957 1.6678257990216114326 1.9066969635666761729 -5.3590191750716646979 -0.5385220251255833368;3.7133819101306144717 -2.0395358927156070905 -0.11316858466474113976 -1.391782981573072453 -4.2281482244654782221 0.13075365583876341624 -1.3702062930658909234 0.98448662615831949996 0.72798482428849786707 -0.062394410333060784657 7.6528094117072367197 0.53432795070298899631 4.0433132411238927872 -2.7142661818865709833;-4.7016317208187778931 0.019315115906278539082 1.704825944108719904 -0.51210594763531491758 -1.1119420996564606252 -0.065053820448476559757 1.578827586859941956 -0.65177294071805236264 -3.0438922013479774442 1.4123690268185213892 -4.3802812969486275563 -1.7879450946767043718 -3.8540981976783705854 0.71027259275097176516;-0.20718412542178038516 -1.0583291892449879779 0.68688698052351637724 0.74263925903381533544 0.53335869401811741852 0.48376164266212340337 0.73598151186534543911 -0.028145053705803328714 -0.18524291093073577685 0.31736090955296125671 -6.8892532197742124139e-05 0.43200896950002753982 0.044840096030315863829 -2.6797360388983597623;-0.96470939851263248777 -0.30969175045939073554 -0.27352701523817030127 -3.9450000514760339421 8.3546758495700377267 1.3170523893362291457 -6.5228933642758120115 -1.1918976955162876585 3.0853963661955834397 4.7828073522473451007 -1.6231924992072175318 -2.5147354437686217921 -0.72541816028201300259 7.8675264731488736558;0.28030679515055051398 -0.92784780071864558781 0.49888538178062780126 -0.5276626451635908488 0.66758925723798812069 -0.56012848302663742484 -0.43211759945760036539 -0.11251421959455802646 0.30724326497696086147 0.45030994029296106396 -0.77394814581887327876 9.230479454107520354 -0.68100564848172984167 2.2403490856924443975];

% Layer 2
b2 = [-0.99778150124862907688;-0.11224313399441465666];
LW2_1 = [-0.76136984467851642755 -2.4207001102294354311 7.0096492647643149354 -5.5473083430447056585 -1.0173610508761725679 -0.14725811824900586489 0.40473774058254913255 0.26922173526103793106 0.19704977352185948369 0.10730568494672455826 -4.3308808165389143241 0.60178582439703243168 -3.4565913939791790277 -0.35250076240868671862 -2.2332479841564856216 0.29539046276191383011 1.8690613158809854522 0.36021275357802745587 -0.38810685159019264745 -0.55735342192926085048 -1.1388104223802131276 0.66631166275434461355 0.28277608549988020314 0.55206689531775965385 0.15938510841528136242 0.32306568098641019748 0.35172644033428751564 2.0778621618723547293 -0.342974957829027427 0.3426720803131477755 0.76625034367482458553 -4.7528759344933915187 0.16507433765720688768 -0.68183293853464488343 0.17445239232752829395 0.31176689104644433881 1.0153972037113201399 2.1867013257281131544 -0.092562901546204778835 0.47039285371255112889;0.025095890880210958845 -0.031773695000758522822 0.14797905593468529961 -0.10963265086532125725 -0.020862232418811847701 -0.012315395247714258642 1.0840368905207158345 0.0087167763535236867517 0.010265084919707727351 0.023442005828938558554 -0.43510132813399909901 -0.018305184152508705703 -0.10286278344708918442 -0.06758110788404136926 -11.967799972765023497 -0.00018528672294529791986 0.048982816844642382281 0.006459257668062531009 -0.013417644007159364519 -0.021110975063327250267 0.0069220199282932146079 0.0085860664910558659457 -0.0057754389465400589321 0.012271379998978438827 0.0024665440247165389132 -0.0095146229028523366528 0.00093250612959683786517 0.056336073428337914148 -0.0079053417241900514334 -1.0827008215297695415 0.018642408385168722507 -0.34388729855303812322 -1.1199917119821256595 -0.017998145381247630803 0.020578568423376894514 -0.023573277866458221264 -0.0095055591475336140284 10.029338090890490776 -0.6377208626635914035 -1.1700191714577630187];

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
