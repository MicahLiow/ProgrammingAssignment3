This R Script acts on the dataset found in archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. 

the transforms applied to the original dataset are as follows:

merge the training data (X_train.txt) and test data (X_test.txt) by row. the result is the data_mean_std dataframe.
extract columns corresponding to mean and standard deviation calculations. the locations and names of these columns are provided by features_info.txt. 
merge the training labels (y_train.txt) and test labels (y_test.txt) by row. These are integers from 1 to 6 that tell us which of the 6 activities the subject has performed for the sample.
convert the labels to their corresponding activity types to create a set of text labels.
merge the text labels into data_mean_std.
merge the subject IDs for the training set (subject_train.txt) and test set (subject_test.txt), then merge into data_mean_std. The subject IDs tell us which subject performed the activity for the sample. 
give each column names, which are extracted from features_info.txt.
group data_mean_std by Activity and Subject.
take the mean of each variable across every Activity/Subject pair and save the result to the avg_mean_std dataframe.

the output is a dataset avg_mean_std.txt.