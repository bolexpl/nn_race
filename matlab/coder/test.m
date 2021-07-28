tmp=1:14;

result = gdNetBDMix20(tmp);
result = gdNetBDMix30(tmp);
result = gdNetBDMix40(tmp);

result = gdNetBDMix20v2(tmp);
result = gdNetBDMix30v2(tmp);
result = gdNetBDMix40v2(tmp);

result = gdNetBothDouble(tmp);
result = gdNetBothDoubleMix(tmp);
result = gdNetBothDoublev2(tmp);
result = gdNetBothv2(tmp);

clear tmp result
