trainFileID = fopen('data/x.txt','r');
resultFileID = fopen('data/y.txt','r');

x=fscanf(trainFileID, '%f %f %f %f %f %f', [6 Inf])';
y=fscanf(resultFileID, '%f %f', [2 Inf])';

fclose(trainFileID);
fclose(resultFileID);
clear trainFileID resultFileID

% writetable(x,'plik.csv')


