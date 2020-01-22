clear all
clc
L=10;
%%%%%
fid=fopen('testN.txt');
string=fscanf(fid,'%s'); %文件输入
%匹配的字符串
firstmatches=findstr(string,'>')+8;%开始位置
endmatches=findstr(string,'>')-1;
firstnum=length(firstmatches); %firstnum=endnum序列的条数
endnum=length(endmatches);
  for k=1:firstnum-1
    j=1;
    lensec(k)=endmatches(k+1)-firstmatches(k)+1;%每条序列的长度
   for mm=firstmatches(k):endmatches(k+1)
        sequence(k,j)=string(mm); %字符序列
        j=j+1;
   end
   
  end
  %上面是提取每条序列，下面调用选用sequence(1,:)
for i=1:firstnum-1;
eb1(i,:)= ebgw1(sequence(i,1:lensec(i)),L);
eb2(i,:)= ebgw2(sequence(i,1:lensec(i)),L);
eb3(i,:)= ebgw3(sequence(i,1:lensec(i)),L);
end
ebgw_sN=[eb1,eb2,eb3];
% label1=ones(445,1);
% label2=zeros(4187,1);
% label=[label1;label2];
% shu_ebgw=[label,ebgw];
%   save neEBGW_z.mat 
% save neneEBGW_f.mat
save ebgw10testN.mat ebgw_sN

