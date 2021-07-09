tmp=[x y];
tmp2 = tmp(randperm(size(tmp, 1)),:);

s=size(tmp2,2);
mix_x=tmp2(:,1:s-2);
mix_y=tmp2(:,s-1:s);

clear tmp tmp2 s