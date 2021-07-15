
% mix_x = dlmread('mix_x.csv', ';');
% mix_y = dlmread('mix_y.csv', ';');

x1n = dlmread('x1n.csv', ';');
y1n = dlmread('y1n.csv', ';');
x2n = dlmread('x2n.csv', ';');
y2n = dlmread('y2n.csv', ';');
x3n=[x1n; x2n];
y3n=[y1n; y2n];

% x = dlmread('x2.csv', ';');
% y = dlmread('y2.csv', ';');

% x = [dlmread('x1.csv', ';'); dlmread('x2.csv', ';')];
% y = [dlmread('y1.csv', ';'); dlmread('y2.csv', ';')];