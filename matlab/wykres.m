res = result1;
figure(1)
hold on
plot(y(:,1),'b')
plot(res(:,1),'r')
plot(y(:,2),'g')
plot(res(:,2),'k')
legend('1 y', '1 result', ...
    '2 y', '2 result')
title('oba wyjścia')
grid
hold off

figure(2)
hold on
plot(y(:,1),'b')
plot(res(:,1),'r')
legend('1 y', '1 result')
title('pierwsze wyjście')
grid
hold off
figure(3)
hold on
plot(y(:,2),'g')
plot(res(:,2),'k')
legend('2 y', '2 result')
title('pierwsze wyjście')
grid
hold off

clear res
% b     blue
% g     green
% r     red
% c     cyan
% m     magenta
% y     yellow
% k     black


