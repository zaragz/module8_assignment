# Module 8: Step 1–3
# Dataset columns: Name, Age, Sex, Grade

# Install/load packages
if (!require(plyr)) install.packages("plyr")
library(plyr)

# STEP 1: Import dataset
# Option A (recommended): choose file interactively
students <- read.table(file.choose(), header = TRUE, sep = ",", stringsAsFactors = FALSE)

# Option B: if you want to hardcode a path, replace with your real file path
# students <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",", stringsAsFactors = FALSE)

# STEP 1: mean Grade using Sex as the category (plyr)
students_gendered_mean <- ddply(
  students,
  "Sex",
  transform,
  Grade.Average = mean(Grade)
)

# Write resulting output to a file (CSV)
write.table(students_gendered_mean, "Students_Gendered_Mean.csv", sep = ",", row.names = FALSE)

# STEP 2: Filter names containing letter "i" (case-insensitive)
i_students <- subset(students, grepl("i", Name, ignore.case = TRUE))

# Create a file that lists ONLY the names separated by commas (one line)
writeLines(paste(i_students$Name, collapse = ","), "i_names.csv")

# (Optional but clean) also save the filtered dataset as a CSV table
write.csv(i_students, "i_students_filtered.csv", row.names = FALSE)

# STEP 3: Write the filtered data set to CSV (this satisfies “convert it to CSV file”)
write.table(i_students, "DataSubset.csv", sep = ",", row.names = FALSE)

# Quick checks
print(head(students))
print(table(students$Sex))
print(unique(students_gendered_mean[, c("Sex", "Grade.Average")]))
print(i_students$Name)
