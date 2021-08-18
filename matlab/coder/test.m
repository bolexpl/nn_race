tmp=1:14;
tmp = tmp';

result = gdNet2T30N(tmp);
result = gdNet2T40N(tmp);
result = gdNet3T30N(tmp);
result = gdNet3T40N(tmp);

result = gdNet2T30Nv2(tmp);
result = gdNet2T40Nv2(tmp);
result = gdNet3T30Nv2(tmp);
result = gdNet3T40Nv2(tmp);

clear tmp result
