n_x = [];
u=1;
l=0;

for i = 1:size(x,2)-1
  tmp = (x(:,i)/700) * (u - l) - l;
  n_x = [n_x tmp];
end
tmp = (x(:,size(x,2))/400) * (u - l) - l;
n_x = [n_x tmp];

dlmwrite('data/n_x.csv', n_x, ';')

clear tmp i u l
