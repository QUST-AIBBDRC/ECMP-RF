# -*- coding: utf-8 -*-
"""
Created on Sun May 13 17:01:11 2018

@author: Administrator
"""

import PSSMmaker

#PSSMMaker.command_pssm('E:\Blast\db\Cytoplasm_test.fasta','try_once.txt','pssm1.pssm')
proseq=r'D:\pythonPSSM\Fan1105'
outdir=r'D:\pythonPSSM\456'
PSSMmaker.pssm(proseq,outdir)
