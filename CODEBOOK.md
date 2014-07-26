Code Book
=========

###Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Check the README.txt file for further details about this dataset.

###Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment

### Source

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### Data Set

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

### Description of Variables
| Variable | Descritpion
| -------- |---------
| activity | The activity peformed.
| subject | The subject identifier.
| tBodyAcc-mean()-X | Mean value of time for body acceleration for X direction.
| tBodyAcc-mean()-Y | Mean value of time for body acceleration for Y direction.
| tBodyAcc-mean()-Z | Mean value of time for body acceleration for Z direction.
| tBodyAcc-std()-X | Standard deviation of time for body acceleration for X direction.
| tBodyAcc-std()-Y | Standard deviation of time for body acceleration for Y direction.
| tBodyAcc-std()-Z | Standard deviation of time for body acceleration for Z direction.
| tGravityAcc-mean()-X | Mean value of time for gravity acceleration for X direction.
| tGravityAcc-mean()-Y | Mean value of time for gravity acceleration for Y direction.
| tGravityAcc-mean()-Z | Mean value of time for gravity acceleration for Z direction.
| tGravityAcc-std()-X | Standard deviation of time for gravity acceleration for X direction.
| tGravityAcc-std()-Y | Standard deviation of time for gravity acceleration for Y direction.
| tGravityAcc-std()-Z | Standard deviation of time for gravity acceleration for Z direction.
| tBodyAccJerk-mean()-X | Mean value of time for body acceleration jerk for X direction.
| tBodyAccJerk-mean()-Y | Mean value of time for body acceleration jerk for Y direction
| tBodyAccJerk-mean()-Z | Mean value of time for body acceleration jerk for Z direction
| tBodyAccJerk-std()-X | Standard deviation of time of body acceleration jerk for X direction.
| tBodyAccJerk-std()-Y | Standard deviation of time of body acceleration jerk for Y direction.
| tBodyAccJerk-std()-Z | Standard deviation of time of body acceleration jerk for Z direction.
| tBodyGyro-mean()-X | Mean value of body gyroscope measurement for X direction.
| tBodyGyro-mean()-Y | Mean value of body gyroscope measurement for Y direction.
| tBodyGyro-mean()-Z | Mean value of body gyroscope measurement for Z direction.
| tBodyGyro-std()-X | Standard deviation of body gyroscope measurement for X direction.
| tBodyGyro-std()-Y | Standard deviation of body gyroscope measurement for Y direction.
| tBodyGyro-std()-Z | Standard deviation of body gyroscope measurement for Z direction.
| tBodyGyroJerk-mean()-X | Mean value of body gyroscope jerk signal for X direction.
| tBodyGyroJerk-mean()-Y | Mean value of body gyroscope jerk signal for Y direction.
| tBodyGyroJerk-mean()-Z | Mean value of body gyroscope jerk signal for Z direction.
| tBodyGyroJerk-std()-X | Standard deviation of body gyroscope jerk signal for X direction.
| tBodyGyroJerk-std()-Y | Standard deviation of body gyroscope jerk signal for Y direction.
| tBodyGyroJerk-std()-Z | Standard deviation of body gyroscope jerk signal for Z direction.
| tBodyAccMag-mean() | Mean value of magnitude of body acceleration.
| tBodyAccMag-std() | Standard deviation of magnitude of body acceleration.
| tGravityAccMag-mean() | Mean value of magnitude of gravity acceleration.
| tGravityAccMag-std() | Standard deviation of magnitude of gravity acceleration.
| tBodyAccJerkMag-mean() | Mean value of magnitude of body acceleration jerk.
| tBodyAccJerkMag-std() | Standard deviation of magnitude of body acceleration jerk.
| tBodyGyroMag-mean() | Mean value of magnitude of body gyroscope measurement.
| tBodyGyroMag-std() | Standard deviation of magnitude of body gyroscope measurement.
| tBodyGyroJerkMag-mean() | Mean value of magnitude of body gyroscope jerk measurement.
| tBodyGyroJerkMag-std() | Standard deviation of magnitude of body gyroscope jerk measurement.
| fBodyAcc-mean()-X | Mean value of frequency for body acceleration for X direction.
| fBodyAcc-mean()-Y | Mean value of frequency for body acceleration for Y direction.
| fBodyAcc-mean()-Z | Mean value of frequency for body acceleration for Z direction.
| fBodyAcc-std()-X | Standard deviation of frequency for body acceleration for X direction.
| fBodyAcc-std()-Y | Standard deviation of frequency for body acceleration for Y direction.
| fBodyAcc-std()-Z | Standard deviation of frequency for body acceleration for Z direction.
| fBodyAccJerk-mean()-X | Mean value of frequency for body accerlation jerk for X direction.
| fBodyAccJerk-mean()-Y | Mean value of frequency for body accerlation jerk for Y direction.
| fBodyAccJerk-mean()-Z | Mean value of frequency for body accerlation jerk for Z direction.
| fBodyAccJerk-std()-X | Standard deviation of frequency for body accerlation jerk for X direction.
| fBodyAccJerk-std()-Y | Standard deviation of frequency for body accerlation jerk for Y direction.
| fBodyAccJerk-std()-Z | Standard deviation of frequency for body accerlation jerk for Z direction.
| fBodyGyro-mean()-X | Mean value of frequency for body gyroscope measurement for X direction.
| fBodyGyro-mean()-Y | Mean value of frequency for body gyroscope measurement for Y direction.
| fBodyGyro-mean()-Z | Mean value of frequency for body gyroscope measurement for Z direction.
| fBodyGyro-std()-X | Standard deviation of frequency for body gyroscope measurement for X direction.
| fBodyGyro-std()-Y | Standard deviation of frequency for body gyroscope measurement for Y direction.
| fBodyGyro-std()-Z | Standard deviation of frequency for body gyroscope measurement for Z direction.
| fBodyAccMag-mean() | Mean value of frequency for body acceleration magnitude.
| fBodyAccMag-std() | Standard deviation of frequency for body acceleration magnitude.
| fBodyBodyAccJerkMag-mean() | Mean value of frequency for body acceleration jerk magnitude.
| fBodyBodyAccJerkMag-std() | Standard deviation of frequency for body acceleration jerk magnitude.
| fBodyBodyGyroMag-mean() | Mean value of frequency of magnitude of body gyroscope measurement.
| fBodyBodyGyroMag-std() | Standard deviation of frequency of magnitude of body gyroscope measurement.
| fBodyBodyGyroJerkMag-mean() | Mean value of frequency of magnitude of body gyroscope jerk measurement.
