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