# Getting and Claning Data

Project files to the Programming Assigmnent of the Coursera Course.

This project consist on modifying the original data set available on: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The original dataset description and the code book describing the original variable names are here: [CodeBook](CodeBook.md)

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
"tBodyAcc-mean()-X"|"TimeBodyAcceleration_mean_X"
"tBodyAcc-mean()-Y"|"TimeBodyAcceleration_mean_Y"
"tBodyAcc-mean()-Z"|"TimeBodyAcceleration_mean_Z"
"tBodyAcc-std()-X"|"TimeBodyAcceleration_std_X"
"tBodyAcc-std()-Y"|"TimeBodyAcceleration_std_Y"
"tBodyAcc-std()-Z"|"TimeBodyAcceleration_std_Z"
"tGravityAcc-mean()-X"|"TimeGravityAcceleration_mean_X"
"tGravityAcc-mean()-Y"|"TimeGravityAcceleration_mean_Y"
"tGravityAcc-mean()-Z"|"TimeGravityAcceleration_mean_Z"
"tGravityAcc-std()-X"|"TimeGravityAcceleration_std_X"
"tGravityAcc-std()-Y"|"TimeGravityAcceleration_std_Y"
"tGravityAcc-std()-Z"|"TimeGravityAcceleration_std_Z"
"tBodyAccJerk-mean()-X"|"TimeBodyAccelerationJerk_mean_X"
"tBodyAccJerk-mean()-Y"|"TimeBodyAccelerationJerk_mean_Y"
"tBodyAccJerk-mean()-Z"|"TimeBodyAccelerationJerk_mean_Z"
"tBodyAccJerk-std()-X"|"TimeBodyAccelerationJerk_std_X"
"tBodyAccJerk-std()-Y"|"TimeBodyAccelerationJerk_std_Y"
"tBodyAccJerk-std()-Z"|"TimeBodyAccelerationJerk_std_Z"
"tBodyGyro-mean()-X"|"TimeBodyAngularVelocity_mean_X"
"tBodyGyro-mean()-Y"|"TimeBodyAngularVelocity_mean_Y"
"tBodyGyro-mean()-Z"|"TimeBodyAngularVelocity_mean_Z"
"tBodyGyro-std()-X"|"TimeBodyAngularVelocity_std_X"
"tBodyGyro-std()-Y"|"TimeBodyAngularVelocity_std_Y"
"tBodyGyro-std()-Z"|"TimeBodyAngularVelocity_std_Z"
"tBodyGyroJerk-mean()-X"|"TimeBodyAngularVelocityJerk_mean_X"
"tBodyGyroJerk-mean()-Y"|"TimeBodyAngularVelocityJerk_mean_Y"
"tBodyGyroJerk-mean()-Z"|"TimeBodyAngularVelocityJerk_mean_Z"
"tBodyGyroJerk-std()-X"|"TimeBodyAngularVelocityJerk_std_X"
"tBodyGyroJerk-std()-Y"|"TimeBodyAngularVelocityJerk_std_Y"
"tBodyGyroJerk-std()-Z"|"TimeBodyAngularVelocityJerk_std_Z"
"tBodyAccMag-mean()"|"TimeBodyAccelerationMagnitude_mean"
"tBodyAccMag-std()"|"TimeBodyAccelerationMagnitude_std"
"tGravityAccMag-mean()"|"TimeGravityAccelerationMagnitude_mean"
"tGravityAccMag-std()"|"TimeGravityAccelerationMagnitude_std"
"tBodyAccJerkMag-mean()"|"TimeBodyAccelerationJerkMagnitude_mean"
"tBodyAccJerkMag-std()"|"TimeBodyAccelerationJerkMagnitude_std"
"tBodyGyroMag-mean()"|"TimeBodyAngularVelocityMagnitude_mean"
"tBodyGyroMag-std()"|"TimeBodyAngularVelocityMagnitude_std"
"tBodyGyroJerkMag-mean()"|"TimeBodyAngularVelocityJerkMagnitude_mean"
"tBodyGyroJerkMag-std()"|"TimeBodyAngularVelocityJerkMagnitude_std"
"fBodyAcc-mean()-X"|"FrequencyBodyAcceleration_mean_X"
"fBodyAcc-mean()-Y"|"FrequencyBodyAcceleration_mean_Y"
"fBodyAcc-mean()-Z"|"FrequencyBodyAcceleration_mean_Z"
"fBodyAcc-std()-X"|"FrequencyBodyAcceleration_std_X"
"fBodyAcc-std()-Y"|"FrequencyBodyAcceleration_std_Y"
"fBodyAcc-std()-Z"|"FrequencyBodyAcceleration_std_Z"
"fBodyAccJerk-mean()-X"|"FrequencyBodyAccelerationJerk_mean_X"
"fBodyAccJerk-mean()-Y"|"FrequencyBodyAccelerationJerk_mean_Y"
"fBodyAccJerk-mean()-Z"|"FrequencyBodyAccelerationJerk_mean_Z"
"fBodyAccJerk-std()-X"|"FrequencyBodyAccelerationJerk_std_X"
"fBodyAccJerk-std()-Y"|"FrequencyBodyAccelerationJerk_std_Y"
"fBodyAccJerk-std()-Z"|"FrequencyBodyAccelerationJerk_std_Z"
"fBodyGyro-mean()-X"|"FrequencyBodyAngularVelocity_mean_X"
"fBodyGyro-mean()-Y"|"FrequencyBodyAngularVelocity_mean_Y"
"fBodyGyro-mean()-Z"|"FrequencyBodyAngularVelocity_mean_Z"
"fBodyGyro-std()-X"|"FrequencyBodyAngularVelocity_std_X"
"fBodyGyro-std()-Y"|"FrequencyBodyAngularVelocity_std_Y"
"fBodyGyro-std()-Z"|"FrequencyBodyAngularVelocity_std_Z"
"fBodyAccMag-mean()"|"FrequencyBodyAccelerationMagnitude_mean"
"fBodyAccMag-std()"|"FrequencyBodyAccelerationMagnitude_std"
"fBodyBodyAccJerkMag-mean()"|"FrequencyBodyBodyAccelerationJerkMagnitude_mean"
"fBodyBodyAccJerkMag-std()"|"FrequencyBodyBodyAccelerationJerkMagnitude_std"
"fBodyBodyGyroMag-mean()"|"FrequencyBodyBodyAngularVelocityMagnitude_mean"
"fBodyBodyGyroMag-std()"|"FrequencyBodyBodyAngularVelocityMagnitude_std"
"fBodyBodyGyroJerkMag-mean()"|"FrequencyBodyBodyAngularVelocityJerkMagnitude_mean"
"fBodyBodyGyroJerkMag-std()"|"FrequencyBodyBodyAngularVelocityJerkMagnitude_std"

