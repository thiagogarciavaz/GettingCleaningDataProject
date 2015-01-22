# Getting and Cleaning Data Course Project

# 0. Reading dataset (features, activities, test and training raw data)

# 0.1 Reading features list
features <- read.table("features.txt", sep=" ", stringsAsFactors=FALSE, 
                       col.names=c("feature_id", "feature_name"))

# 0.2 Reading activity list
activities <- read.table("activity_labels.txt", sep=" ", stringsAsFactors=FALSE, 
                       col.names=c("activity_id", "activity_name"))

# 0.3 Reading test data (variables, subjects and activities)
testX <- read.table("./test/X_test.txt", stringsAsFactors=FALSE)
subtest <- read.table("./test/subject_test.txt", stringsAsFactors=FALSE, 
                      col.names=c("subject_id"))
testY <- read.table("./test/Y_test.txt", stringsAsFactors=FALSE, 
                    col.names=c("Y"))

# 0.4 Reading training data (variables, subjects and activities)
trainX <- read.table("./train/X_train.txt", stringsAsFactors=FALSE)
subtrain <- read.table("./train/subject_train.txt", stringsAsFactors=FALSE, 
                       col.names=c("subject_id"))
trainY <- read.table("./train/Y_train.txt", stringsAsFactors=FALSE, 
                     col.names=c("Y"))

# 1. Merging all data read
train <- cbind(trainX, trainY, subtrain)  # train dataset
test <- cbind(testX, testY, subtest)      # test dataset
ds <- rbind(train, test)                  # full merged dataset

# 1.1 Updating features list
features <- rbind(features, c(c(562, "activity_id")))
features <- rbind(features, c(c(563, "subject_id")))

# 2. Filtering data (mean and std variables only)
cleanfeaturesIndex <- grep("mean|std|activity_id|subject_id", features$feature_name)
features <- features[cleanfeaturesIndex, ]
ds <- ds[, cleanfeaturesIndex]

# 3. Putting descriptive activity names in the merged dataset
ds <- merge(ds, activities, by.x="Y", by.y="activity_id", all=FALSE)

# 3.1 Updating features list
features <- rbind(features, c(c(564, "activity_name")))

# 4. Labeling variables
features$feature_name <- gsub("-", "_", gsub("\\(\\)", "", features$feature_name))

names(ds) <- t(features$feature_name)


# 5. Creating a new dataset, sumarized by activity and subject

# 5.1 Adjusting the dataset for the operation
ds$activity_id <- as.character(ds$activity_id)

library(plyr)
grouped <- ddply(ds, .(activity_name, subject_id), numcolwise(mean))

# Writing a file with the last dataset
write.table(grouped, "project_output_ds.txt", row.names = FALSE)
