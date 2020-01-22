% load('PAAC_train50.mat')
% load('PAAC_train40.mat')
% load('PAAC_train30.mat')
% load('PAAC_train20.mat')
% load('PAAC_test50.mat')
% load('PAAC_test40.mat')
% load('PAAC_test20.mat')
% load('PAAC_test30.mat')
% csvwrite('PAAC_test30.csv',PAAC_test_30)
shu_SMOTE_PAAC_train50=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_train50.csv');
save  SMOTE_PAAC_train50  shu_SMOTE_PAAC_train50
shu_SMOTE_PAAC_train40=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_train40.csv');
save  SMOTE_PAAC_train40  shu_SMOTE_PAAC_train40
shu_SMOTE_PAAC_train30=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_train30.csv');
save  SMOTE_PAAC_train30  shu_SMOTE_PAAC_train30
shu_SMOTE_PAAC_train20=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_train20.csv');
save  SMOTE_PAAC_train20  shu_SMOTE_PAAC_train20
shu_SMOTE_PAAC_train10=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_train10.csv');
save  SMOTE_PAAC_train10  shu_SMOTE_PAAC_train10
shu_SMOTE_PAAC_test50=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_test50.csv');
save  SMOTE_PAAC_test50  shu_SMOTE_PAAC_test50
shu_SMOTE_PAAC_test40=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_test40.csv');
save  SMOTE_PAAC_test40  shu_SMOTE_PAAC_test40
shu_SMOTE_PAAC_test30=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_test30.csv');
save  SMOTE_PAAC_test30  shu_SMOTE_PAAC_test30
shu_SMOTE_PAAC_test20=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_test20.csv');
save  SMOTE_PAAC_test20  shu_SMOTE_PAAC_test20
shu_SMOTE_PAAC_test10=xlsread('D:\ECM\PAAC_CSV_data\SMOTE_PAAC_test10.csv');
save  SMOTE_PAAC_test10  shu_SMOTE_PAAC_test10