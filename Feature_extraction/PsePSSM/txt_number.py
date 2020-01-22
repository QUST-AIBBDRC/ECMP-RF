# -*- coding: utf-8 -*-
"""
Created on Sun Jul  1 19:38:00 2018

@author: Administrator
"""
import numpy as np
data_p=[]
data_n=[]
with open('Training datasets  S-sulfenylation.txt','r') as file:
#with open('Independent testing datasets S-Sulfenylation sites.txt','r') as file:
     for line in file:
         tokens = line.strip().split('\t')
         sequence=tokens[2]
         data_p.append(sequence)
   
with open('Training datasets non- S-sulfenylation.txt','r') as file:
#with open('Independent testing datasets non-S-Sulfenylation sites.txt','r') as file:
     for line in file:
         tokens = line.strip().split('\t')
         sequence=tokens[2]
         data_n.append(sequence)
     
         
text = open('data_train.txt','w')
#text = open('data_test.txt','w')
for k in range(len(data_p)+len(data_n)):
    fasta=(data_p+data_n)[k]
    zifu='>000000'
    zifuchuan=zifu+str(k)
    text.write(zifuchuan +'\n')
    text.write(fasta+'\n')
    zifu=[]
    zifuchuan=[]
text .close()


t = open('label_train.txt','w')
#t = open('label_test.txt','w')
label1=np.ones((len(data_p),1))
label2=np.zeros((len(data_n),1))

for i in range(len(data_p)):
    zifu='000000'
    zifuchuan=zifu+str(i)+' '+str(int(label1[i]))
    t.write(zifuchuan +'\n')
    zifu=[]
    da1=[]
    
for j in range(len(data_n)):
    zifu='000000'
    zifuchuan=zifu+str(j+len(data_p))+' '+str(int(label2[j]))
    t.write(zifuchuan +'\n')
    zifu=[]
    da1=[]
t.close()
    



