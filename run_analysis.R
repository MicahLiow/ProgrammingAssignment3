#open and merge training and test sets
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")

data <- as.data.frame(rbind(train, test))

#open the features list, find all mean and std measurements, extract corresponding columns
features <- read.table("./UCI HAR Dataset/features.txt")
mean_std <- grep("(\\-mean\\(\\))|(\\-std\\(\\))", features[,2])
data_mean_std <- data[,mean_std]

#open activity labels, convert from activity code to activity name
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
labels_conversion <- read.table("./UCI HAR Dataset/activity_labels.txt")

labels <- rbind(train_labels, test_labels)
labels_text <- sapply(labels, function(x){labels_conversion[x,2]})

#open and merge subject IDs
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")

subjects <- rbind(train_subjects, test_subjects)

#bind data, activity type and subject IDs together

data_mean_std <- cbind(labels_text, subjects, data_mean_std)
colnames(data_mean_std) <- c("Activity", "Subject", features[mean_std, 2])

#create a data set from the average of each variable
library(dplyr)
grouped_data <- group_by(data_mean_std, Activity, Subject)
avg_mean_std <- summarise(grouped_data, across(everything(), mean), .groups = "keep")