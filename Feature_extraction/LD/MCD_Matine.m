clear all
clc
load Te0.mat
num1=numel(datasatS3)
% num1=5
MCD_Pa=[];
% MCD_Pb=[];
% MCD_Na=[];
% MCD_Nb=[];
%num1=10;
for i=1:num1
    
[M1]=MCDZD(datasatS3{i});
M=[M1];
MCD_Pa=[MCD_Pa;M];
clear M;clear M1;
end
% for i=1:num1
% [M1]=MCDZD(P_protein_b{i});
% M=[M1];
% MCD_Pb=[MCD_Pb;M];
% clear M;clear M1;
% end
% for i=1:num1
% [M1]=MCDZD(N_protein_a{i});
% M=[M1];
% MCD_Na=[MCD_Na;M];
% clear M;clear M1;
% end
% for i=1:num1
% [M1]=MCDZD(N_protein_b{i});
% M=[M1];
% MCD_Nb=[MCD_Nb;M];
% clear M;clear M1;
% end
% data_MCD=[[MCD_Pa,MCD_Pb];[MCD_Nb,MCD_Na]];
data_Te0_MCD=[MCD_Pa];
% data_MCD=[[ones(1458,1);zeros(1458,1)],data_MCD];
save data_Te0_MCD_GBM.mat data_Te0_MCD
% save MCD_Matine.mat MCD_Pa MCD_Pb MCD_Na MCD_Nb
