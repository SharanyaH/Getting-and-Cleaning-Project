CleanData.txt is the outpu file on running run_analysis.R

The variables are as follows:

Subject: Identifier ranging from 1-30

Average  floating-point values, normalised and bounded within [-1,1]:

timeDomainBodyAccelerometerMeanX
timeDomainBodyAccelerometerMeanY
timeDomainBodyAccelerometerMeanZ
timeDomainBodyAccelerometerStandardDeviationX
timeDomainBodyAccelerometerStandardDeviationY
timeDomainBodyAccelerometerStandardDeviationZ
timeDomainGravityAccelerometerMeanX
timeDomainGravityAccelerometerMeanY
timeDomainGravityAccelerometerMeanZ
timeDomainGravityAccelerometerStandardDeviationX
timeDomainGravityAccelerometerStandardDeviationY
timeDomainGravityAccelerometerStandardDeviationZ
timeDomainBodyAccelerometerJerkMeanX
timeDomainBodyAccelerometerJerkMeanY
timeDomainBodyAccelerometerJerkMeanZ
timeDomainBodyAccelerometerJerkStandardDeviationX
timeDomainBodyAccelerometerJerkStandardDeviationY
timeDomainBodyAccelerometerJerkStandardDeviationZ
timeDomainBodyGyroscopeMeanX
timeDomainBodyGyroscopeMeanY
timeDomainBodyGyroscopeMeanZ
timeDomainBodyGyroscopeStandardDeviationX
timeDomainBodyGyroscopeStandardDeviationY
timeDomainBodyGyroscopeStandardDeviationZ
timeDomainBodyGyroscopeJerkMeanX
timeDomainBodyGyroscopeJerkMeanY
timeDomainBodyGyroscopeJerkMeanZ
timeDomainBodyGyroscopeJerkStandardDeviationX
timeDomainBodyGyroscopeJerkStandardDeviationY
timeDomainBodyGyroscopeJerkStandardDeviationZ
timeDomainBodyAccelerometerMagnitudeMean
timeDomainBodyAccelerometerMagnitudeStandardDeviation
timeDomainGravityAccelerometerMagnitudeMean
timeDomainGravityAccelerometerMagnitudeStandardDeviation
timeDomainBodyAccelerometerJerkMagnitudeMean
timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
timeDomainBodyGyroscopeMagnitudeMean
timeDomainBodyGyroscopeMagnitudeStandardDeviation
timeDomainBodyGyroscopeJerkMagnitudeMean
timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
Frequency-domain signals
frequencyDomainBodyAccelerometerMeanX
frequencyDomainBodyAccelerometerMeanY
frequencyDomainBodyAccelerometerMeanZ
frequencyDomainBodyAccelerometerStandardDeviationX
frequencyDomainBodyAccelerometerStandardDeviationY
frequencyDomainBodyAccelerometerStandardDeviationZ
frequencyDomainBodyAccelerometerMeanFrequencyX
frequencyDomainBodyAccelerometerMeanFrequencyY
frequencyDomainBodyAccelerometerMeanFrequencyZ
frequencyDomainBodyAccelerometerJerkMeanX
frequencyDomainBodyAccelerometerJerkMeanY
frequencyDomainBodyAccelerometerJerkMeanZ
frequencyDomainBodyAccelerometerJerkStandardDeviationX
frequencyDomainBodyAccelerometerJerkStandardDeviationY
frequencyDomainBodyAccelerometerJerkStandardDeviationZ
frequencyDomainBodyAccelerometerJerkMeanFrequencyX
frequencyDomainBodyAccelerometerJerkMeanFrequencyY
frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
frequencyDomainBodyGyroscopeMeanX
frequencyDomainBodyGyroscopeMeanY
frequencyDomainBodyGyroscopeMeanZ
frequencyDomainBodyGyroscopeStandardDeviationX
frequencyDomainBodyGyroscopeStandardDeviationY
frequencyDomainBodyGyroscopeStandardDeviationZ
frequencyDomainBodyGyroscopeMeanFrequencyX
frequencyDomainBodyGyroscopeMeanFrequencyY
frequencyDomainBodyGyroscopeMeanFrequencyZ
frequencyDomainBodyAccelerometerMagnitudeMean
frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
frequencyDomainBodyAccelerometerJerkMagnitudeMean
frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
frequencyDomainBodyGyroscopeMagnitudeMean
frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
frequencyDomainBodyGyroscopeJerkMagnitudeMean
frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

Activity: Can be any of the following values:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

The following transportation was performed to obtain Cleandata from the data downloaded:
Downloading the Data
Reading all the relavant files
Combining train and test data
Extracting columns corresponding to mean and std
Replacing activity Id with activity labels
Expanding the description of variable names
New data frame with the average of each variable for each activity and each subject
