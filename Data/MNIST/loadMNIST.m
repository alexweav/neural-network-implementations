#addpath MNIST_Data;
#warning("off", "Octave:load-file-in-path");
#warning("off", "Octave:fopen-file-in-path");
#warning("off", "Octave:recursive-path-search");
printf("Preparing training data 1...\n")
load('train_classes1.mat');
load('train_data1.mat');
x_1 = train_data1;
train_classes1(train_classes1 == 0) = 10;
y_1 = expandOutputValues(train_classes1, 10);
clear train_data1;
clear train_classes1;

printf("Preparing training data 2...\n")
load('train_classes2.mat');
load('train_data2.mat');
x_2 = train_data2;
train_classes2(train_classes2 == 0) = 10;
y_2 = expandOutputValues(train_classes2, 10);
clear train_data2;
clear train_classes2;

printf("Preparing training data 3...\n")
load('train_classes3.mat');
load('train_data3.mat');
x_3 = train_data3;
train_classes3(train_classes3 == 0) = 10;
y_3 = expandOutputValues(train_classes3, 10);
clear train_data3;
clear train_classes3;

printf("Preparing training data 4...\n")
load('train_classes4.mat');
load('train_data4.mat');
x_4 = train_data4;
train_classes4(train_classes4 == 0) = 10;
y_4 = expandOutputValues(train_classes4, 10);
clear train_data4;
clear train_classes4;

printf("Preparing training data 5...\n")
load('train_classes5.mat');
load('train_data5.mat');
x_5 = train_data5;
train_classes5(train_classes5 == 0) = 10;
y_5 = expandOutputValues(train_classes5, 10);
clear train_data5;
clear train_classes5;

printf("Preparing cval data...\n")
load('val_classes.mat');
load('val_data.mat');
x_val = val_data;
val_classes(val_classes == 0) = 10;
y_val = expandOutputValues(val_classes, 10);
clear val_data;
clear val_classes;

printf("Preparing test data...\n")
load('test_classes1.mat');
load('test_data1.mat');
load('test_classes2.mat');
load('test_data2.mat');
x_test1 = test_data1;
x_test2 = test_data2;
test_classes1(test_classes1 == 0) = 10;
test_classes2(test_classes2 == 0) = 10;
y_test1 = expandOutputValues(test_classes1, 10);
y_test2 = expandOutputValues(test_classes2, 10);
clear test_data1;
clear test_data2;
clear test_classes1;
clear test_classes2;