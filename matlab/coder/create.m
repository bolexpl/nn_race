% This script assumes these variables are defined:
%
%   x - input data.
%   y - target data.


trainFcn = 'trainlm';  % Levenberg-Marquardt backpropagation.

% tor 2
x = x2';
t = y2';
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40N.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40Nv2.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40Nv3.m', 'MatrixOnly','yes')

% tor 2 double
x = x2d';
t = y2d';
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40ND.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40NDv2.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet2T40NDv3.m', 'MatrixOnly','yes')


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % 

% tor mix
x = x3';
t = y3';
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40N.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40Nv2.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40Nv3.m', 'MatrixOnly','yes')

% tor mix double
x = x3d';
t = y3d';
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40ND.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40NDv2.m', 'MatrixOnly','yes')
hiddenLayerSize = 40;
net = fitnet(hiddenLayerSize, trainFcn);
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
[net,tr] = train(net,x,t);
genFunction(net, 'gdNet3T40NDv3.m', 'MatrixOnly','yes')







