trainFileID = fopen('train_file.txt','r');
resultFileID = fopen('result_file.txt','r');
testTrainFileID = fopen('test_train_file.txt','r');
testResultFileID = fopen('test_result_file.txt','r');

train_data=fscanf(trainFileID, '%f %f %f %f %f %f', [6 Inf])';
result_data=fscanf(resultFileID, '%f %f', [2 Inf])';
test_train_data=fscanf(testTrainFileID, '%f %f %f %f %f %f', [6 Inf])';
test_result_data=fscanf(testResultFileID, '%f %f', [2 Inf])';

fclose(trainFileID);
fclose(resultFileID);
fclose(testTrainFileID);
fclose(testResultFileID);
clear trainFileID resultFileID testTrainFileID testResultFileID ans

