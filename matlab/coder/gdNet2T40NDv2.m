function [y1] = gdNet2T40NDv2(x1)
%GDNET2T40NDV2 neural network simulation function.
%
% Auto-generated by MATLAB, 18-Aug-2021 19:33:46.
% 
% [y1] = gdNet2T40NDv2(x1) takes these arguments:
%   x = 14xQ matrix, input #1
% and returns:
%   y = 2xQ matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.014469;0.014929;0.016612;0.019995;0.027617;0.033129;0.040462;0.032248;0.027814;0.019981;0.016227;0.014616;0.014469;0.001797];
x1_step1.gain = [2.02936285109246;2.03031050553716;2.03378524041375;2.04080591425554;2.05680272073864;2.06852827316157;2.08433642023557;2.06664517355686;2.05721950326378;2.04077676045056;2.03298931765763;2.02966559229701;2.02936285109246;2.00496228164708];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.0570988377203329733;-2.7550166663653037347;-4.1135235168844195286;-2.4603764441050235412;9.1463785042933078984;2.4449784722855074648;-1.544820293156284885;-0.49503712783648423645;-4.6966211023066026797;1.8103031037331005493;-6.5322229336901074248;-2.1566485651712117289;0.99116634293072602979;12.944188468900815536;6.6020585079535791806;-7.6716068979442511022;3.3277223469241024034;0.63626900782093265274;-4.9614400641807847592;0.33146028978112185293;-8.1926094505353965758;14.622890841692465003;-3.2430482375034959119;27.843164845724018619;-0.51080913796038585062;-3.985109837589278392;-8.8111261617261273926;3.2389635923225159608;-13.847439768436228036;0.036085023259451225186;0.22413786273358707324;-17.108765372441986585;4.6696782382189079286;3.5362192340721083639;-16.811785876607672208;7.1139147770080475297;25.198527364497635972;4.5476899070144627402;8.2582975553591211337;-8.5232590796924885268];
IW1_1 = [2.2517703889978895049 0.87565218941521250073 2.8383777391105526888 -4.3432512035686396956 1.0387206898827781032 -1.2750405074207904477 -0.93871463793795251185 0.075065576046580914649 -0.66198190285360247742 -0.57421840415989233719 -0.027689193241223208908 -0.13726316882673425535 3.0482314555086498231 -0.15448673677689925277;-0.24246051016520464572 -0.26997892415680446732 -0.22782460964129264136 0.17923980127663910467 -0.71510985570596918848 -0.64230955166724601479 -0.21205581914292070955 0.0421883632600251815 -0.098446635941550841853 -1.2009722977013594925 -0.28678034657532008866 -0.54597325736861312961 -0.068321640005719580513 -0.0048942150034948809709;2.9889427836909412406 -1.5906433576771175087 1.7549349692668865242 -1.3202602478485356841 -14.393426047659692912 10.179114306411666036 -19.955260846422799403 30.165985032543243705 -13.294609762144997234 -1.4435156222443799034 -5.9773512812745508427 -1.4239480375601900608 2.190257803844708473 -1.7841919883275509928;0.018953252762860257896 0.18163934196970821233 0.023274721905385622328 1.0651726641804457607 0.33792128146775257669 0.53500579831420747023 -3.189860195631583295 -0.85935985242670065443 0.82552364640291608922 -0.4567134009779950099 -0.45882068171203588269 0.32361742559585782164 0.39142920651058948911 -0.00013426619187091950753;-0.13212726005323874312 0.98236177831955573403 -0.59704212027850800393 0.24816615315104148531 2.574426230468917165 3.7568718961570297665 -0.52590249586371906609 0.9364357272754246786 -1.1536970192739623986 0.1992623171179294661 2.4944937202981187774 1.7687098054972958394 0.72431650726713647792 3.2289614128369747981;-0.047742344007166877262 -0.21516244459192054861 0.0026135878176758824132 -1.045389614169163206 -0.22560421901127403199 -0.55812384261412273379 2.8725719479335842799 1.0782701193798189809 -0.92902265689954266481 0.61591761424263613556 0.50962371625293445554 -0.42687147516890827648 -0.38738976627636406702 0.0012579815692079394929;5.4948771325676810662 -0.79454127057630985487 -0.42635125440636961747 -8.8044683286092233487 -1.7756133005892333898 1.6413805520651776337 3.3900402742667874456 -1.9141056070455153559 6.4203127637594006316 -2.3609628052456219649 4.959709161516610898 -5.6990650482637681407 4.6180920742236972742 0.14579981965142357891;2.0285727423679347226 -6.7527236556760206199 0.89631282989268323824 0.65406210977321543876 0.68227009651108938559 0.283203853727210908 -0.45329244469343221713 -0.24014722816803324434 0.1461704664721224789 -0.29943317445041295333 -0.083389170093814579676 -0.29410363771178393844 1.9737987549828703848 -0.052569335368459382818;-3.5062368808330299785 -0.92500982620403193746 -1.3165158538883550143 -0.85109872219184867781 -3.3830507177015420872 -5.0501825453031834456 -1.0389632264043440202 5.9892789353261202123 -2.6337439039053442968 -2.3248540988491721571 16.05648211837898387 -10.274130295018583325 -3.7132805278454776854 3.5072575451222811616;-0.17888312214432702807 -0.68014184909664132661 0.45281983876517123422 1.370752194430221893 -0.98993316341039971906 -0.36310129882035935278 0.68266936837754788048 9.7184629689484101078 -0.20273962286816257783 1.7964614339127096265 -3.4469833790505139959 0.23865549358027232651 -0.72995323198682526833 -0.21581375928855703328;0.51429997427838658464 -3.3529813811598256912 -0.2898728538039925251 11.68051253449247362 -13.487583649736704317 -0.89763509720442891116 2.5574736246514633287 -1.0788884098749502716 0.089481448144167877179 -22.179532045235664128 17.690803475152115709 -0.068535028654541627069 -0.82785465319655027194 0.36231881352483619185;-1.7975884069378571528 13.225570052731693949 -10.532906630258171532 -4.6517479765004949854 3.5707834692473969795 -0.90715112692850996545 0.88144834741563271585 15.724513288276202871 -29.002210334484455956 11.716646258923713475 -3.2456706318214445517 -0.62772493394504680353 -0.63596520836599479409 -0.66285806172576156037;-0.38801454210895830466 -0.49713882533127523589 -0.6031046440411297338 0.019535154873314822255 -1.3730154470353566065 4.696825406761297117 0.16089292965479601305 -0.18210176123477128662 -5.625287338908217194 -0.10491901735956866981 2.6053897643627976777 0.656777848186691382 0.28056695959281457986 0.97732659928977749786;-12.404044716577974583 27.697656194880238445 10.798807731986611813 -1.5679631392900690301 -1.5960280051829289771 -1.5623178939286532785 -0.56951019512934286659 -0.57736783471019537117 -0.80112170688351580505 -1.5793861315049408933 -1.1613695363528233617 8.8635483654265616593 -11.431172844442473391 0.49956131830942351879;1.3420072895606622865 -1.3999750465655580456 -0.30776180498133570707 1.1842005287858305973 -0.42681495561622889712 2.1598090566955443492 -2.3201369584907878263 2.3745875216846994427 -0.97958366217628334294 -0.10379492649222486766 3.8300286360467836744 0.60843990696843119892 0.067507615350131708332 2.8646723671877847295;-2.2554319283234933735 0.2233020095786505399 0.79169217877731734578 2.3186986888081162483 -0.011637245282816312958 1.7523419904670061165 -0.67789307831810985405 -0.7204065485106251332 -0.63196577616388327492 0.13992208779499454296 -6.242826787065964389 -1.6034668389216171214 -3.5668215439409509671 0.11009551436327780216;3.7217267822178325964 -1.6015752441547130847 -2.7046782820870616248 -3.2640376210221528908 1.1921362497680876302 -0.6520949424613002865 1.3518851029642944273 0.12509568867223325173 1.8696548253302884834 1.4970294582617582613 0.53504856640714981708 0.54804656841484611363 4.0546350570362790222 0.12837757137740890556;-0.5278064658275045673 -0.028302342395729571806 0.08010714398764441635 0.025626828218713239294 0.1023567051883402107 0.048831866564647302686 0.053312529969136157604 -0.080907202722914378645 0.06941667727590583592 -0.045849970169349898996 0.073824782370044250701 0.0329053641180575146 0.51506785041917113599 -1.1425116223332034693;-14.264279986186890525 6.8179194972840857503 13.333036656172938095 3.7034228545242791064 0.90083947671303321592 -1.1599518058207998195 -5.3269672684492350712 2.6527186237000957014 -1.6033798078261793929 -3.5354773258858962492 -3.557033632887658392 -2.5019408269731262529 -14.604056478586928236 -0.29375907154626590412;-0.72617446243414529583 -1.3727970426775568669 -3.2955217907281895151 -2.0948417871432232218 -0.096228798439964777223 1.3224874124642538309 -2.5613909935262624273 0.68094017564536435394 -2.328589339999915353 -0.25965804414624482632 -1.1216457972423152789 4.748837621931681241 -0.28269368490483448575 -0.94812675073169805362;7.1243930397523227427 -18.177660191833478365 -1.9849393020504173535 15.59633097981025962 -11.724805158703935248 0.42126039560776817883 -17.548330992510880577 -0.39143380703912700191 -0.21847844706784547153 -1.3173326899561916825 -1.1243369447972269004 4.3152225868018785349 5.9010677830709870051 0.37663332428640466931;0.98626893498029688523 3.722919615633089041 2.7720977278850758019 1.9241434697678470034 0.52306752572306702831 -3.0645778716459268765 -0.22149399907800282339 2.1978795852960866242 12.833349228210337856 -8.2372184405808326346 2.7422824129942298121 0.99572719240371054816 1.2625085932485695661 -0.31064035247647103777;-2.7283134683190080061 -0.1238604539000761201 1.1629084008366277203 0.43491705739876335146 -0.52478617896292434342 1.672562269282991787 1.4101465907673143008 -11.154443384531399275 1.5120734132562629881 -2.2877422604354724633 5.0644185438122448772 1.8825108800648464591 -2.0940831555062202618 -0.23750438257268885467;11.287331573533572637 -0.50660619719071153799 -3.0826996713726932953 -0.014460325973070398131 -1.6895601651487934802 -0.48513759043746190747 -1.3467122597677196882 -0.79002065902260043551 -1.8301234226198732635 0.87648448666404310536 -0.4829596154799981611 16.098422712598637219 11.236013252653235028 0.10358129146019047495;3.131543109233283495 -9.5965380579346426515 1.9446879775570371507 1.1953786858356831857 0.60258958081185443056 0.29825141545359801221 -0.32893694932735634273 -0.2372715359401924573 0.28682550959792868506 -0.68103720198065920144 0.34081337927910881902 -0.35095228345152551519 3.1337461332238412126 0.091985055580845270784;-1.4067289590742206862 3.3632016834463818178 1.1765030750023421913 -6.2882785816434889625 -1.2873440373766191769 1.6591792375951270877 1.9096917976294691677 -2.0761850735108526855 2.6173292992037628935 0.23988120123515394022 0.039359769596418632542 0.39606074613377617588 -0.68069313979859036312 0.22721128026679165979;-1.8175827281739203034 0.36879359434742170487 -0.56094563421894783062 0.68698248699009079044 0.7561464720628584546 2.4769268368273111847 -0.22666207097549967431 -1.1059215705011782305 0.19180673090290847882 0.15204637547320551394 -6.3735327678102384752 -3.290158230948207585 -2.309975217068181319 0.004486908951499144621;0.34017426361663039014 -0.84992879791957487434 -1.3127353948508608816 6.5206094466219308714 -0.16788163382039580918 0.016509716785191915628 -3.1322027232891653803 2.0255245245282025301 -5.4693873124898013671 9.4235068414361542466 -4.6562402522120871495 0.76817879709935643628 -0.030897289705218249772 0.13529511492416512741;-0.57422940404802846892 -1.1150700792188068533 -1.7626681740062086767 -0.46095340373885357321 -5.9151001926469808367 4.6182892720882842141 -4.0860827551939618019 -6.0433548284275904194 -0.47687195989492819903 -0.33596623009648829417 -0.47050137544850856308 -7.5998968543000300357 0.68131354583415570936 -0.43403349726961992783;0.046573146036086775224 0.46846378179061842761 0.6313198121040725086 -0.095495975914173636401 -0.73834511214379461297 0.68492690479331841402 0.99042542649171139146 -7.2762874693841723683 0.82776876374343610898 -1.4610421793891077424 3.4437487348592883407 0.81934044704196229425 0.15588114413220102716 -0.0045316619272914859806;0.51325218527063254381 0.29931558532092616964 0.017207931798677786328 -1.3992972165429033993 1.3093884670380622204 -0.445024533030928926 -0.80308616180666925199 -2.6302037419191988121 -0.66757281155675896045 0.30791961807929846273 0.053840680050372527465 0.38533964588529695527 0.44406769156629177786 -0.074300567794412825107;2.8200394150262431125 -3.1974653083695514511 -12.878448122371207063 -0.016037910426794654145 -0.76074446874107470862 0.1194228245712457559 1.0040399581216905567 -0.45023123443973511737 0.89894370607408091711 -5.0091981564258727389 0.19331053721538593582 -6.8490749505735832869 3.2552618622348545863 0.19936385521465913029;3.3144225652866223797 -0.20839723224778819444 -0.12749299957696685892 -6.5653580967423836867 2.4558527068483302358 10.542717776613327985 1.2824076182470267593 -1.253406785205471996 1.4634305310228681307 0.00091610986164717897462 -3.6688444426982753654 0.48669804829955043424 3.0613448116096706464 0.45546919022868315174;1.7682932030785856181 -1.6212785874345947423 -3.9810843045504058502 19.945881623113830727 -16.182404710720327046 -14.706931599425949742 -1.5886046976993941637 4.6380798518885786308 -2.7297867518591609759 -1.1838531856192398006 10.420253222838152141 -1.4495961310137932543 2.0468142184379476411 0.8584810452326493424;2.7487830007574385327 -3.243562800714360872 -12.707243048231509519 0.029534641506867000127 -0.78168981631698719603 0.12121384797562669011 1.0038630461259667737 -0.44268623735316259271 0.90215288458805631411 -4.8240102223658949399 -0.45450854153070879837 -6.1638012225332357019 3.3349487681815790374 0.20082936146603300176;-2.8542336549019986514 -1.6686912277948930949 12.023653699512562909 6.3793776732139608754 -0.88216536222097430286 0.90667090287539053861 -1.5010577248960186303 1.7165591489773837086 -1.5553616264179070949 -1.8934068298134407726 0.41779276296096456988 -0.19065723648239968346 -3.7249876660832517139 0.67667180294214390734;0.61619546239092970463 0.23026264332529786105 -0.026778538029298987883 -0.45712046341204504163 1.5091774767342318597 0.2389684004366894321 0.020165204866491797525 2.1159606484725075326 -1.7395044722420560657 1.6981372554991103208 -1.8515236967964008308 25.948142918689530489 -0.12797170012311059883 3.2949928353097877043;0.065587912015698371371 1.2391527318689707915 10.042328467746287401 5.6749751131328141085 -0.069988394140697851586 -10.846384676730401964 10.020269211616147587 -5.7293742905523066256 2.0131941914830204787 8.606869975936474404 1.3933521300934628151 -0.44306577999549484614 1.3443264291070096128 1.0331914611574000151;1.0253850060611615636 1.0005009846089951697 -0.56092480831069169156 0.34703746552378450518 2.1150912886880157693 3.141258409893662229 -0.45460003778443158762 0.89345750739891516279 -1.0104165539779066396 0.25148107627314991719 2.1169836733973972365 1.5645539977758706751 -0.20921178852200841836 2.9447701856250296792;-5.596198002384277892 0.53110033676717838258 -0.24441393518946563645 -0.63235551375999488055 0.59487191781530890378 -1.7407416674311857463 1.2833971032871802631 -1.3412640339685280022 1.3676726901169653505 2.5524057717504389231 -0.4767633837360760185 0.72566343739720129413 -4.6343209182589228945 -0.53414477451260233831];

% Layer 2
b2 = [-0.50867409702160004681;1.074726612083969135];
LW2_1 = [0.27169242186609177114 -1.0239460683891392634 -0.10291478822045972696 -7.5038138427780403106 -0.77568892382601994928 -7.8464916150018533259 0.16980108256547837842 1.4411702045066012712 -0.074950875295841504209 -0.30985862558769999842 0.15548037303902648154 0.16759189664919818541 -0.16544100098198333271 0.20129388295773492645 0.43929573853668524297 -0.61616811211935340609 -0.48653490396233545212 -0.20209828503740642769 -0.18683268755128731864 0.21981637656768948652 0.10910968733811751696 0.17507858248819749281 0.35031877837979297219 -0.25310001338119619829 -1.2926751720111866462 -0.23646868155290290403 0.43080964526327297781 -0.19586911850948260372 0.15134357802370013157 -0.64813281604824224402 -0.39515095363563657038 -10.998999065338795234 -0.13117660549289397731 0.11804926673180529684 11.018946144563653178 0.25468909826453345335 0.12066908667278929135 0.14263731577788538174 0.47720577487174548059 0.2754995845205043814;0.011759291466127686637 -0.13473064431088924153 -0.014227425782828298853 0.70127884334119772181 8.8975927604706264162 0.70498109666841624055 -0.0071239787167676925025 0.004218713982705440263 -0.02400286698990113099 -0.016623325948657993734 0.012520417942076613599 0.0096015587870869265052 -0.0051158080177273173444 0.0074205467725986466038 0.85896403649169716932 -0.037773058991997135458 -0.030259959924492183664 -1.366764825739356537 -0.020331200845675710676 -0.025909926105558641479 0.0029974626956199828393 0.0093366987763409490381 -0.0076613849696319990742 -0.033986249473887751582 0.027523263851588774392 -0.0015746171176724481182 0.05530401373631421702 -0.03370038135581987504 0.014294338903947727618 -0.00084402529405784771678 -0.0170463436849133676 0.1125700119983731734 -0.0092497853577756389276 0.012913043308872907203 -0.092228937265916313692 0.038805058295647440469 -0.83147374881372149158 -0.007004775390295651244 -9.733112498323206907 0.032396066359921052435];

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
