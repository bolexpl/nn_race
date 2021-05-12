trainFileID = fopen('x.txt','r');
resultFileID = fopen('y.txt','r');
godotFileID = fopen('y_godot.txt','r');
matlabFileID = fopen('y_matlab.txt','r');

x=fscanf(trainFileID, '%f %f %f %f %f %f', [6 Inf])';
y=fscanf(resultFileID, '%f %f', [2 Inf])';
y_godot=fscanf(godotFileID, '%f %f', [2 Inf])';
y_matlab=fscanf(matlabFileID, '%f %f', [2 Inf])';

fclose(trainFileID);
fclose(resultFileID);
fclose(godotFileID);
fclose(matlabFileID);
clear trainFileID resultFileID godotFileID matlabFileID

