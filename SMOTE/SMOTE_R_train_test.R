library(DMwR)
require(xgboost)
require(methods)


setwd("D:/ECM/first_data")
data_train = read.csv("ECMDA_Tr.csv",header = F)
data_train$V1=factor(data_train$V1)
train_data_SMOTEdata <- SMOTE(V1~.,data_train,perc.over =600,perc.under=116.7)
jishu<-table(train_data_SMOTEdata$V1)
write.csv(train_data_SMOTEdata,file='SMOTE2870ECMDA_Tr.csv')

setwd("D:/ECM")
data_test<- read.csv("shuECMDA_test.csv",header = F)
data_test$V1=factor(data_test$V1)
test_SMOTEdata <- SMOTE(V1~.,data_test,perc.over =300,perc.under=133.5)
test_jishu<-table(test_SMOTEdata$V1)
write.csv(test_SMOTEdata,file='SMOTE_ECMDA_test.csv')