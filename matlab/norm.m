xprim = [];
u=1;
l=0;

for i = 1:5
  tmp = (x(:,i)/700) * (u - l) - l;
  xprim = [xprim tmp];
end
tmp = (x(:,6)/400) * (u - l) - l;
xprim = [xprim tmp];

clear tmp i u l
