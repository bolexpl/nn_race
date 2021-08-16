function [y1] = gdNet3T20N(x1)
%GDNET3T20N neural network simulation function.
%
% Auto-generated by MATLAB, 16-Aug-2021 17:16:58.
% 
% [y1] = gdNet3T20N(x1) takes these arguments:
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
b1 = [-13.344589446124512477;0.028079956649396959484;-21.84836800630541731;-0.14815656430204954264;1.1396515865129015488;-2.3477655139426114594;0.84160467939519367775;-28.627409825442544644;6.1784730218524144263;9.5310849818341782935;-2.0715635111409618219;17.925375626397581641;4.698324984538035487;2.3022286307172543651;1.1132483973109121855;0.034341501051354611507;-5.0961722362561552302;0.75446119726157456764;-1.1400651602710978327;12.905925950176587946];
IW1_1 = [-0.58763821228308654732 0.80171671921691012308 4.5407821717429719399 -4.9230862078625410305 -0.53856424453929852003 -0.50874876520276623992 -1.6156645767251258672 -4.9660587764037984471 -0.57351412442467586406 2.0293015835452608009 -0.69805475874588007734 -8.522331040041821737 -0.62772296764922541623 0.81112702687056981166;-0.37571723866327466634 -0.29231362404282223988 -0.21182908425805219155 -0.46567608105346725011 -1.5416812272320816746 0.34978575347733958933 -1.3037632909266150261 -0.04966633260581867354 0.18604566213487000459 -0.22285027917848498902 0.97480209838649067855 0.67494175121726951438 0.58038485475861667506 -0.39521541519353386995;-2.7103509302846728879 -6.3182905689491706269 -14.610640100833039767 9.0814652236743746982 -0.46469406090741383064 0.7853470914041599249 2.686372256506756262 0.47906598372305225775 1.5656048515998761683 0.96753836721514041574 1.0681767515381566103 -13.48164390127374368 -3.0485743135305480855 0.1688621689749791599;0.4831964359870016823 0.93901290308354534719 0.17078055243805687069 -1.2204083114852641856 -2.263413685584465096 0.2714634810348762195 -0.3753799379242165335 0.16090045693641036317 0.18170731675753704071 0.016486168748945016077 0.19506573693177364781 1.890451074032282186 -0.11485503374595221193 -0.11671393677759223095;0.96522808713852170648 -4.460064645527908489 -2.546566834586407424 2.348360044341971431 1.398267363658780571 0.78351372487641890441 -1.3175231432100311668 1.3443459573172384935 0.30926749075462328653 0.40238263174605548578 0.44484933436042217725 0.85656315222636458806 0.83957992025250294255 -0.29442887722480676205;5.0605211097063422798 -1.4420826853709265425 -7.8414316727256458961 -0.069663570166201602141 -0.26883424077379858286 -2.975462026704256413 -1.2015886283862691197 -0.35072818232187946696 -0.33257174548993417851 -1.2052824800913195524 -0.19989162123957371353 0.31108304859883134652 4.0376122363411273142 0.19482586895745027111;-8.5904212622173190539 8.4020045494094794947 10.847908604722888981 -1.3838252445050402972 0.58122197910369688412 -0.39320665736116916511 -0.10798074574344179721 -0.18360661151666643476 -0.58803579628866309292 -0.33362006624893542073 -1.6960408405722569025 2.1535597312975744977 -8.4542241679841865221 -0.01488386356992389345;-0.49484637815721083109 -7.3939956044241652577 -0.096651656822784967615 -1.4668767078052069586 -4.0464422145830711841 0.68811473527536626271 -5.8974928230882355251 -2.5732442787278619889 1.4843154574549748403 -3.9850014371380080291 -14.868601396758194255 -2.2212240561805960404 -0.50539549793756100016 -5.1369085175557565037;5.6459895376166775449 -0.24990549380401844148 -0.47287053161952125047 -0.20385618079213177478 0.85103390599166062191 1.6753453948487606606 -11.033226751693282708 -0.21113390123056302583 2.4148931732138860795 3.2990567086712387912 0.9397533255090043669 -1.0471151362956463426 5.1343514178783413726 0.34430338774814150948;-14.182737033243563829 48.793952375297607205 -14.988439711892324269 0.30800670230532872784 -0.15366483093004865146 1.86194571089138039 -0.91556109396627782804 0.4433396834954611565 4.1032470085972692075 -1.6409706355694648749 -0.37385291431895423253 3.5568667105909472781 -13.764891352446792183 0.041704192329892600388;-0.6930177057875800406 -2.0552365732365820428 0.021464546547760768314 1.211822643468541294 -0.76663440907005686586 2.140740321161962445 0.034468950192807004673 -0.17590074314632131447 -5.2491790870235179867 1.5821561458794701771 1.1386209131816333873 -0.63769677749605813144 -0.18220874309261891888 0.038669594227407219633;0.37672777673262436426 1.5478496966183770134 2.3435457244082233963 -10.610326973670941797 12.227767305416131549 1.5814832994991823156 -9.423542463025830429 3.3157508106064907949 -3.9266861752192641077 -2.1469796639127394222 9.0998124395290940214 4.320364462322409338 0.012266724833038887554 0.23111501333704687067;3.2067465416363662989 -3.0721305054197598494 -5.5739473742668570466 0.34380446478696635726 -1.3546298628189370472 0.3996058992365985052 -3.4130728059360233573 -0.30003564277394267901 10.011941135711680317 -4.4322613286746275207 2.4855819779947738724 1.1680427689915358069 3.6981829127050249717 -1.0106116419292869857;1.0281629875642253058 -0.11771255568001931513 -0.31038790231127733055 -0.4935735040495167758 1.7343038279477833719 -0.39621447563076239717 -1.477854302001620157 0.21375698178049107323 -0.15940622713483007522 0.18232214331035201393 -0.83087624498838430487 2.3165726399893404874 0.61004537045964968289 0.12477077432364189202;0.78808075894034546049 3.1535910021647697299 1.1934417197651503439 -4.9319128256154618484 2.1228598172949064704 -3.9155079326012964813 1.174548317200361458 0.82079599741322450956 4.5010547694595031132 -0.1339975237648011186 -1.4624619817971200586 -0.11041344215782729343 1.1565494505239093392 -0.26367478800965304941;-0.51671312046610329283 -0.80198949097938565522 -0.05714927051853056772 0.90924759470106975012 2.0675110224359993794 -0.23871189855678273672 0.42660633352250687533 -0.16134576378401324637 -0.18169222858272787713 -0.054791232486280087854 -0.15476107937790067881 -1.7739513601472187698 0.16910207339837085572 0.12950028848955716376;-3.9409108286656908682 1.0397900262565360485 0.27169607644234539112 2.7575700912855207747 -7.0275259014489668274 1.5284174181381962043 7.424562895857123479 0.14686979513127282337 -0.90273106813179271324 -2.0619293964486522519 -1.7547090792974586737 0.97546549599293286281 -3.3263948363993218749 -0.15883245129752093794;-0.28567380829952321308 -0.0017144390904033498472 0.12322083269731747002 -0.012620633503681279869 -0.011565649532676098438 0.029095632676831621743 0.064349720943027016729 -0.029836897867618488583 -0.069324498011633498007 -0.017508941899804141007 0.052704399138422640403 0.09255503033345031938 0.22543429801453740424 -1.4634442601786166183;-1.1735477630816055772 5.2419069182782971339 2.9541050783750626429 -2.7699737270189017657 -1.7486708467175311466 -0.90456143573150882276 1.419025001857851187 -1.519329466704979037 -0.43396834060071814987 -0.3956608173718826893 -0.39775727769494506614 -0.95427406654030222377 -0.98330701078900373258 0.3105745959237277698;1.8992877605579483458 -0.1601657283315389424 -10.075263039178130597 0.72184492466352423445 18.40062549334779618 -3.1014393788283789455 -4.6737199204363326643 1.4659483685005838538 -0.10939345577017918487 -1.0209274421871012972 -0.78672874853576713061 12.592763673286393455 1.701039985105366803 1.0280814062286023347];

% Layer 2
b2 = [0.36227866990078250176;1.1060373979110491582];
LW2_1 = [0.27121657332592674639 -0.70856364811797323267 -0.1411258786436564161 -9.814926255427648627 3.6860899853501094547 0.24772442900755145545 0.35254737132311630976 -0.00027080619186824824059 -0.23263828031134317631 0.23946613170200209408 0.47776344870455583758 -0.16046236705114330645 0.19706716070759461301 -0.92891953894209211562 0.31177519259128411155 -10.925974887225134324 -0.37762289569779927678 -0.037521036340210457694 3.2902152682988035082 0.16063041555602880495;0.02274041878086605073 -0.050487565070360021502 -0.0067285986879772477845 0.033225400582805285354 0.012127620905724976336 0.015547175703476724673 0.036968618122487036104 0.73021989662728359338 -0.0039684754535477730769 -0.0026229434860343290789 0.043831504722771329197 -0.005171766065112190329 0.018781404384042708899 -0.052116170752585629089 0.0064939743032547073837 -0.042797133173410439877 -0.021244575941650221257 -1.0447925832997202455 0.0094003703514426630722 -0.014649482234162845493];

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
