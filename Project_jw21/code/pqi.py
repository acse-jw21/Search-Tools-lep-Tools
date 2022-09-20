#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Aug  2 18:23:16 2022

@author: JINCHENG WANG , GITHUBID: JW21
"""
import os
import matplotlib.pyplot as plt
import tkinter
import tkinter.messagebox
import pandas as pd

def pqi(mental,ligand):
    '''Generate the pqi files by the davies function's output files.
    
    The mental and ligand comes from user input.'''
    dirlast = os.path.abspath('..')
    #Get the path.
    tabel =dirlast+ '/davies'+'/'+mental+ligand+ '.csv'
    template = dirlast+ '/template'+'/example'+ '.pqi'
    df = pd.read_csv(tabel)
    name = []
    ionic = [0.005,0.01,0.05,0.15,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1]
    logb= []
     #Get the new logb on full dataset of ionic strength.
    for i in range(len(df['Reaction'])):
        r = df.iloc[i,0].strip('\n')
        name.append(r)
        logbs = []
        for j in range(2,15):
           logbs.append(df.iloc[i,j])
        logb.append(logbs)
    print(logb)
    print(name)
    print(len(df['Reaction']))
    # Generate pqi files in turn.
    for ion in range(len(ionic)):
      #Set the generate files' path.
     pqi =dirlast+ '/pqi'+'/'+ str(ionic[ion])+mental+ ligand+ '.pqi' 
     f = open(template,'r')
     lines = f.readlines()
     outputs = open(pqi, 'w')
      #Set the write bool , which can judge the programm to copy the template or make change of it.
     write = True
      #Begin to write the pqi files.
     outputs.write("DATABASE "+ dirlast+"/phreeqc/database/minteq.v4.dat")
     outputs.write("\n")
     for i in range(1,len(lines)):
            #When meet the part need to change, put our new text and stop copy the template.
            
           if 'SOLUTION_MASTER_SPECIES' in lines[i]:
               outputs.write("SOLUTION_MASTER_SPECIES")
               outputs.write("\n")
               write = False 
               master = master =dirlast+ '/davies'+'/'+ 'MASTER_SPECIES' + mental +ligand +'.txt'
               f = open(master,'r')
               liness = f.readlines()
               for l in liness:
                outputs.write(l)
               outputs.write("END")
               outputs.write("\n")
               outputs.write("   ")
               outputs.write("\n")
               outputs.write("SOLUTION_SPECIES")
               outputs.write("\n")
               for m in range(len(name)):
                   outputs.write(name[m])
                   outputs.write("\n")
                   outputs.write("log_k		"+str(logb[m][ion]))
                   outputs.write("\n")
               outputs.write("END")
               outputs.write("\n")
               outputs.write("   ")
               outputs.write("\n")
           # Define the part we need to update is over, set the write to ture, continue to copy the template.
           if 'SOLUTION ' in lines[i]:
               write = True
           if 'Zns' in lines[i]:
               write = False
               new = lines[i].replace('Zns',mental)
               outputs.write(new)
               new2 = lines[i+1].replace('Citrates',ligand)
               outputs.write(new2)
               outputs.write("END")
               outputs.write("\n")
               outputs.write("\n")
           if 'Cl' in lines[i]:
               write = False
               new = lines[i].replace('0.1',str(ionic[ion]))
               outputs.write(new)
           if 'Na' in lines[i]:
               write = False
               new = lines[i].replace('0.1',str(ionic[ion]))
               outputs.write(new)
    
              
            # If write is true, continue copy from the template.
           if write == True:
            outputs.write(lines[i])
     outputs.close() 
