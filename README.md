# Getting and Claning Data

Project files to the Programming Assigmnent of the Coursera Course.

This project consist on modifying the original data set available on: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The original dataset description and the code book describing the original variable names are here: [CodeBook][CodeBook]

### We have made the following modifications on the data set

1. We have merged the training and test data set
2. For each observation, we have selected only the columns that represents the measurement on the mean and standard deviation for each measurement.
3. We have added two additional data columns on the data set:
  1. The subject id in the column: Subject
  2. The activity name in the column: Activity
    * The possible activity values are:  WALKING; WALKING_UPSTAIRS; WALKING_DOWNSTAIRS; SITTING; STANDING; LAYING
5. We have changed the column names with more descriptive values following the table below:

| Old Name      | New Name      |
| ------------- | ------------- |
tBodyAcc-mean()-X|TimeBodyAcceleration-mean()-X
tBodyAcc-mean()-Y|TimeBodyAcceleration-mean()-Y
tBodyAcc-mean()-Z|TimeBodyAcceleration-mean()-Z
tBodyAcc-std()-X|TimeBodyAcceleration-std()-X
tBodyAcc-std()-Y|TimeBodyAcceleration-std()-Y
tBodyAcc-std()-Z|TimeBodyAcceleration-std()-Z
tGravityAcc-mean()-X|TimeGravityAcceleration-mean()-X
tGravityAcc-mean()-Y|TimeGravityAcceleration-mean()-Y
tGravityAcc-mean()-Z|TimeGravityAcceleration-mean()-Z
tGravityAcc-std()-X|TimeGravityAcceleration-std()-X
tGravityAcc-std()-Y|TimeGravityAcceleration-std()-Y
tGravityAcc-std()-Z|TimeGravityAcceleration-std()-Z
tBodyAccJerk-mean()-X|TimeBodyAccelerationJerk-mean()-X
tBodyAccJerk-mean()-Y|TimeBodyAccelerationJerk-mean()-Y
tBodyAccJerk-mean()-Z|TimeBodyAccelerationJerk-mean()-Z
tBodyAccJerk-std()-X|TimeBodyAccelerationJerk-std()-X
tBodyAccJerk-std()-Y|TimeBodyAccelerationJerk-std()-Y
tBodyAccJerk-std()-Z|TimeBodyAccelerationJerk-std()-Z
tBodyGyro-mean()-X|TimeBodyAngularVelocity-mean()-X
tBodyGyro-mean()-Y|TimeBodyAngularVelocity-mean()-Y
tBodyGyro-mean()-Z|TimeBodyAngularVelocity-mean()-Z
tBodyGyro-std()-X|TimeBodyAngularVelocity-std()-X
tBodyGyro-std()-Y|TimeBodyAngularVelocity-std()-Y
tBodyGyro-std()-Z|TimeBodyAngularVelocity-std()-Z
tBodyGyroJerk-mean()-X|TimeBodyAngularVelocityJerk-mean()-X
tBodyGyroJerk-mean()-Y|TimeBodyAngularVelocityJerk-mean()-Y
tBodyGyroJerk-mean()-Z|TimeBodyAngularVelocityJerk-mean()-Z
tBodyGyroJerk-std()-X|TimeBodyAngularVelocityJerk-std()-X
tBodyGyroJerk-std()-Y|TimeBodyAngularVelocityJerk-std()-Y
tBodyGyroJerk-std()-Z|TimeBodyAngularVelocityJerk-std()-Z
tBodyAccMag-mean()|TimeBodyAccelerationMagnitude-mean()
tBodyAccMag-std()|TimeBodyAccelerationMagnitude-std()
tGravityAccMag-mean()|TimeGravityAccelerationMagnitude-mean()
tGravityAccMag-std()|TimeGravityAccelerationMagnitude-std()
tBodyAccJerkMag-mean()|TimeBodyAccelerationJerkMagnitude-mean()
tBodyAccJerkMag-std()|TimeBodyAccelerationJerkMagnitude-std()
tBodyGyroMag-mean()|TimeBodyAngularVelocityMagnitude-mean()
tBodyGyroMag-std()|TimeBodyAngularVelocityMagnitude-std()
tBodyGyroJerkMag-mean()|TimeBodyAngularVelocityJerkMagnitude-mean()
tBodyGyroJerkMag-std()|TimeBodyAngularVelocityJerkMagnitude-std()
fBodyAcc-mean()-X|FrequencyBodyAcceleration-mean()-X
fBodyAcc-mean()-Y|FrequencyBodyAcceleration-mean()-Y
fBodyAcc-mean()-Z|FrequencyBodyAcceleration-mean()-Z
fBodyAcc-std()-X|FrequencyBodyAcceleration-std()-X
fBodyAcc-std()-Y|FrequencyBodyAcceleration-std()-Y
fBodyAcc-std()-Z|FrequencyBodyAcceleration-std()-Z
fBodyAccJerk-mean()-X|FrequencyBodyAccelerationJerk-mean()-X
fBodyAccJerk-mean()-Y|FrequencyBodyAccelerationJerk-mean()-Y
fBodyAccJerk-mean()-Z|FrequencyBodyAccelerationJerk-mean()-Z
fBodyAccJerk-std()-X|FrequencyBodyAccelerationJerk-std()-X
fBodyAccJerk-std()-Y|FrequencyBodyAccelerationJerk-std()-Y
fBodyAccJerk-std()-Z|FrequencyBodyAccelerationJerk-std()-Z
fBodyGyro-mean()-X|FrequencyBodyAngularVelocity-mean()-X
fBodyGyro-mean()-Y|FrequencyBodyAngularVelocity-mean()-Y
fBodyGyro-mean()-Z|FrequencyBodyAngularVelocity-mean()-Z
fBodyGyro-std()-X|FrequencyBodyAngularVelocity-std()-X
fBodyGyro-std()-Y|FrequencyBodyAngularVelocity-std()-Y
fBodyGyro-std()-Z|FrequencyBodyAngularVelocity-std()-Z
fBodyAccMag-mean()|FrequencyBodyAccelerationMagnitude-mean()
fBodyAccMag-std()|FrequencyBodyAccelerationMagnitude-std()
fBodyBodyAccJerkMag-mean()|FrequencyBodyBodyAccelerationJerkMagnitude-mean()
fBodyBodyAccJerkMag-std()|FrequencyBodyBodyAccelerationJerkMagnitude-std()
fBodyBodyGyroMag-mean()|FrequencyBodyBodyAngularVelocityMagnitude-mean()
fBodyBodyGyroMag-std()|FrequencyBodyBodyAngularVelocityMagnitude-std()
fBodyBodyGyroJerkMag-mean()|FrequencyBodyBodyAngularVelocityJerkMagnitude-mean()
fBodyBodyGyroJerkMag-std()|FrequencyBodyBodyAngularVelocityJerkMagnitude-std()
