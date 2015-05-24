library(dplyr)

#Reading training data set
x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

#Reading test data set
x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

#Merging training and test data set into one data set
x <- bind_rows(x_train, x_test)
y <- bind_rows(y_train, y_test)
subject <- bind_rows(subject_train, subject_test)
All <- bind_cols(subject, y, x)

#Extracting only the measurements on the mean and standard deviation for each measurement
features <- read.table("./UCI HAR Dataset/features.txt")
colnames(x) <- (features[,2])
x_meanstd <- x[,grep("mean\\(\\)|std\\(\\)", colnames(x))]

#Naming the activies in the data set using descripive activity name
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
y[ ,1] <- activity_labels[t(y[ ,1]), 2]

#Labelling the data set with descriptive variable names
colnames(y) <- "Activity"
colnames(subject) <- "Subject"
All_meanstd <- bind_cols(subject, y, x_meanstd)

#Creating a tidy data set with the average of each variable for each activity and each subject
Tidy_Average <- All_meanstd %>% group_by(Subject, Activity) %>% summarise_each(funs(mean))

#Writing Tidy_Average data set into a txt file
write.table(Tidy_Average, "./Tidy_Average.txt", row.names=FALSE)
