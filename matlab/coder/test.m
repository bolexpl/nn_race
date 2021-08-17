tmp=1:14;
tmp = tmp';

result = gdNet2T20N(tmp);
result = gdNet2T40N(tmp);
result = gdNet2T40ND(tmp);
result = gdNet3T40N_working(tmp');

clear tmp result
