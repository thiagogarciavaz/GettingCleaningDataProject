# CodeBook
Project' Codebook from Getting and Cleaning Data course (Coursera/Johns Hopkings)

## The initial dataset
The code starts loading the initial dataset, obtained from wearable devices.

### Accelerometer and Gyroscope
More specifically, data comes from device's accelerometer (variables with Acc sufix) 
and gyroscope (variables with Gyro sufix).
The acceleration signal was separated into body (tBodyAcc) and gravity (tGravityAcc).

### 3-axial raw signals
Each one of these variables contains a 3-axial raw signals (identified by XYZ).

### Time and Frequency domains
All variables started by "t" reffer to time domain signals.
Variables started by "f" indicates frequency domain signals.

### Jerk and Euclidian
The body linear acceleration and angular velocity were derived in time, what result
in Jerk signals (variables with "Jerk term").
The magniture of these variables was also calculated, usign Euclidian norm (variables
with "Mag" term)

### Mean and std
From these signals, we also estimated "mean" and "standard deviation".
To original dataset contains other derived metrics (such as "max", "correlation", etc),
but is out of this project scope.

### Any other data
To complete the dataset, each row contains the subject and the respective acitivity he/she 
was executing to produce the signals.

