## CODEBOOK

This dataset is a transformed version of the
Human Activity Recognition Using Smartphones Data Set
available at
https://archive.ics.uci.edu/ml/datasets/human+activity+recognition+using+smartphones
Human Activity Recognition database is built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope. The data includes measurements of 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.
Number of records in the original dataset is 10299. For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

  The downloaded original data was divided into two sets: training and testing.

  ====================================================================
  The following transformations were made:

1. Merging the training and the test sets to create one data set.
2. Extracting only the measurements on the mean and standard deviation for each measurement.
3. Using descriptive activity names to name the activities in the data set
4. Appropriately labelling the data set with descriptive variable names.
5. From the data set in step 4, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

====================================================================

After these transformations the datasets contains 180 rows and 68 columns. The original data was grouped according to 30 subjects and 6 activities, which gives 180 groups corresponding to the rows of the dataset. The columns of the transformed data are the following:

1. "subject" - the identifier of the volunteer who carried out the experiment
2. "activity" - the name of the activity performed
3. "timeBodyAccelerometer-mean()-X" - the mean of linear body acceleration signal in the direction of the x axis
4. "timeBodyAccelerometer-mean()-Y" - the mean of linear body acceleration signal in the direction of the y axis
5. "timeBodyAccelerometer-mean()-Z" - the mean of linear body acceleration signal in the direction of the z axis
6. "timeBodyAccelerometer-std()-X" - the standard deviation of linear body acceleration signal in the direction of the x axis
7. "timeBodyAccelerometer-std()-Y" - the standard deviation of linear body acceleration signal in the direction of the y axis
8. "timeBodyAccelerometer-std()-Z" - the standard deviation of linear body acceleration signal in the direction of the z axis
9. "timeGravityAccelerometer-mean()-X" - the mean of linear gravity acceleration signal in the direction of the x axis
10. "timeGravityAccelerometer-mean()-Y" - the mean of linear gravity acceleration signal in the direction of the y axis
11. "timeGravityAccelerometer-mean()-Z" - the mean of linear gravity acceleration signal in the direction of the z axis
12. "timeGravityAccelerometer-std()-X" - the standard deviation of linear gravity acceleration signal in the direction of the x axis
13. "timeGravityAccelerometer-std()-Y" - the standard deviation of linear gravity acceleration signal in the direction of the y axis
14. "timeGravityAccelerometer-std()-Z" - the standard deviation of linear gravity acceleration signal in the direction of the z axis
15. "timeBodyAccelerometerJerk-mean()-X" - the mean of linear body acceleration with Jerk signal in the direction of the x axis
16. "timeBodyAccelerometerJerk-mean()-Y" - the mean of linear body acceleration with Jerk signal in the direction of the y axis
17. "timeBodyAccelerometerJerk-mean()-Z" - the mean of linear body acceleration with Jerk signal in the direction of the z axis
18. "timeBodyAccelerometerJerk-std()-X" - the standard deviation of linear body acceleration with Jerk signal in the direction of the x axis
19. "timeBodyAccelerometerJerk-std()-Y" - the standard deviation of linear body acceleration with Jerk signal in the direction of the y axis
20. "timeBodyAccelerometerJerk-std()-Z" - the standard deviation of linear body acceleration with Jerk signal in the direction of the z axis
21. "timeBodyGyroscope-mean()-X" - the mean of angular body velocity from the gyroscope in the direction of the x axis
22. "timeBodyGyroscope-mean()-Y" - the mean of angular body velocity from the gyroscope in the direction of the y axis
23. "timeBodyGyroscope-mean()-Z" - the mean of angular body velocity from the gyroscope in the direction of the z axis
24. "timeBodyGyroscope-std()-X" - the standard deviation of angular body velocity from the gyroscope in the direction of the x axis
25. "timeBodyGyroscope-std()-Y" - the standard deviation of angular body velocity from the gyroscope in the direction of the y axis
26. "timeBodyGyroscope-std()-Z" - the standard deviation of angular body velocity from the gyroscope in the direction of the z axis
27. "timeBodyGyroscopeJerk-mean()-X" - the mean of angular body velocity with Jerk signal in the direction of the x axis
28. "timeBodyGyroscopeJerk-mean()-Y" - the mean of angular body velocity with Jerk signal in the direction of the y axis
29. "timeBodyGyroscopeJerk-mean()-Z" - the mean of angular body velocity with Jerk signal in the direction of the z axis
30. "timeBodyGyroscopeJerk-std()-X" - the standard deviation of angular body velocity with Jerk signal in the direction of the x axis
31. "timeBodyGyroscopeJerk-std()-Y" - the standard deviation of angular body velocity with Jerk signal in the direction of the y axis
32. "timeBodyGyroscopeJerk-std()-Z" - the standard deviation of angular body velocity with Jerk signal in the direction of the z axis
33. "timeBodyAccelerometerMagnitude-mean()" - the mean of the magnitude of linear body acceleration signal
34. "timeBodyAccelerometerMagnitude-std()" - the standard deviation of the magnitude of linear body acceleration signal
35. "timeGravityAccelerometerMagnitude-mean()" - the mean of the magnitude of linear gravity acceleration signal
36. "timeGravityAccelerometerMagnitude-std()" - the standard deviation of the magnitude of linear gravity acceleration signal
37. "timeBodyAccelerometerJerkMagnitude-mean()" - the mean of the magnitude of linear body acceleration with Jerk signal
38. "timeBodyAccelerometerJerkMagnitude-std()" - the standard deviation of the magnitude of linear body acceleration with Jerk signal
39. "timeBodyGyroscopeMagnitude-mean()" - the mean of the magnitude of angular body velocity signal
40. "timeBodyGyroscopeMagnitude-std()" - the standard deviation of the magnitude of angular body velocity signal
41. "timeBodyGyroscopeJerkMagnitude-mean()" - the mean of the magnitude of angular body velocity with Jerk signal
42. "timeBodyGyroscopeJerkMagnitude-std()" - the standard deviation of the magnitude of angular body velocity with Jerk signal
43. "frequencyBodyAccelerometer-mean()-X" - the mean of the Fast Fourier Transform (FFT) of linear body acceleration in the direction of the x axis
44. "frequencyBodyAccelerometer-mean()-Y" - the mean of the Fast Fourier Transform (FFT) of linear body acceleration in the direction of the y axis
45. "frequencyBodyAccelerometer-mean()-Z" - the mean of the Fast Fourier Transform (FFT) of linear body acceleration in the direction of the z axis
46. "frequencyBodyAccelerometer-std()-X" - the standard deviation of the Fast Fourier Transform (FFT) of linear body acceleration in the direction of the x axis
47. "frequencyBodyAccelerometer-std()-Y" - the standard deviation of the Fast Fourier Transform (FFT) of linear body acceleration in the direction of the y axis
48. "frequencyBodyAccelerometer-std()-Z" - the standard deviation of the Fast Fourier Transform (FFT) of linear body acceleration in the direction of the z axis
49. "frequencyBodyAccelerometerJerk-mean()-X" - the mean of the FFT of linear body acceleration with Jerk signal in the direction of the x axis
50. "frequencyBodyAccelerometerJerk-mean()-Y" - the mean of the FFT of linear body acceleration with Jerk signal in the direction of the y axis
51. "frequencyBodyAccelerometerJerk-mean()-Z" - the mean of the FFT of linear body acceleration with Jerk signal in the direction of the z axis
52. "frequencyBodyAccelerometerJerk-std()-X" - the standard deviation of the FFT of linear body acceleration with Jerk signal in the direction of the x axis
53. "frequencyBodyAccelerometerJerk-std()-Y" - the standard deviation of the FFT of linear body acceleration with Jerk signal in the direction of the y axis
54. "frequencyBodyAccelerometerJerk-std()-Z" - the standard deviation of the FFT of linear body acceleration with Jerk signal in the direction of the z axis
55. "frequencyBodyGyroscope-mean()-X" - the mean of the FFT of body gyroscope signal (angular body velocity) in the direction of the x axis
56. "frequencyBodyGyroscope-mean()-Y" - the mean of the FFT of body gyroscope signal (angular body velocity) in the direction of the y axis
57. "frequencyBodyGyroscope-mean()-Z" - the mean of the FFT of body gyroscope signal (angular body velocity) in the direction of the z axis
58. "frequencyBodyGyroscope-std()-X" - the standard deviation of the FFT of body gyroscope signal (angular body velocity) in the direction of the x axis
59. "frequencyBodyGyroscope-std()-Y" - the standard deviation of the FFT of body gyroscope signal (angular body velocity) in the direction of the y axis
60. "frequencyBodyGyroscope-std()-Z" - the standard deviation of the FFT of body gyroscope signal (angular body velocity) in the direction of the z axis
61. "frequencyBodyAccelerometerMagnitude-mean()" - the mean of the magnitude of the FFT of linear body acceleration
62. "frequencyBodyAccelerometerMagnitude-std()" - the standard deviation of the magnitude of the FFT of linear body acceleration
63. "frequencyBodyAccelerometerJerkMagnitude-mean()" - the mean of the magnitude of the FFT of linear body acceleration with Jerk signal
64. "frequencyBodyAccelerometerJerkMagnitude-std()" - the standard deviation of the magnitude of the FFT of linear body acceleration with Jerk signal
65. "frequencyBodyGyroscopeMagnitude-mean()" - the mean of the magnitude of the FFT of body gyroscope signal
66. "frequencyBodyGyroscopeMagnitude-std()" - the standard deviation of the magnitude of the FFT of body gyroscope signal
67. "frequencyBodyGyroscopeJerkMagnitude-mean()" - the mean of the magnitude of the FFT of body gyroscope with Jerk signal
68. "frequencyBodyGyroscopeJerkMagnitude-std()" - the standard deviation of the magnitude of the FFT of body gyroscope with Jerk signal
