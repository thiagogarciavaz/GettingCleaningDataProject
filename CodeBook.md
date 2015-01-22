# CodeBook
Project' Codebook from Getting and Cleaning Data course (Coursera/Johns Hopkings)

## The initial dataset
The code starts loading the initial dataset, obtained from wearable devices.

#### Accelerometer and Gyroscope
More specifically, data comes from device's accelerometer (variables with Acc sufix) 
and gyroscope (variables with Gyro sufix).
The acceleration signal was separated into body (tBodyAcc) and gravity (tGravityAcc).

#### 3-axial raw signals
Each one of these variables contains a 3-axial raw signals (identified by XYZ).

#### Time and Frequency domains
All variables started by "t" reffer to time domain signals.
Variables started by "f" indicates frequency domain signals.

#### Jerk and Euclidian
The body linear acceleration and angular velocity were derived in time, what result
in Jerk signals (variables with "Jerk term").
The magniture of these variables was also calculated, usign Euclidian norm (variables
with "Mag" term)

#### Mean and std
From these signals, we also estimated "mean" and "standard deviation".
To original dataset contains other derived metrics (such as "max", "correlation", etc),
but is out of this project scope.

#### Vectors average in a window sample
Some vector were obtained by averaging the signals in a window sample: gravityMean,
tBodyAccMean, tBodyAccJerkMean, tBodyGyroMean, tBodyGyroJerkMean

#### Any other data
To complete the dataset, each row contains the subject and the respective acitivity he/she 
was executing to produce the signals.

#### Examples of data described above

* tBodyAcc_mean_X: mean time from body accelerometer at X-axis
* tBodyAcc_std_Y: standard deviation time from body accelerometer at Y-axis
* fBodyGyro_mean_Z: mean frequency from gyroscope at Z-axis
* tGravityAccMag_mean: mean time from gravity accelerometer, calculated using Euclidian norm

## The generated dataset
After some transformation in the above dataset (to clean and merge data), another dataset was
created, summarizing the original data by the subject and activity.

So, each column from the first dataset were summarized (using mean funtion) in order to obtain
the grouped variables from the tuple "subject x activity".

For example, the column "tBodyAcc_mean_Z" will contain the mean time from body accelerometer at 
Z-axis, grouped by all measurements of some user/activity.
So, in a row that contains subject=2 and activity=WALKING, the "tBodyAcc_mean_Z" indicates the mean
of all measurements (from the signal processed) of this user (2), executing this activity (WALKING).

## Full datasets

#### Original dataset
* tBodyAcc_mean_X
* tBodyAcc_mean_Y
* tBodyAcc_mean_Z
* tBodyAcc_std_X
* tBodyAcc_std_Y
* tBodyAcc_std_Z
* tGravityAcc_mean_X
* tGravityAcc_mean_Y
* tGravityAcc_mean_Z
* tGravityAcc_std_X
* tGravityAcc_std_Y
* tGravityAcc_std_Z
* tBodyAccJerk_mean_X
* tBodyAccJerk_mean_Y
* tBodyAccJerk_mean_Z
* tBodyAccJerk_std_X
* tBodyAccJerk_std_Y
* tBodyAccJerk_std_Z
* tBodyGyro_mean_X
* tBodyGyro_mean_Y
* tBodyGyro_mean_Z
* tBodyGyro_std_X
* tBodyGyro_std_Y
* tBodyGyro_std_Z
* tBodyGyroJerk_mean_X
* tBodyGyroJerk_mean_Y
* tBodyGyroJerk_mean_Z
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y
* tBodyGyroJerk_std_Z
* tBodyAccMag_mean
* tBodyAccMag_std
* tGravityAccMag_mean
* tGravityAccMag_std
* tBodyAccJerkMag_mean
* tBodyAccJerkMag_std
* tBodyGyroMag_mean
* tBodyGyroMag_std
* tBodyGyroJerkMag_mean
* tBodyGyroJerkMag_std
* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAcc_meanFreq_X
* fBodyAcc_meanFreq_Y
* fBodyAcc_meanFreq_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyAccJerk_meanFreq_X
* fBodyAccJerk_meanFreq_Y
* fBodyAccJerk_meanFreq_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyGyro_meanFreq_X
* fBodyGyro_meanFreq_Y
* fBodyGyro_meanFreq_Z
* fBodyAccMag_mean
* fBodyAccMag_std
* fBodyAccMag_meanFreq
* fBodyBodyAccJerkMag_mean
* fBodyBodyAccJerkMag_std
* fBodyBodyAccJerkMag_meanFreq
* fBodyBodyGyroMag_mean
* fBodyBodyGyroMag_std
* fBodyBodyGyroMag_meanFreq
* fBodyBodyGyroJerkMag_mean
* fBodyBodyGyroJerkMag_std
* fBodyBodyGyroJerkMag_meanFreq
* activity_id
* subject_id
* activity_name

#### Generated dataset
* activity_name
* subject_id
* tBodyAcc_mean_X
* tBodyAcc_mean_Y
* tBodyAcc_mean_Z
* tBodyAcc_std_X
* tBodyAcc_std_Y
* tBodyAcc_std_Z
* tGravityAcc_mean_X
* tGravityAcc_mean_Y
* tGravityAcc_mean_Z
* tGravityAcc_std_X
* tGravityAcc_std_Y
* tGravityAcc_std_Z
* tBodyAccJerk_mean_X
* tBodyAccJerk_mean_Y
* tBodyAccJerk_mean_Z
* tBodyAccJerk_std_X
* tBodyAccJerk_std_Y
* tBodyAccJerk_std_Z
* tBodyGyro_mean_X
* tBodyGyro_mean_Y
* tBodyGyro_mean_Z
* tBodyGyro_std_X
* tBodyGyro_std_Y
* tBodyGyro_std_Z
* tBodyGyroJerk_mean_X
* tBodyGyroJerk_mean_Y
* tBodyGyroJerk_mean_Z
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y
* tBodyGyroJerk_std_Z
* tBodyAccMag_mean
* tBodyAccMag_std
* tGravityAccMag_mean
* tGravityAccMag_std
* tBodyAccJerkMag_mean
* tBodyAccJerkMag_std
* tBodyGyroMag_mean
* tBodyGyroMag_std
* tBodyGyroJerkMag_mean
* tBodyGyroJerkMag_std
* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAcc_meanFreq_X
* fBodyAcc_meanFreq_Y
* fBodyAcc_meanFreq_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyAccJerk_meanFreq_X
* fBodyAccJerk_meanFreq_Y
* fBodyAccJerk_meanFreq_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyGyro_meanFreq_X
* fBodyGyro_meanFreq_Y
* fBodyGyro_meanFreq_Z
* fBodyAccMag_mean
* fBodyAccMag_std
* fBodyAccMag_meanFreq
* fBodyBodyAccJerkMag_mean
* fBodyBodyAccJerkMag_std
* fBodyBodyAccJerkMag_meanFreq
* fBodyBodyGyroMag_mean
* fBodyBodyGyroMag_std
* fBodyBodyGyroMag_meanFreq
* fBodyBodyGyroJerkMag_mean
* fBodyBodyGyroJerkMag_std
* fBodyBodyGyroJerkMag_meanFreq

For more information, you can access the original dataset info from the website [a link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)