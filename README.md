# Getting Cleaning Data Project
Project from Getting and Cleaning Data course (Coursera/Johns Hopkings)

## Introduction
The goal of this project is to work with a dataset from wearable devices.
The general purpose is to get, clean, merge and summarize the data, in order 
to reach a tidy and clean view of all amount of data.

## How does the code works?
The [code](run_analysis.R) is splited into seven steps.

1. Reading dataset:
The first step is responsable to read features, activity
labels, variables, subjects and activities (both from train and test datasets)

2. Merging all data read:
With data loaded, the code merge "variables" (X) with "subject" (Y) and "activity". 
After that, the completed train and test portions of data are mixed, too.

3. Filtering data:
One of the goals of the project is to only select mean and std variables contained
in the dataset. To complete this step, we use a "grep" function to select this 
variables and filter them into a new dataset called "ds".

4. Putting descriptive activity names in the merged dataset:
In the fourth step, we join the newest dataset ("ds") with "activities" dataset
loaded in first step, associating them with "Y" and "activity_id" key variables.

5. Labeling variables:
During all the transformation, we keep the "features" dataset updated with variables
names, and now, we put its values into columns labels.

6. Creating a new dataset, sumarized by activity and subject:
After all the transformations in the dataset "ds" done, we create a new one (called 
grouped), sumarizing data by "activity" and "subject".
To acomplish it, we get support from "plyr" library, using the "numcolwise" to get the
mean of all numeric variables.

7. Writing a file with the last dataset:
Last, we write this dataset into a file called "project_output_ds.txt".

## More information
For more informations, you can access the [CodeBook](CodeBook.md) file, where all the datasets and
its variabes are explained or check the [code](run_analysis.R).