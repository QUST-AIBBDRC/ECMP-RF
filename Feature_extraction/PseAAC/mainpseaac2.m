clear all
clc
lambda=30;
%%%%%�ҳ����ݼ�������
%��str=
%%%%%    
fid=fopen('testN.txt');
string=fscanf(fid,'%s'); %�ļ�����
%ƥ����ַ���
firstmatches=findstr(string,'>')+8;%��ʼλ��
endmatches=findstr(string,'>')-1;
firstnum=length(firstmatches); %firstnum=endnum���е�����
endnum=length(endmatches);
  for k=1:firstnum-1
    j=1;
    lensec(k)=endmatches(k+1)-firstmatches(k)+1;%ÿ�����еĳ���
   for mm=firstmatches(k):endmatches(k+1)
        sequence(k,j)=string(mm); %�ַ�����
        j=j+1;
   end
   
  end
for i=1:firstnum-1
paac_sN30(i,:)=PAAC(sequence(i,1:lensec(i)),lambda);
end
save  Paac30testN.mat  paac_sN30


