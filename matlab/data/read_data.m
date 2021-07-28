clear
cd v2
x1 = dlmread('x1n.csv', ';');
y1 = dlmread('y1n.csv', ';');
x2 = dlmread('x2n.csv', ';');
y2 = dlmread('y2n.csv', ';');
cd ..

[x1, y1] = mix(x1, y1);
[x2, y2] = mix(x2, y2);

x3=[x1; x2];
y3=[y1; y2];
[x3, y3] = mix(x3, y3);

x1 = [x1; x1];
x2 = [x2; x2];
x3 = [x3; x3];
y1 = [y1; y1];
y2 = [y2; y2];
y3 = [y3; y3];

