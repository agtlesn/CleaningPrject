# Downloading and unzipping files
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile = "./data/UCIHARDataset.zip", method = "curl")
unzip(zipfile = "./data/UCIHARDataset.zip", exdir = "./data")


#Reading data from the local depository
subjectTrain <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
subjectTest  <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
featuresTrain <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
featuresTest  <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
activityTrain <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
activityTest  <- read.table("./data/UCI HAR Dataset/test/y_test.txt")


#Merging data frames
subject<- rbind(subjectTrain, subjectTest)
names(subject)<- c("subject")
features <- rbind(featuresTrain, featuresTest)
featuresNames <- read.table("./data/UCI HAR Dataset/features.txt")
names(features)<- featuresNames[[2]]
activity <- rbind(activityTrain, activityTest)
names(activity)<- c("activity")
dfCombine <- cbind(features, subject, activity)

#Extracting only the measurements on the mean  
#and standard deviation for each measurement.
msfeatureNames <- grep("-mean\\(|-std\\(", names(features), value = TRUE)
columnNames <- c(msfeatureNames, "subject", "activity") 
dfMeanStd <- dfCombine[columnNames]

#Using descriptive activity names 
#to name the activities in the data set
dfMeanStd$activity <- factor(dfMeanStd$activity)
dfMeanStd$subject <- factor(dfMeanStd$subject)
activityLabels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
levels(dfMeanStd$activity) <- activityLabels[[2]]


#Appropriately labelling the data set 
#with descriptive variable names
names(dfMeanStd)<-gsub("^t", "time", names(dfMeanStd))
names(dfMeanStd)<-gsub("^f", "frequency", names(dfMeanStd))
names(dfMeanStd)<-gsub("Acc", "Accelerometer", names(dfMeanStd))
names(dfMeanStd)<-gsub("Gyro", "Gyroscope", names(dfMeanStd))
names(dfMeanStd)<-gsub("Mag", "Magnitude", names(dfMeanStd))
names(dfMeanStd)<-gsub("BodyBody", "Body", names(dfMeanStd))


#Creating a second, independent tidy data set 
#with the average of each variable 
#for each activity and each subject
library(dplyr)
df <- dfMeanStd %>% group_by(subject, activity) %>% 
    summarise_all(list(mean))
write.table(df, file = "tidydata.txt", row.name=FALSE)


