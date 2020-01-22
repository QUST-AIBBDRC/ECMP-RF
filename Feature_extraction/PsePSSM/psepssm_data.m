clear all
clc
data1=[];
data2=[];
num=207;
hhh=importdata('v.txt');
for i=1:num%样本条数
    PSSM_data{i}=Pseread(i);
    data1=PSSM_data{i};
    H1=length(data1(:,1));
    hh=hhh{2*i};
    H2=length(hh);
    H_yeast4(i)=(H1==H2); 
    data1=[];H1=[];H2=[];
end
find(H_yeast4==0)
lamda=5;%psepssm参数
a=PSSM_data;
shuPpssm50_train_E=PsePSSM(a,lamda);
save Ppssm50_train_E.mat shuPpssm50_train_E