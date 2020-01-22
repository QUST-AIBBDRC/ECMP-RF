clear all
clc
lambda=30;
%%%%%找出数据集的序列
%求str=
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
for i=1:firstnum-1
paac_sN30(i,:)=PAAC(sequence(i,1:lensec(i)),lambda);
end
save  Paac30testN.mat  paac_sN30


