## set working directory
setwd('d:/Coursera/ucdata/')

## load data.table library
library(data.table)

## import variable tables (training and testing)
xTrain <- read.table('./UCI HAR Dataset/train/x_train.txt')
xTest <- read.table('./UCI HAR Dataset/test/x_test.txt')

## import subject tables (training and testing)
sTrain <- read.table('./UCI HAR Dataset/train/subject_train.txt')
sTest <- read.table('./UCI HAR Dataset/test/subject_test.txt')

## import activity tables (training and testing)
yTrain <- read.table('./UCI HAR Dataset/train/y_train.txt')
yTest <- read.table('./UCI HAR Dataset/test/y_test.txt')

## merge training and testing variable tables by rows
xMerged <- rbind(xTrain, xTest)

## merge training and testing subject tables by rows
sMerged <- rbind(sTrain, sTest)

## set column name of subject table to be "subject"
setnames(sMerged, 'V1', 'subject')

## merge training and testing activity tables by rows
yMerged <- rbind(yTrain, yTest)

## set column name of activity table to be "activity"
setnames(yMerged, 'V1', 'activity')

## merge subject, activity, and variable tables in order by columns
mergedDS <- cbind(cbind(sMerged, yMerged), xMerged)

## export the merged dataset as required by part 1 of the course project
## dataset name: merged_dataset.txt
write.csv(mergedDS, 'merged_dataset.txt', row.names=FALSE, quote=FALSE)

## COMPLETED: 1. Merges the training and the test sets to create one data set.

## import feature table with auto string factors suppressed
f <- read.table('./UCI HAR Dataset/features.txt', stringsAsFactors=FALSE)

## set column names of the merged table from the third column to the last to be
## those (column V2 values) imported from features.txt
setnames(mergedDS, 3:563, f$V2)

## COMPLETED: 4. Appropriately labels the data set with descriptive variable names. 

## import activity description with auto string factors suppressed
a <- read.table('./UCI HAR Dataset/activity_labels.txt', stringsAsFactors=FALSE)

## map and convert the activity code in the merged table to be the corresponding
## activity description (column V2 values) imported from activity_labels.txt
mergedDS$activity <- a$V2[mergedDS$activity]

## COMPLETED: 3. Uses descriptive activity names to name the activities in the data set

## use regexpr 'mean\\(\\)|std\\(\\)' to filter the columns involved in either
## mean or standard deviation of the measurements from the merged table
ms_cols <- names(mergedDS)[grep('mean\\(\\)|std\\(\\)', names(mergedDS))]

## extract a subset, tidyDS, of the filtered by the regexpr above in addition to
## activity and subject
tidyDS <- mergedDS[c('activity', 'subject', ms_cols)]

## COMPLETED: 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

## load library reshape2
library(reshape2)

## melt tidyDS by activity and subject with the remaining mean or standard deviation
## columns as variables
tidyDSMolten <- melt(tidyDS, id=c('activity', 'subject'), measure.vars=ms_cols)

## calculate the mean of each variable by activity by subject
tidyDSAverage <- dcast(tidyDSMolten, activity + subject ~ variable, fun=mean)

## export the tidy dataset as required by part 5 of the course project
## dataset name: independent_tidy_dataset.txt
write.table(tidyDSAverage, file='independent_tidy_dataset.txt', row.names=FALSE, quote=FALSE)

## COMPLETED: 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
