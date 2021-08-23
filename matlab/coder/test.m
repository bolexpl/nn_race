tmp=1:14;
tmp = tmp';

result = gdNet2T40N(tmp);
% result = gdNet2T40Nv2(tmp);
% result = gdNet2T40Nv3(tmp);
% result = gdNet2T40ND(tmp);
% result = gdNet2T40NDv2(tmp);
% result = gdNet2T40NDv3(tmp);

result = gdNet3T40N(tmp);
% result = gdNet3T40Nv2(tmp);
% result = gdNet3T40Nv3(tmp);
% result = gdNet3T40ND(tmp);
% result = gdNet3T40NDv2(tmp);
% result = gdNet3T40NDv3(tmp);

% result = old_gdNet2T40N(tmp);
% result = old_gdNet2T40ND(tmp);
% result = old_gdNet3T40N_working(tmp');


clear tmp result
