function [x] = nn_norm(rawx)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x = [];
u=1;
l=0;

for i = 1:size(rawx,2)-1
  tmp = (rawx(:,i)/700) * (u - l) - l;
  x = [x tmp];
end
tmp = (rawx(:,size(rawx,2))/400) * (u - l) - l;
x = [x tmp];

end

