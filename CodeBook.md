## Data
The data is collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
 Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


## Modifications
- Merged the training and the test sets to create one data set.
- Extracted only the measurements on the mean and standard deviation for each measurement.
- Used descriptive activity names to name the activities in the data set 
- Labeled the data set with descriptive variable names. 
- Created a second, independent tidy data set with the average of each variable for each activity and each subject.

## Identifications
subject: Identifies subject who performed the activity for each window sample. Its range is from 1 to 30. 

activity: Links the class labels with their activity name.

## Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAccMeanX

tBodyAccMeanY

tBodyAccMeanZ

tBodyAccSTDX

tBodyAccSTDY

tBodyAccSTDZ

tGravityAccMeanX

tGravityAccMeanY

tGravityAccMeanZ

tGravityAccSTDX

tGravityAccSTDY

tGravityAccSTDZ

tBodyAccJerkMeanX

tBodyAccJerkMeanY

tBodyAccJerkMeanZ

tBodyAccJerkSTDX

tBodyAccJerkSTDY

tBodyAccJerkSTDZ

tBodyGyroMeanX

tBodyGyroMeanY

tBodyGyroMeanZ

tBodyGyroSTDX

tBodyGyroSTDY

tBodyGyroSTDZ

tBodyGyroJerkMeanX

tBodyGyroJerkMeanY

tBodyGyroJerkMeanZ

tBodyGyroJerkSTDX

tBodyGyroJerkSTDY

tBodyGyroJerkSTDZ

tBodyAccMagMean

tBodyAccMagSTD

tGravityAccMagMean

tGravityAccMagSTD

tBodyAccJerkMagMean

tBodyAccJerkMagSTD

tBodyGyroMagMean

tBodyGyroMagSTD

tBodyGyroJerkMagMean

tBodyGyroJerkMagSTD

fBodyAccMeanX

fBodyAccMeanY

fBodyAccMeanZ

fBodyAccSTDX

fBodyAccSTDY

fBodyAccSTDZ

fBodyAccMeanFreqX

fBodyAccMeanFreqY

fBodyAccMeanFreqZ

fBodyAccJerkMeanX

fBodyAccJerkMeanY

fBodyAccJerkMeanZ

fBodyAccJerkSTDX

fBodyAccJerkSTDY

fBodyAccJerkSTDZ

fBodyAccJerkMeanFreqX

fBodyAccJerkMeanFreqY

fBodyAccJerkMeanFreqZ

fBodyGyroMeanX

fBodyGyroMeanY

fBodyGyroMeanZ

fBodyGyroSTDX

fBodyGyroSTDY

fBodyGyroSTDZ

fBodyGyroMeanFreqX

fBodyGyroMeanFreqY

fBodyGyroMeanFreqZ

fBodyAccMagMean

fBodyAccMagSTD

fBodyAccMagMeanFreq

fBodyBodyAccJerkMagMean

fBodyBodyAccJerkMagSTD

fBodyBodyAccJerkMagMeanFreq

fBodyBodyGyroMagMean

fBodyBodyGyroMagSTD

fBodyBodyGyroMagMeanFreq

fBodyBodyGyroJerkMagMean

fBodyBodyGyroJerkMagSTD

fBodyBodyGyroJerkMagMeanFreq

