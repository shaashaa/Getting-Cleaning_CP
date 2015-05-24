# Getting-Cleaning_CP 

Data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The R script run_analysis.R,

* Reads the training and test data; And then the Training and the test data set, labels, activity are combined to one set
* Reads the festures data; The data set column names are labelled using features list; Extracts the columns which has mean() or std() in their names; 
* Reads the activities_label data; The activity is replaced by activity labels; 
* The subject and the activity columns names are labelled
* Merges all the data into one; 
* Summarised the mean for each activity and subject 
* Writing the obtained average data into a table (Tidy_Average.txt)

