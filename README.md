# CleanTidyData
Course Project for Coursera Getting and Cleaning Data  

This repo contains:
* a R script file (run_analysis.R)
* a Code Book  

## R script  
The R script uses the [UCI HAR Dataset]  (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) to create a clean tidy dataset of variable means for each subject doing each of six different activities. The output dataset is saved as the file "summary.txt"  
The script requires the dataset to be downloaded and unzipped within the UCI HAR Dataset directory within your R working directory. The dataset can be downloaded from [here] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  
The script also uses the R packages plyr and dplyr. To install these packages the following R code can be used:  
```{R}
  install.packages("plyr")
  install.packages("dplyr")  
```

#### To run the R script  
* Copy run_analysis.R to your working directory
* Run the following R code
```{R}
  source("run_analysis.R")
```

#### To view the summary dataset  
* Read in the saved dataset using:
```{R}
  read.table("summary.txt", header = TRUE)  
```

### What the R script does  
1. Checks that the required UCI HAR Dataset is within your working directory
2. Reads in the data from the test and train sections of the experiment and joins them to create one dataset
3. Selects the mean and standard deviation of each of the different variables measured in the experiment (Note: this does not include the mean frequency of each variable or the summary angles, as although these contain a mean, they are not the mean required by the instructions)
4. Adds the activity as a descriptive label and the subject identifier number to the dataset
5. Adds descriptive variable labels
6. Creates a summary dataset of the mean of each variable for each activity and each subject
7. Writes the dataset to the file "summary.txt" within the UCI HAR dataset directory  

## Code Book  
This contains:
* information about the output dataset
* the variables and their units
