
y_matlab = forward(x')';

err_godot = abs(y-y_godot);
err_matlab = abs(y-y_matlab);

err_godot = err_godot(:,1) + err_godot(:,2);
err_matlab = err_matlab(:,1) + err_matlab(:,2);

figure(1)
hold on
plot(err_godot(:,1),'r')
plot(err_matlab(:,1),'g')
hold off



figure(2)
hold on
plot(y_godot(:,1),'r')
plot(y_matlab(:,1),'g')
hold off

figure(3)
hold on
plot(y_godot(:,2),'r')
plot(y_matlab(:,2),'g')
hold off