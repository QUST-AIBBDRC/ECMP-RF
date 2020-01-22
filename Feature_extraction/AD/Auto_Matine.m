clear all
clc
load Tr0.mat
load property
OriginData=property;
OriginData=zscore(OriginData);
OriginData=OriginData';
num1=numel(datasatS1);%shujv
lag=30;%canshu
Auto_Pa=[];
Auto_Pb=[];
Auto_Na=[];
Auto_Nb=[];
for i=1:num1
[M1]=Auto1(datasatS1{i},OriginData,lag);%shujv
[M2]=Auto2(datasatS1{i},OriginData,lag);%shujv
[M3]=Auto3(datasatS1{i},OriginData,lag);%shujv
M=[M1,M2,M3];
Auto_Pa=[Auto_Pa;M];
clear M;clear M1 M2 M3;
end
% for i=1:num1
% [M1]=Auto1(datasat{i},OriginData,lag);
% [M2]=Auto2(datasat{i},OriginData,lag);
% [M3]=Auto3(datasat{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Pb=[Auto_Pb;M];
% clear M;clear M1 M2 M3;
% end
% for i=1:num1
% [M1]=Auto1(N_protein_a{i},OriginData,lag);
% [M2]=Auto2(N_protein_a{i},OriginData,lag);
% [M3]=Auto3(N_protein_a{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Na=[Auto_Na;M];
% clear M;clear M1 M2 M3;
% end
% for i=1:num1
% [M1]=Auto1(N_protein_b{i},OriginData,lag);
% [M2]=Auto2(N_protein_b{i},OriginData,lag);
% [M3]=Auto3(N_protein_b{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Nb=[Auto_Nb;M];
% clear M;clear M1 M2 M3;
% end
shuAuto30_train_N=[Auto_Pa];
% Auto_matine=[[ones(410,1);zeros(4464,1)],Auto_matine];
save Auto30_train_N.mat shuAuto30_train_N














% clear all
% clc
% load Matine_Data.mat
% load property
% OriginData=property;
% OriginData=zscore(OriginData);
% OriginData=OriginData';
% num1=numel(P_protein_a);
% lag=11;
% Auto_Pa=[];
% Auto_Pb=[];
% Auto_Na=[];
% Auto_Nb=[];
% for i=1:num1
% [M1]=Auto1(P_protein_a{i},OriginData,lag);
% [M2]=Auto2(P_protein_a{i},OriginData,lag);
% [M3]=Auto3(P_protein_a{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Pa=[Auto_Pa;M];
% clear M;clear M1 M2 M3;
% end
% for i=1:num1
% [M1]=Auto1(P_protein_b{i},OriginData,lag);
% [M2]=Auto2(P_protein_b{i},OriginData,lag);
% [M3]=Auto3(P_protein_b{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Pb=[Auto_Pb;M];
% clear M;clear M1 M2 M3;
% end
% for i=1:num1
% [M1]=Auto1(N_protein_a{i},OriginData,lag);
% [M2]=Auto2(N_protein_a{i},OriginData,lag);
% [M3]=Auto3(N_protein_a{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Na=[Auto_Na;M];
% clear M;clear M1 M2 M3;
% end
% for i=1:num1
% [M1]=Auto1(N_protein_b{i},OriginData,lag);
% [M2]=Auto2(N_protein_b{i},OriginData,lag);
% [M3]=Auto3(N_protein_b{i},OriginData,lag);
% M=[M1,M2,M3];
% Auto_Nb=[Auto_Nb;M];
% clear M;clear M1 M2 M3;
% end
% Auto_matine=[[Auto_Pa,Auto_Pb];[Auto_Nb,Auto_Na]];
% Auto_matine=[[ones(1458,1);zeros(1458,1)],Auto_matine];
% save data_Matine_Auto_lag11_exchange.mat Auto_matine
% save Auto_Matine_lag11.mat Auto_Pa Auto_Pb Auto_Na Auto_Nb










