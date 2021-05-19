trainFileID = fopen('data/x.csv','r');
resultFileID = fopen('data/y.csv','r');

x=fscanf(trainFileID, '%f;%f;%f;%f;%f;%f', [6 Inf])';
y=fscanf(resultFileID, '%f;%f', [2 Inf])';

fclose(trainFileID);
fclose(resultFileID);
clear trainFileID resultFileID ans

% writetable(x,'plik.csv')


