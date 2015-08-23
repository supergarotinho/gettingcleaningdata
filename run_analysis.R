## Before using this script, make sure that the current dir is the "UCI HAR Dataset" folder.
## In this dir, should be the test and train folders for the UCI HAR Dataset.

if (!file.exists("features.txt") | !file.exists("test/X_test.txt") | !file.exists("train/X_train.txt")) {
    stop("Before using this function, make sure that the current dir is the \"UCI HAR Dataset\" folder. In this dir, should be:
    1. The test and train folders for the UCI HAR Dataset.
    2. The features list file: features.txt")
}

featureTable = read.table("features.txt", sep = " ",blank.lines.skip = TRUE)

## Extract the list of features to read the data frame
featureNames = featureTable[,2]

## Load the data sets and select only the mean and std features
## PS: I choosed to subset the features before merging the data sets cause it is more memory efficient
selectedFeatures = subset(featureTable,grepl("mean\\(\\)",featureNames) | grepl("std\\(\\)",featureNames))[,2]

## Treat the featurenames removing special chars
featureNames = gsub("-","_",featureNames)
featureNames = gsub("\\(\\)","",featureNames)
featureNames = gsub(",","_",featureNames)
selectedFeatures = gsub("-","_",selectedFeatures)
selectedFeatures = gsub("\\(\\)","",selectedFeatures)
selectedFeatures = gsub(",","_",selectedFeatures)

trainData = read.table("train/X_train.txt",col.names = featureNames)[,selectedFeatures]
testData = read.table("test/X_test.txt",col.names = featureNames)[,selectedFeatures]

## Load the activity and subject values. Merge then with the respective data set.
trainData$Subject = read.table("train/subject_train.txt",blank.lines.skip = TRUE)[,1]
trainData$Activity = read.table("train/y_train.txt",blank.lines.skip = TRUE)[,1]
testData$Subject = read.table("test/subject_test.txt",blank.lines.skip = TRUE)[,1]
testData$Activity = read.table("test/y_test.txt",blank.lines.skip = TRUE)[,1]

## Merge the train and test data sets
dataFinal = rbind2(trainData,testData)

## Uses descriptive activity names to name the activities in the data set
activityLabels = read.table("activity_labels.txt",blank.lines.skip = TRUE)[,2]
dataFinal$Activity = sapply(dataFinal$Activity, function(element) activityLabels[element])

## Changing feature names to more descriptive ones
names(dataFinal) = gsub("^t", "Time", names(dataFinal))
names(dataFinal) = gsub("^f", "Frequency", names(dataFinal))
names(dataFinal) = gsub("Acc([_A-Z])", "Acceleration\\1", names(dataFinal))
names(dataFinal) = gsub("Gyro", "AngularVelocity", names(dataFinal))
names(dataFinal) = gsub("Mag", "Magnitude", names(dataFinal))

## Generate a tidy data set with the average of each variable for each activity and each subject.
library(dplyr)
columnsToGroup = c("Subject","Activity")
columnsToGroup = lapply(columnsToGroup, as.symbol)
resultData = dataFinal %>%
    group_by_(.dots=columnsToGroup) %>%
    summarise_each(funs(mean))

## Export the tidy data set
write.table(resultData,"tidyDataSet.txt",row.names = FALSE, append = FALSE )