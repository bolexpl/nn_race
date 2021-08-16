% This script assumes these variables are defined:
%
%   x - input data.
%   y - target data.


trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

% tor 2
x = x2;
t = y2;
hiddenLayerSize = 20;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T20N.m', 'MatrixOnly','yes')

hiddenLayerSize = 30;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T30N.m', 'MatrixOnly','yes')

hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40N.m', 'MatrixOnly','yes')

% oba tory
x = x3;
t = y3;
hiddenLayerSize = 20;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T20N.m', 'MatrixOnly','yes')

hiddenLayerSize = 30;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T30N.m', 'MatrixOnly','yes')

hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40N.m', 'MatrixOnly','yes')


x2 = [x2; x2];
y2 = [y2; y2];
x3 = [x3; x3];
y3 = [y3; y3];
[x2, y2] = mix(x2, y2);
[x3, y3] = mix(x3, y3);


% tor 2 double
x = x2;
t = y2;
hiddenLayerSize = 20;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T20ND.m', 'MatrixOnly','yes')

hiddenLayerSize = 30;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T30ND.m', 'MatrixOnly','yes')

hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40ND.m', 'MatrixOnly','yes')

% oba tory double
x = x3;
t = y3;
hiddenLayerSize = 20;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T20ND.m', 'MatrixOnly','yes')

hiddenLayerSize = 30;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T30ND.m', 'MatrixOnly','yes')

hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40ND.m', 'MatrixOnly','yes')
