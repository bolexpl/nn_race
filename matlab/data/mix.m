tmp=[x y];
tmp2 = tmp(randperm(size(tmp, 1)),:);

mix_x=tmp2(:,1:12);
mix_y=tmp2(:,13:14);

clear tmp tmp2