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
the grouped variables from tuple "subject x activity".

For example, the column "tBodyAcc_mean_Z" will contain the mean time from body accelerometer at 
Z-axis, grouped by all measurements of some user/activity.
So, in a row that contains subject=2 and activity=WALKING, the "tBodyAcc_mean_Z" indicates the mean
of all measurements from its user (2), executing this activity (WALKING) from the signal processed.