import os
import csv
import numpy as np
import pandas as pd

# Set the path for the directory containing the CSV files
pathName = os.getcwd()+'D:\\TUe\\Q2\\Seminar Process Analytics\\Reproduce Experimental Results\\Process-Discovery-over-unordered-streams-master\\out\\' 

# Initialize two empty DataFrames for storing mean and last accuracy values
col = []
index = np.arange(10,100,10)
avg_df = pd.DataFrame(index=index, columns=col)
avg_df = avg_df.fillna(0) # Fill with zeros instead of NaNs
last_globalDFG_accuracy =  pd.DataFrame(index=index, columns=col)
last_globalDFG_accuracy = last_globalDFG_accuracy.fillna(0)

# Loop over the window sizes (10 to 60, with a step size of 10)
for window_size in range(10, 70, 10):
    # Loop over the percentages (10 to 90, with a step size of 10)
    for percentage in range(10, 100, 10):
        # Generate the filename for the current window size and percentage
        filename="baselines.csv-GlobalDFG-Window-Length"+str(window_size)+".txt compared to s"+str(percentage)+".csv-GlobalDFG-Window-Length"+str(window_size)+".txt.csv"
        # Read the contents of the current file into a temporary DataFrame
        tmp=pd.read_csv(pathName+filename) 
        tmp.col = ['time', 'accuracy']
        # Store the mean accuracy in the avg_df DataFrame
        avg_df.at[percentage, window_size]= tmp["accuracy"].mean()
        # Store the last accuracy in the last_globalDFG_accuracy DataFrame
        last_globalDFG_accuracy.at[percentage, window_size]= tmp["accuracy"].iloc[-1]

# Loop over the percentages (10 to 90, with a step size of 10) for the speculative files
for percentage in range(10, 100, 10):
    # Generate the filename for the current percentage
    filename="baselines.csv-GlobalDFG-Speculative.txt compared to s"+str(percentage)+".csv-GlobalDFG-Speculative.txt.csv"
    # Read the contents of the current file into a temporary DataFrame
    tmp=pd.read_csv(pathName+filename) 
    tmp = tmp.iloc[1:]
    tmp.col = ['time', 'accuracy']
    # Store the mean accuracy in the avg_df DataFrame
    avg_df.at[percentage, 70] = tmp["accuracy"].mean()
    # Store the last accuracy in the last_globalDFG_accuracy DataFrame
    last_globalDFG_accuracy.at[percentage, 70]= tmp['accuracy'].iloc[-1]

# Save the two output DataFrames as CSV files
last_globalDFG_accuracy.to_csv(pathName+'MySDataLastDFG.csv')
avg_df.to_csv(pathName+'MySDataAverageDFG.csv')
