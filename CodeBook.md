each piece of data in the data_mean_std dataset is a 66-variable vector. these variables are the are the mean and standard deviation (denoted as -mean() and -std()) of the following :

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The data is also grouped by Activity and Subject. 
Activity: the activity being performed. Can be LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS or WALKING_UPSTAIRS
Subject: the test subject's ID. It is an integer from 1 to 30.

The data represents the average values of the variables for for different combinations of Activity and Subject.
As there are 6 activities and 30 subjects, there are a total of 180 such combinations, each corresponding to one row in the dataset.

the transforms applied to the original dataset are as follows:

merge the training data (X_train.txt) and test data (X_test.txt) by row. the result is the data_mean_std dataframe.
extract columns corresponding to mean and standard deviation calculations. the locations and names of these columns are provided by features_info.txt. 
merge the training labels (y_train.txt) and test labels (y_test.txt) by row. These are integers from 1 to 6 that tell us which of the 6 activities the subject has performed for each sample.
convert the labels to their corresponding activity types to create a set of text labels.
merge the text labels into data_mean_std.
merge the subject IDs for the training set (subject_train.txt) and test set (subject_test.txt), then merge into data_mean_std. The subject IDs tell us who performed the activity for each sample. 
give each column names, which are extracted from features_info.txt.
group data_mean_std by Activity and Subject.
take the mean of each variable across every Activity/Subject pair and save the result to the avg_mean_std dataframe.