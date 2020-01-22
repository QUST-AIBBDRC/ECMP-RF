# -*- coding: utf-8 -*-
"""
Created on Fri Jan 18 13:13:46 2019

@author: 85010
"""



import numpy as np 
import pandas as pd
from sklearn.model_selection import LeaveOneOut
from sklearn.metrics import roc_curve, auc
from sklearn.preprocessing import scale
import matplotlib.pyplot as plt
import utils.tools as utils
from sklearn.linear_model import ElasticNet, ElasticNetCV
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier

def zscore_scaler(data):
    data=scale(H)
    return data

def zeroMean(dataMat):
    meanVal=np.mean(dataMat,axis=0)#axis represents the obtained mean value by column
    stdVal=np.std(dataMat,axis=0)
    newData=dataMat-meanVal
    new_data=newData/stdVal
    return new_data,meanVal
def covArray(dataMat):
    #obtain the  covariance matrix
    covMat=np.cov(dataMat,rowvar=0)
    return covMat
def featureMatrix(dataMat):
    eigVals,eigVects=np.linalg.eig(np.mat(dataMat))
	#datermine the eigenvalue and eigenvector
    return eigVals,eigVects
def percentage2n(eigVals,percentage=0.99):  
    #percentage represents the rate of contribution
    sortArray=np.sort(eigVals)   #ascending sort 
    sortArray=sortArray[-1::-1]  #descending order
    arraySum=sum(sortArray)
    tmpSum=0
    num=0
    for i in sortArray:
        tmpSum+=i
        num+=1
        if tmpSum>=arraySum*percentage:
            return num



def elasticNet(data,label,alpha =np.array([0.01])):
    enetCV = ElasticNetCV(alphas=alpha,l1_ratio=0.1).fit(data,label)
    enet=ElasticNet(alpha=enetCV.alpha_, l1_ratio=0.1)
    enet.fit(data,label)
    mask = enet.coef_ != 0
    new_data = data[:,mask]
    return new_data,mask,enetCV.alpha_


data=pd.read_csv('ECM.csv',header=0)

data=np.array(data)
row=data.shape[0] 
column=data.shape[1]
index = [i for i in range(row)]
np.random.shuffle(index)#shuffle the index
index=np.array(index)
data_=data[index,:]
shu=data_[:,1:]
label=data_[:,0]
X=shu
y=label

data_1,mask,H=elasticNet(shu,label)
#data_1,mask=logistic_dimension(shu,label)
#data_1=pca(data)
#data_1=kernelPCA(data)
#data_1,mask=lassodimension(shu,label)
#data_1,mask=mutual_mutual(shu,label)


X=data_1
y=label
y[y==2]=0

loo = LeaveOneOut()
sepscores = []
y_score=np.ones((1,2))*0.5
y_class=np.ones((1,1))*0.5       
for train, test in loo.split(X):

    cv_clf = RandomForestClassifier(n_estimators=150, criterion='gini', max_depth=10, 
                                min_samples_split=2, min_samples_leaf=1, 
                                min_weight_fraction_leaf=0.0, max_features='auto', 
                                max_leaf_nodes=None,  bootstrap=True, 
                                oob_score=False, n_jobs=1, random_state=None, verbose=0, 
                                warm_start=False, class_weight=None)

    X_train=X[train]
    y_train=y[train] 
    X_test=X[test]
    y_test=y[test]
    y_sparse=utils.to_categorical(y)
    y_train_sparse=utils.to_categorical(y_train)
    y_test_sparse=utils.to_categorical(y_test)
    hist=cv_clf.fit(X_train, y_train)
    y_predict_score=cv_clf.predict_proba(X_test) 
    y_predict_class= utils.categorical_probas_to_classes(y_predict_score)
    y_score=np.vstack((y_score,y_predict_score))
    y_class=np.vstack((y_class,y_predict_class))
    cv_clf=[]
y_class=y_class[1:]
y_score=y_score[1:]
fpr, tpr, _ = roc_curve(y_sparse[:,0], y_score[:,0])
roc_auc = auc(fpr, tpr)
acc, precision,npv, sensitivity, specificity, mcc,f1 = utils.calculate_performace(len(y_class), y_class, y)
result=[acc,precision,npv,sensitivity,specificity,mcc,f1]
row=y_score.shape[0]

y_sparse=utils.to_categorical(y)
yscore_sum = pd.DataFrame(data=y_score)
yscore_sum.to_csv('yscore_EN.csv')
ytest_sum = pd.DataFrame(data=y_sparse)
ytest_sum.to_csv('ytest_EN.csv')
fpr, tpr, _ = roc_curve(y_sparse[:,0], y_score[:,0])
auc_score=result[6]
lw=2
plt.plot(fpr, tpr, color='darkorange',
lw=lw, label='EN ROC (area = %0.4f%%)' % auc_score)
plt.plot([0, 1], [0, 1], color='navy', lw=lw, linestyle='--')
plt.xlim([0.0, 1.05])
plt.ylim([0.0, 1.05])
plt.xlabel('False Positive Rate')
plt.ylabel('True Positive Rate')
plt.title('Receiver operating characteristic')
plt.legend(loc="lower right")
plt.show()
data_csv = pd.DataFrame(data=result)
data_csv.to_csv('result_EN.csv')

print("acc=%.4f%% " % (result[0]*100))
print("sensitivity=%.4f%% " % (result[3]*100))
print("specificity=%.4f%% " % (result[4]*100))
print("mcc=%.4f%%" % (result[5]*100))
print("auc=%.4f%%" % (result[6]*100))

 