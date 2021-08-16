clear
cd csv
x1 = dlmread('x1n.csv', ';');
y1 = dlmread('y1n.csv', ';');
x2 = dlmread('x2n.csv', ';');
y2 = dlmread('y2n.csv', ';');
x3=[x1; x2];
y3=[y1; y2];
cd ..

x1 = [x1; x1];
y1 = [y1; y1];
x2 = [x2; x2];
y2 = [y2; y2];
x3 = [x3; x3];
y3 = [y3; y3];

clear x1 y1

% [x1, y1] = mix(x1, y1);
[x2, y2] = mix(x2, y2);
[x3, y3] = mix(x3, y3);

