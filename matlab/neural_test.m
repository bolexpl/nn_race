% Solve an Input-Output Fitting problem with a Neural Network
% Script generated by Neural Fitting app
% Created Wed May 05 22:00:17 CEST 2021
%
% This script assumes these variables are defined:
%
%   x - input data.
%   y - target data.

x = train_data';
t = result_data';

% Choose a Training Function
% For a list of all training functions type: help nntrain
% 'trainlm' is usually fastest.
% 'trainbr' takes longer but may be better for challenging problems.
% 'trainscg' uses less memory. NFTOOL falls back to this in low memory situations.
trainFcn = 'trainlm';  % Levenberg-Marquardt

% Create a Fitting Network
hiddenLayerSize = 10;
net = fitnet(hiddenLayerSize,trainFcn);

% Setup Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;

% Train the Network
[net, tr] = train(net,x,t);

% Test the Network
y = net(x);
% e = gsubtract(t,y);
% performance = perform(net,t,y)

% View the Network
% view(net)

clear tr y hiddenLayerSize trainFcn
