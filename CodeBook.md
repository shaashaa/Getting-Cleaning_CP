# Variables used in run_analysis.R

* x_train : downloaded training set
* y_train : downloaded training labels
* subject_train  : downloaded training subject info
* x_test : downloaded test set
* y_test : downloaded test labels
* subject_test : downloaded test subject info
* x : combined training and test set 
* y : combined training and test labels 
* subject : combined training and test subject info 
* All : combined data set, labels and subject
* features : downloaded features list
* x_meanstd : Extracted mean and std data set
* activity_labels : downloaded activity labels
* All_meanstd : combined mean & std set with labels and subject
* Tidy_Average : tidy data set with mean of each variable in the data set for each activity and subject

# Files created
Tidy_Average.txt : text file created for tidy data set

# Transformations done to get the tidy data set
* The Training and the test data set, labels, activity are combined to one set
* The data set column names are labelled using features list
* The activity is replaced by activity labels
* The subject and the activity columns names are labelled
* Extracted the mean and std data set only and summarised the mean for each activity and subject
