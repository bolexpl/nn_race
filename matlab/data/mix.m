tmp=[x y];
tmp2 = tmp(randperm(size(tmp, 1)),:);

s=size(tmp2,2);
mixx=tmp2(:,1:s-2);
mixy=tmp2(:,s-1:s);

clear tmp tmp2 s