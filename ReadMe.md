##ECMP-RF

Prediction of extracellular matrix proteins by fusing multiple feature information, elastic net and Random Forest algorithm.

The experimental environment is: Windows Server 2012R2 Intel (R) Xeon (TM) CPU E5-2650 @ 2.30GHz 2.30GHz with 32.0GB of RAM, MATLAB2014a and Python3.6 programming implementation.

###ECMP-RF uses the following dependencies:
* MATLAB2014a
* python 3.6 
* numpy
* scipy
* scikit-learn


###Guiding principles:

**The data contains training dataset and testing dataset.

**Feature extraction:
   AD is the implementation of autocorrelation descriptor.
   EBGW is the implementation of encoding based on grouped weight.
   PsePSSM is the implementation of pseudo position specific scoring matrix.
   PseAAC is the implementation of pseudo amino acid composition.
   LD is the implementation of local descriptor.
   
**SMOTE:
   SMOTE_R_train_test.R is the implementation of SMOTE
  
** Feature selection:
   LOOCV_EN.py represents the elastic.
   LOOCV_KPCA.py represents KPCA.
   LOOCV_LASSO.py represents LASSO.
   LOOCV_PCA.py represents PCA.
   LOOCV_MI.py represents MI.
   LOOCV_LR_selection.py represents LR.
   LOOCV_FA.py represents FA.

** Classifier:
   LOOCV_AdaBoost.py is the implementation of AdaBoost.
   LOOCV_GBDT.py is the implementation of GBDT.
   LOOCV_LR.py is the implementation of LR.
   LOOCV_Naïve Bayes.py is the implementation of Naïve Bayes.
   LOOCV_RF.py is the implementation of RF.
   LOOCV_SVM.py is the implementation of SVM.
   
You can download the datasets from the corresponding website. After that, you should prepare the data used in the training code according to the steps below. 
Firstly, feature vectors are obtained by feature extraction. Then, the fused feature vector is processed by SMOTE.
We use the problem as an example. Problem is the balance data after training data set feature fusion and SMOTE processing.

For LOOCV_RF.py

Input: problem.csv

Output: result_problem.csv, ytest_problem.csv, yscore_problem.csv

The result_problem.csv contains seven evaluation indexes: acc, precision, npv, sensitivity, specificity, mcc, roc_auc



