The script performs the following operations:

1. Downloads and unzips the required files.
2. Reads data from the local depository.
3. Merges the training and the test sets to create one data set, first using the functions rbind() function to combine the training and testing sets for features, subject, and activity, and next using cbind() function to obtain the data frame dfCombine combining the data frames features, subject, activity.
4. Extracts only the measurements on the mean and standard deviation for each measurement and storing in the data frame dfMeanStd.
5. Creates descriptive activity names to name the activities in the data frame dfMeanStd taken from activity_labels.txt file.
6. Appropriately labels the data set with descriptive variable names using the gsub() function.
7. Creates a tidy data frame df with the average of each variable for each activity and each subject using the group_by() and summarise_all() functions from the dplyr package and saves it to the tidydata.txt file.
