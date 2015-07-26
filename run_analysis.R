## Check data is present in working directory
if(!file.exists("UCI HAR Dataset")){
  stop("UCI HAR Dataset not present in working directory")
}
## Move to UCI HAR Dataset
setwd("./UCI HAR Dataset")
## Read in the test data
test_data <- read.table("./test/X_test.txt")
## Read in the train data
train_data <- read.table("./train/X_train.txt")
## Combine test and train data
data <- rbind(test_data, train_data)
## Select means & stds of variables
data <- data[, c(1:6, 41:46, 81:86, 121:126, 161:166,
                    201:202, 214:215, 227:228, 240:241, 
                    253:254, 266:271, 345:350, 424:429,
                    503:504, 516:517, 529:530, 542:543)]
## Create subject column
test_subject <- read.table("./test/subject_test.txt")
train_subject <- read.table("./train/subject_train.txt")
subject <- rbind(test_subject, train_subject)
## Create activity column
test_activity <- read.table("./test/y_test.txt")
train_activity <- read.table("./train/y_train.txt")
activity <- rbind(test_activity, train_activity)
##Convert activities to descriptive activity names
activity[, 1] <- factor(activity[, 1], labels = c("Walking", 
                      "Walking upstairs", "Walking downstairs",
                      "Sitting", "Standing", "Lying down"))
## Add activity and subject to data
dataset <- cbind(activity, subject, data)
## Add descriptive variable names
colnames(dataset) <- c("Activity", "Subject", 
                       "mean time domain body acceleration in X",
                       "mean time domain body acceleration in Y",
                       "mean time domain body acceleration in Z",
                       "std time domain body acceleration in X",
                       "std time domain body acceleration in Y",
                       "std time domain body acceleration in Z",
                       "mean time domain gravity acceleration in X",
                       "mean time domain gravity acceleration in Y",
                       "mean time domain gravity acceleration in Z",
                       "std time domain gravity acceleration in X",
                       "std time domain gravity acceleration in Y",
                       "std time domain gravity acceleration in Z",
                       "mean time domain body linear acceleration in X",
                       "mean time domain body linear acceleration in Y",
                       "mean time domain body linear acceleration in Z",
                       "std time domain body linear acceleration in X",
                       "std time domain body linear acceleration in Y",
                       "std time domain body linear acceleration in Z",
                       "mean time domain body orientation in X",
                       "mean time domain body orientation in Y",
                       "mean time domain body orientation in Z",
                       "std time domain body orientation in X",
                       "std time domain body orientation in Y",
                       "std time domain body orientation in Z",
                       "mean time domain body angular velocity in X",
                       "mean time domain body angular velocity in Y",
                       "mean time domain body angular velocity in Z",
                       "std time domain body angular velocity in X",
                       "std time domain body angular velocity in Y",
                       "std time domain body angular velocity in Z",
                       "mean time domain magnitude of body acceleration",
                       "std time domain magnitude of body acceleration",
                       "mean time domain magnitude of gravity acceleration",
                       "std time domain magnitude of gravity acceleration",
                       "mean time domain magnitude of body linear acceleration",
                       "std time domain magnitude of body linear acceleration",
                       "mean time domain magnitude of body orientation",
                       "std time domain magnitude of body orientation",
                       "mean time domain magnitude of body angular velocity",
                       "std time domain magnitude of body angular velocity",
                       "mean frequency domain body acceleration in X",
                       "mean frequency domain body acceleration in Y",
                       "mean frequency domain body acceleration in Z",
                       "std frequency domain body acceleration in X",
                       "std frequency domain body acceleration in Y",
                       "std frequency domain body acceleration in Z",
                       "mean frequency domain body linear acceleration in X",
                       "mean frequency domain body linear acceleration in Y",
                       "mean frequency domain body linear acceleration in Z",
                       "std frequency domain body linear acceleration in X",
                       "std frequency domain body linear acceleration in Y",
                       "std frequency domain body linear acceleration in Z",
                       "mean frequency domain body orientation in X",
                       "mean frequency domain body orientation in Y",
                       "mean frequency domain body orientation in Z",
                       "std frequency domain body orientation in X",
                       "std frequency domain body orientation in Y",
                       "std frequency domain body orientation in Z",
                       "mean frequency domain magnitude of body acceleration",
                       "std frequency domain magnitude of body acceleration",
                       "mean frequency domain magnitude of body linear acceleration",
                       "std frequency domain magnitude of body linear acceleration",
                       "mean frequency domain magnitude of body orientation",
                       "std frequency domain magnitude of body orientation",
                       "mean frequency domain magnitude of body angular velocity",
                       "std frequency domain magnitude of body angular velocity")
## Call plyr and dplyr packages
library(plyr)
library(dplyr)
## Convert data frame
full_data <- tbl_df(dataset)
## Group by activity and subject and summarise as means
summary_data <- full_data %>% group_by(Activity, Subject) %>% summarise_each(funs(mean))
## Write summary table to file
write.table(summary_data, file = "summary.txt", row.names = FALSE)
