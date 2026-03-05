# module8_assignment plyr Mean and Data Filtering in R

## Overview
This project was completed for **Module 8** and demonstrates basic data manipulation in **R**.  
The assignment focuses on importing a dataset, calculating grouped summary statistics using the **plyr** package, filtering observations based on a condition, and exporting the results to files.

The dataset contains the following variables:

- **Name** – Student name  
- **Age** – Student age  
- **Sex** – Student gender (Male or Female)  
- **Grade** – Student grade  

The analysis calculates the **average grade by sex** and filters students whose names contain the letter **“i.”**

---

## Steps Performed

### 1. Import Dataset
The dataset was imported into R using `read.table()`.

```r
students <- read.table(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)
