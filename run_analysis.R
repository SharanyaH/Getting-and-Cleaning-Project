# Downloading the Data

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
fileName <- "UCI HAR Dataset.zip"

if (!file.exists(fileName)) {
  download.file(url, fileName, mode = "wb")
}

folderName <- "UCI HAR Dataset"
if (!file.exists(folderName)) {
  unzip(fileName)
}

# Reading all the relavant files

featuresinfo <- read.table(file.path(folderName, "features.txt"))
activitylabels <- read.table(file.path(folderName, "activity_labels.txt"))
trainsubjects <- read.table(file.path(folderName, "train", "subject_train.txt"))
Xtrain <- read.table(file.path(folderName, "train", "X_train.txt"))
Ytrain <- read.table(file.path(folderName, "train", "y_train.txt"))
testsubjects <- read.table(file.path(folderName, "test", "subject_test.txt"))
Xtest <- read.table(file.path(folderName, "test", "X_test.txt"))
Ytest <- read.table(file.path(folderName, "test", "y_test.txt"))

# Combining train and test data

Data <- rbind(cbind(trainsubjects, Xtrain, Ytrain), cbind(testsubjects, Xtest, Ytest))
rm(trainsubjects, Xtrain, Ytrain, testsubjects, Xtest, Ytest)

# Extracting columns corresponding to mean and std

featuresinfo[,2] <- as.character(featuresinfo[,2])
colnames(Data) <- c("subject", featuresinfo[, 2], "activity")
meanstdcolindex <- grepl("subject|activity|mean|std", colnames(Data))
Data <- Data[, meanstdcolindex]

# Replacing activity Id with activity labels

Data <- mutate(Data, activity = activitylabels[activity, 2])

# Expanding the description of variable names

Datacolnames <- colnames(Data)
Datacolnames <- gsub("[\\(\\)-]", "", Datacolnames)
Datacolnames <- gsub("^f", "frequencyDomain", Datacolnames)
Datacolnames <- gsub("^t", "timeDomain", Datacolnames)
Datacolnames <- gsub("Gyro", "Gyroscope", Datacolnames)
Datacolnames <- gsub("Mag", "Magnitude", Datacolnames)
Datacolnames <- gsub("Freq", "Frequency", Datacolnames)
Datacolnames <- gsub("mean", "Mean", Datacolnames)
Datacolnames <- gsub("std", "StandardDeviation", Datacolnames)
Datacolnames <- gsub("BodyBody", "Body", Datacolnames)
colnames(Data) <- Datacolnames

# New data frame with the average of each variable for each activity and each subject 
DataSummary <- Data %>% group_by(subject, activity) %>% summarise_all(funs(mean))

write.table(DataSummary, "Cleandata.txt", row.names = FALSE, quote = FALSE)
