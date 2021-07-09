x = [];
u=1;
l=0;

for i = 1:size(raw_x,2)-1
  tmp = (raw_x(:,i)/700) * (u - l) - l;
  x = [x tmp];
end
tmp = (raw_x(:,size(raw_x,2))/400) * (u - l) - l;
x = [x tmp];

dlmwrite('x.csv', x, ';')

clear tmp i u l
