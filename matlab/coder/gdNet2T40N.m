function [y1] = gdNet2T40N(x1)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 14-Aug-2021 20:00:11.
%
% [y1] = myNeuralNetworkFunction(x1) takes these arguments:
%   x = Qx14 matrix, input #1
% and returns:
%   y = Qx2 matrix, output #1
% where Q is the number of samples.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.015853;0.016293;0.018015;0.0213;0.027949;0.033129;0.040625;0.032347;0.02791;0.020117;0.016488;0.014631;0.015853;0.001797];
x1_step1.gain = [2.03221673185002;2.03312571731217;2.03669098815155;2.04352712782262;2.05750521320383;2.06852827316157;2.08469055374593;2.0668566107892;2.05742266662552;2.04106000410253;2.03352882323754;2.02969648933547;2.03221673185002;2.00496228164708];
x1_step1.ymin = -1;

% Layer 1
b1 = [-5.5182128557259852997;-4.8165757474840695807;2.1492648497305713029;5.7908815426232225221;1.2625952162043141414;-4.3047135665869120658;8.1513919910265375535;-1.87984489457507431;-13.691636448714833207;27.225413700537615114;9.3100457024421832131;-3.1863163528078368714;-51.846046885100520285;2.9038793359348304968;-2.7884472228928127713;-0.13393098899976352278;-4.451858206493715997;0.85842602655100563869;-1.3724777088518256285;-17.615387298751624456;-0.057958523665374669931;-5.9804134753008906245;-5.7264499934703492201;-5.1696455766656157493;9.5779288985831598779;1.2168440187449318657;-8.0502854560745209511;-2.1262411348635312791;-2.5398831549778466687;0.63767393421059559433;2.5203849359185324097;-1.958994674585511353;2.3012111118312255087;-7.2395900407615547678;1.6344478060670089015;22.948892144967125262;-1.5934692694265109036;-7.1793437150127390467;7.7688341249123320509;-11.517502151303318669];
IW1_1 = [0.44388789000636946769 -3.1480586697711441246 6.4333941360536694987 -7.5575781129159036453 3.770338013766354468 -4.3327021673913437283 5.951561697738427803 -13.438051164544607019 1.2872029704970560093 3.1655822549029561941 -0.79411714167059699321 2.7076534147549655707 0.41486404042085384125 1.8990489548748377135;-0.30905424515874646563 -1.9096521375343109561 1.6072316441331511161 1.1727218744077152479 -0.44245490925400210447 -3.601570753158474858 -0.78756679800339257635 0.41394329711975508257 0.19335288361782579369 0.35762048736639451274 1.0482592536235186831 -0.4144606926285900883 -0.18881772158622295299 1.3785358966207521547;0.27253254123431153166 -1.7043519665686739373 1.9727213004402903707 0.09898076321265708577 1.5495143070378105676 -1.9688820672827338498 0.07556575373978872967 -0.18674688896206723121 1.4447457141344901554 -0.17823626385322124954 -1.9348937730930204637 0.13608851269854374544 0.21645281915849773346 0.10494490152206650824;-0.7068668048184545416 2.1176738580281795343 -0.5010037434944044632 1.0379425956789387619 -0.75924045493839831256 -0.77364954667084295803 0.61086576912045631449 -0.091856719374006495782 6.9284038189017023157 -0.081895354105317064164 -0.78061431546613269106 -0.15907562204182074117 0.26299064749091716209 2.0999867047507008166;0.081073239594795606933 0.11124466637694446769 -1.0927518969221685641 -0.20257520759906944008 0.15175552550731044588 -0.89172604252778076006 0.13305744746523395783 -0.26279926296939143393 0.53135538424288009107 1.1924045048328792973 -0.47399083564583316397 0.40816931002072387447 0.58941690111150113474 -0.2847261911344752261;0.90282968891614634455 -0.31774015850946474293 -0.62671951598539177297 0.15919430007686163897 0.30852316273318786122 -1.0564521369667032591 0.41370443024739417259 -5.7384611912159630975 1.5128373875821448102 0.50606731579462349568 -0.32491962391243250918 1.6599989031735555844 -0.5768054701294864639 1.3655450640559030351;-0.92988231617703398513 -0.062489492972307922325 -2.5826263514297536084 6.1723390963305568846 0.74127540982041162376 -2.637731874130735843 0.29972480683819446856 1.7611039555304817128 -3.5213770234167993678 1.6384374328726409864 6.0411230059820777427 -0.0052033792529667371313 0.083563908903201131184 3.5413689848270015759;0.14016210556367064699 -0.75755340898622247625 1.9229721999120501508 -0.22646355971858722622 0.29711888828916105387 -0.51864078434692539865 -2.47308796245414797 0.20431196589657307783 0.85083642201223774748 0.64359516088754109564 0.53286052498819325152 0.21639415117364180219 0.32204899697464417496 0.73609848110835374158;0.79722507545356657843 -3.4153668720166474593 -0.6302500196110571995 -0.061910365759327082302 0.2889458427231125226 -0.34209363254593394554 0.046635750390732984283 -1.6931446274070283131 1.8157084760377761867 -1.6580407884671628516 0.96596189357866624192 -12.014247792335863707 -0.37007034782409592433 -2.6264538016203409221;-1.8918787803147083526 13.695598163246961221 -17.115120897419789259 20.525196324332462439 -6.8384395177463144222 4.9389221436433965451 -0.15728502159317009346 -0.59675800021276259599 0.48491343965493910462 24.047969316586517152 -2.8122898914967486839 0.77036479190535400718 -2.3307632422686119789 -2.1319316826767695794;-0.38313011359549636881 1.914333855896149128 0.032368258334498078987 2.195035257259148942 -0.26602444339662717487 -1.0403394668827121716 2.2242093482380997926 0.34864757801058582354 -1.6677037070181521816 0.23945365192773629404 3.6239266385196611253 5.4747550806671076984 0.76122100338934317598 1.2295934693937193849;-0.36562763152414134993 1.1395979272112941594 1.5367289515604634076 -0.34767738015712973398 0.31739113970272680998 -0.22440213611988446551 1.4703656598212455631 0.13593550263874543127 -0.47653833262499006862 -1.438969898010351578 -4.8826771671274693531 1.4471438507889267111 0.15318601148981331184 0.92517128214015753596;3.0701273284666701358 -0.56150314459724715022 1.5483787262250459094 -2.2064156086374473453 -1.9680149221382952085 -0.44704475266298582259 3.0957957052287752298 -0.26557043177423467206 0.80109363130810018472 0.72950194582512262187 1.0795226327737157401 -0.072079239112102289067 3.0074200022792911824 55.87705285356097562;-1.0282321477160945022 2.2338770452016327717 0.18480307186165770283 1.4265543717448783134 -0.30684825940137483435 -1.2603355949628913812 -0.73606332261622930968 -0.96546526553693490236 0.26718059198242150032 -0.33249327968976144509 -0.5006487903992076216 2.0277701099350853298 -0.0017415591841163794232 0.60003663653824657054;0.44861947927616507847 -1.503785368192367855 -0.18561046635576328168 0.030631171684668119515 -0.37533793851010965881 0.8008022387884468074 -0.97263581223934469921 1.1638707870413353973 -4.0658864219751453817 1.3860409887590938727 -0.80009379989058637683 0.4215579479697622034 0.66437337723395817335 -0.93942193380206195918;0.79853472981959849886 -0.40922324546664196054 1.0197212478728052698 0.63951290755282919065 -0.34369516545612804892 0.51107052323214530176 0.93662320963979506239 0.89972860555239142499 -1.9028279531486278486 -0.34051814160519122687 0.59629512866504985613 -1.3502962991621381139 -0.26186308171893124541 -1.6816864447557298146;-0.2249735471478099269 -0.98372847554021836114 3.5329090470884429998 -0.60152128855043807132 -0.29175008603594138057 2.1294796144122214443 -1.1145479043633206295 0.063658852760153900041 -0.82404392798589043423 -4.107866569659453404 -1.506683562039713653 0.55525599014363857808 -0.42244952202125241048 1.5623777845405493192;-0.65480203613833010134 1.8131206904662959811 0.75391741451953153685 0.62292064271302860501 0.32903746872935707435 1.0876435668630026754 -1.3553954033255994904 1.9549209856385947326 1.707038245091696993 -0.69652460369027102693 0.7244852732992617117 -6.7164224590081449406 0.54542427930705872363 -3.3739176097681222721;-0.29041636089608408033 0.081712348483018615308 1.0945125222792959629 -1.1687537461116443982 0.17880859747596408726 -0.95144274739112111305 0.64379553076188733574 0.75482010779379959953 0.50674519340762891328 0.085437828777203461694 0.069584203819725923279 -2.7230434646192129833 0.13321630492280664426 -0.55916039597431177466;-7.4406136298924323569 1.360733896063953452 2.9232390860480963468 0.99003911267107058691 -4.0634499710420337593 1.4918116365857865269 -2.0510220364911520008 -1.0990065466022604923 -0.88152752401886935729 -0.78648186433765365777 -7.3871536627327412106 1.7341283219187959563 -8.5687246121341047456 -4.4443731525404057692;-4.2906405565845187056 1.2115312051570850116 -7.8044966790194383321 12.671965848153275758 -2.0378835740451179959 1.0561944208009286239 -0.88718869885946527454 4.111257198014517833 0.69529124810271547563 1.0561251779861600131 0.58161138256714817185 2.7353165973495228158 -4.3033319264508964608 1.5815150958726584829;3.1783042870628119836 -0.87854298512620454531 -10.794525899998385299 10.596962010883899552 -4.5901237333302598032 3.2921196946535293826 -3.1104596187951245589 5.980233626300712757 2.1219256238452151031 -2.585865228818795547 -8.4465197661611846058 1.0719907872416070127 2.5531870284379745151 0.46269827756408821173;-2.2779743304112085589 0.25054847080163145101 0.61557032550034884721 2.5224498128083450155 5.3237278893218595854 -1.4335899185021141466 0.39704759959146979087 1.8029467797975833321 -1.4154038229101084667 -0.038974850784051544295 0.55682895321415681877 -5.7581254122867662204 -3.1530597743738253413 2.7197847651945572522;-0.38499237310718509297 -0.62186091213018790391 -0.6564587131727072089 -1.8339171660703341704 0.42889892802490103829 1.5537945220033726468 -1.3644052434297138099 -0.96268854548083793166 -0.42583537887419908863 0.40909216687661459355 0.074304135050251157724 -3.0865076563079814065 0.36855040280337225678 -0.10045562566222457357;-0.31708692697541746019 -2.7662131214682235125 8.75326720244759926 3.3427671921287678281 -0.35908895397468881816 -0.53730048825611098628 -0.22396065908475754069 0.92260818684935774758 -0.40536564319230106168 -0.58296172556257408459 -0.055837243950392072278 6.0288445799608734177 -1.4443642150392510537 0.49024021422408020632;0.89822169276318442055 0.39866166424120563772 -1.2531608205200730488 -0.02150815427188966858 2.0063674740473222968 -1.1619615169022308176 0.4565586863255448602 -0.21804637451134439852 -0.52795594962313385778 0.2683522957575074086 0.048962675975913444448 -0.131611120666049769 0.040553937304160847521 2.6622782129201461032;-2.1978346440782576821 -0.11318902428097667168 -1.2043844330814141852 1.6531730745791453074 -0.26783932896196183115 0.6727722818523992343 -0.37645288938091919784 -7.8106037874194207404 2.4081129636041729292 0.10284168562411408199 -0.23030536973878651397 2.4085879977767699067 -1.4804482238524268034 2.2565274239091910324;0.027542717603889824846 -0.95105640301763516575 1.8348754228795614019 -0.27889553782334269849 0.14701753098565387146 -0.76552941963877152443 -1.7735896039840248761 0.15111965122126982952 0.71191371486677257341 0.47732296634603388341 0.68254736489855782899 0.0055083509801563844063 0.27990769013666372267 0.90540462413128741659;-8.7902672179023841892 14.472469367979991617 3.0766251771447907792 -1.5214301445365909782 0.12329554419888059946 0.54469970248697641146 -1.8441595305899676216 -0.24435528516898186169 -0.82604741984568164082 0.82877363295495931617 -3.0884050223457144568 -0.30013621472812962443 -8.6967641725267288422 -0.64590446806819312719;0.4694479965130221033 0.087261915212444085554 0.030886638000967185647 0.2829849964317665556 -0.022829615377330900183 0.41482279968658880565 0.23462716270842104427 -0.055678189144458968551 0.095929313798071597086 -0.25725794694925491202 0.19658559114465812279 0.17259405983576375787 -0.7071850388317407754 -2.3096601590933225623;0.095489229017185539572 -2.3466116077212149094 -3.9520100352021900747 1.7148752017641493151 0.77121327243770787518 -2.0265913599657268129 1.4914744750645501092 1.415060990108083061 1.5825017229945685937 -0.057888443404471870424 3.390915384311528058 0.30740269871437819749 0.46963104568984054277 0.49577122592030498094;-1.5269675609149673257 -1.6839360724576255546 0.22893978210173934751 4.4523420059575666841 -0.41660665088280990354 -1.4987277899573381301 -3.4914728723415717759 -1.1372916212245416379 2.9870745809858028075 -2.1466384695016023088 -0.84762613299687206148 1.2559189896141174092 -1.6259496295131732335 0.43724965030609314054;1.4135913866581146792 -0.24690617836266617879 1.28218512747436586 -0.47795295816098998243 0.1516330702403106967 0.79753958812805780809 -0.011552706370830397031 1.6890548263816436148 -0.57394602223763835358 0.092763819766270461109 -0.22062772703605576519 -1.1871569398826524733 0.55365695107412082887 0.82322800227597270339;0.5793428665428531632 -8.0388370860007416496 -3.7409638096182518119 3.1749910389613194006 -0.20062184982511874209 0.92106327805744869774 1.7288436546172343267 -0.044400511613250898124 -1.853623491195925288 1.4768524100864508508 0.85264682217280196586 -2.0927034031368303424 1.2864241117571431072 0.86331852667300768012;0.39019006954191809422 0.88519911060114231383 5.7098720951296311199 -4.921947203029878537 -1.9077721275573706894 -3.6655819754651153275 2.3110424946190950557 -0.3200315976408202312 4.9915459334018823512 0.99515118734349505836 -2.8638878350015524177 -0.22927674332571990057 -0.94715649231183796086 -1.7268947114781030283;9.0232180734343305772 -0.92773778858546185333 -2.1609167573277958674 -0.11942227196208796136 -0.080532309816314609496 -0.65023041705816519986 1.068733734181432693 -0.35683219030233831459 -0.61197743663377102141 -0.076709781074249569488 0.012670776715678367177 13.022251204221841903 7.8527331896814827061 0.29441447336090792453;-0.83911565154610201489 -0.19094394514481929925 1.263733036674207888 -0.47970172235909036562 0.17107839251280854143 0.33885573899548754317 0.37745790871269008226 0.54559345846305296046 -0.82915042230010826962 -0.65924311269779389821 0.37495912217680704703 -1.3052190012673023922 0.4880926833390030195 -0.1286745690959833488;-1.0413731415589526641 0.81060859234847848498 -1.4556115356033820785 4.5366620816552112316 2.3300098676218046201 1.6224272546244051796 -14.23357043785873266 5.2996983489737337081 3.6576694033169010467 -3.2079186282604230662 -3.480907083032643623 -7.2772319186578986461 -0.010218975126004082102 -2.7148553138804962792;1.9431177623599464876 -1.2736837019943749727 -2.6207525725785556503 1.3408850862802499382 -2.7678374618972765298 1.9819039744905559974 6.1732474328788367046 0.16858637794825939715 -2.5818705762217590838 1.3940888235156754238 -1.0508986061366130116 0.13486896605537823657 1.2624609385192917532 -4.7465627789723905394;-2.2270166958543842206 -0.060999767858982159585 -1.9134786642155643399 1.2387891224653102551 0.17418931631457432174 -1.8580594850618596947 3.4476847101631822312 -1.3526640622916916712 -0.74870336040459806171 0.53682112998853115382 1.5230490087670658372 -0.89803230812754253343 -2.7177742816202608012 6.2767096804857436254];

% Layer 2
b2 = [0.61540934571750205428;0.72099282239211903711];
LW2_1 = [-0.19949236768733230596 -1.2219839975596742399 0.66563455936037863037 -1.1401204015668537917 -3.0404989961344810467 1.1362397870016009982 0.27761393199093348239 -3.8257042186333203304 -0.24697961389293987544 -0.17406707820285186039 0.38228078142492072367 0.57017354596776381737 -0.20468759840351180568 -0.88202200314584922047 -1.071898708895836716 1.2399414870649687614 -0.83914555179696015408 -0.40152554199927698031 1.2076768049127621918 -0.59600366990613118379 -0.18604993593345023339 0.21979884955849307571 -0.29379847693288274613 0.90091610859604387418 0.66746793689336880728 -1.0611085832691284914 -0.96768137878042614908 5.3632312580841974281 0.45548387242175353284 -1.2500009178464410731 0.4959533224194096479 -0.33055289011858512982 -1.0247714087833201813 -0.55119980530900880566 -0.35257054046641644884 -0.97479643750078248665 -4.3764078007049942443 0.16194756858587627812 0.26469513742332040351 0.40869339023570888658;0.018084779605728604907 -0.080546958112506075733 -0.005873358060542078693 0.415798992259186595 -0.19827370618336606634 -0.055164395798441984153 1.694474186302906249 -0.015054287936051236052 2.2608622935519346875 0.011135603405930165344 -0.010909861591212190179 0.037616626544714620861 0.016817304811953079358 -0.042183975145442878518 0.050199777396589408129 0.032599370898637909655 -0.03734915788120853064 0.0030361596166609498143 -0.038517662004815399202 -0.012371535926338205272 0.017477626626890015171 0.0059930391857954210671 0.017077436064543517757 0.058960661579877227112 -0.011044920638240758592 -1.8697148856040604059 0.0068721875447624383715 0.051780206129387731928 -0.021524309297269533792 -2.486181545938055848 0.020954736082296150645 0.005523022072188632503 -0.031097757871986413808 -0.023884887196383756958 0.00044401940917654435063 0.0020705060598811262686 -0.13776035846832182519 -0.012629093288153788247 -0.010691223236113482631 0.02627116446859742091];

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
