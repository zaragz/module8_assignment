# module8_assignment plyr Mean and Data Filtering in R

## Overview
This project demonstrates basic data manipulation in R using a student dataset. The dataset includes four variables: Name, Age, Sex, and Grade. The goal of the assignment was to import the dataset, calculate the average grade by sex using the plyr package, filter students whose names contain the letter "i", and export the results to files.

## Step 1 – Import Dataset and Calculate Mean
The dataset was imported into R using read.table(). After loading the data, the plyr package and the ddply() function were used to calculate the mean grade grouped by Sex.

Results:
- Average grade for Female students: 86.94  
- Average grade for Male students: 80.25  

This grouping allows us to compare grade averages between the two categories in the dataset.

## Step 2 – Filter Names Containing the Letter "i"
Next, the dataset was filtered to include only students whose names contain the letter "i". This was done using the subset() function together with grepl() so that both uppercase and lowercase letters are detected.

Examples of filtered names include:
Lauri, Leonie, Mikaela, Aiko, Tiffaney, Corina, Delfina, Ernestina, and Milo.

## Step 3 – Export Results
Finally, the results were written to files. The dataset containing the calculated grade averages was exported, and the filtered dataset was converted to a CSV file so it can be opened in other programs such as Excel.

## Files Included
module8_assignment.R – R script used for the analysis  
Assignment 6 Dataset.txt – original dataset  
Students_Gendered_Mean.csv – dataset with calculated grade averages by sex  
DataSubset.csv – filtered dataset containing names with the letter "i"

## Concepts Practiced
- Importing data into R
- Using the plyr package
- Calculating grouped summary statistics
- Filtering data using pattern matching
- Exporting data to CSV files
