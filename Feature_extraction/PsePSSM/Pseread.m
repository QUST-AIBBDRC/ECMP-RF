function [data2]=Pseread(i)        % [PSSM_1]=Pseread(i)
    name1=['pssm\'];             
    sign=[ '000000',num2str(i)];
    name2= strcat(sign,'.pssm');
    name=[name1,name2];
    fid{i}=importdata(name);
    statistic{i}=fid{i}.data;
    data1=statistic{i};
    H=isnan(data1(:,1));
    sign=find(H==1);
    L=min(sign);
    data2=data1(1:(L-1),1:20); 
   % data1=[];
end