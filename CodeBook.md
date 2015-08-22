# Variables (R Script)

* `X_train`, `Y_train`, `X_test`, `Y_test`, `subject_train` and `subject_test` contain the data from the original files,
* `X`, `Y` and `subject` contain the merged data from the above files,
* `features` contains the correct names for the `X` dataset,
* `mean_and_std_features` contains the columns that will be extracted from `X` dataset,
* `activities` contains the correct names for the `Y` dataset,
* `dataset` contains the merged data from `X`, `Y` and `subject`,
* `tidy_dataset` contains a dataset with the average of each variable for each activity and each subject from the dataset above.

# Variables (Output file)

* Subject (*[1:30] ID for each volunteer of the study*)
* Activity (*Activity that was measured for each volunteer*)

*Measurements*
* TimeDomain.BodyAccelerationmeanX
* TimeDomain.BodyAccelerationmeanY
* TimeDomain.BodyAccelerationmeanZ
* TimeDomain.BodyAccelerationstdX
* TimeDomain.BodyAccelerationstdY
* TimeDomain.BodyAccelerationstdZ
* TimeDomain.GravityAccelerationmeanX
* TimeDomain.GravityAccelerationmeanY
* TimeDomain.GravityAccelerationmeanZ
* TimeDomain.GravityAccelerationstdX
* TimeDomain.GravityAccelerationstdY
* TimeDomain.GravityAccelerationstdZ
* TimeDomain.BodyAccelerationJerkmeanX
* TimeDomain.BodyAccelerationJerkmeanY
* TimeDomain.BodyAccelerationJerkmeanZ
* TimeDomain.BodyAccelerationJerkstdX
* TimeDomain.BodyAccelerationJerkstdY
* TimeDomain.BodyAccelerationJerkstdZ
* TimeDomain.BodyAngularSpeedmeanX
* TimeDomain.BodyAngularSpeedmeanY
* TimeDomain.BodyAngularSpeedmeanZ
* TimeDomain.BodyAngularSpeedstdX
* TimeDomain.BodyAngularSpeedstdY
* TimeDomain.BodyAngularSpeedstdZ
* TimeDomain.BodyAngularAccelerationmeanX
* TimeDomain.BodyAngularAccelerationmeanY
* TimeDomain.BodyAngularAccelerationmeanZ
* TimeDomain.BodyAngularAccelerationstdX
* TimeDomain.BodyAngularAccelerationstdY
* TimeDomain.BodyAngularAccelerationstdZ
* TimeDomain.BodyAccelerationMagnitudemean
* TimeDomain.BodyAccelerationMagnitudestd
* TimeDomain.GravityAccelerationMagnitudemean
* TimeDomain.GravityAccelerationMagnitudestd
* TimeDomain.BodyAccelerationJerkMagnitudemean
* TimeDomain.BodyAccelerationJerkMagnitudestd
* TimeDomain.BodyAngularSpeedMagnitudemean
* TimeDomain.BodyAngularSpeedMagnitudestd
* TimeDomain.BodyAngularAccelerationMagnitudemean
* TimeDomain.BodyAngularAccelerationMagnitudestd
* FrequencyDomain.BodyAccelerationmeanX
* FrequencyDomain.BodyAccelerationmeanY
* FrequencyDomain.BodyAccelerationmeanZ
* FrequencyDomain.BodyAccelerationstdX
* FrequencyDomain.BodyAccelerationstdY
* FrequencyDomain.BodyAccelerationstdZ
* FrequencyDomain.BodyAccelerationJerkmeanX
* FrequencyDomain.BodyAccelerationJerkmeanY
* FrequencyDomain.BodyAccelerationJerkmeanZ
* FrequencyDomain.BodyAccelerationJerkstdX
* FrequencyDomain.BodyAccelerationJerkstdY
* FrequencyDomain.BodyAccelerationJerkstdZ
* FrequencyDomain.BodyAngularSpeedmeanX
* FrequencyDomain.BodyAngularSpeedmeanY
* FrequencyDomain.BodyAngularSpeedmeanZ
* FrequencyDomain.BodyAngularSpeedstdX
* FrequencyDomain.BodyAngularSpeedstdY
* FrequencyDomain.BodyAngularSpeedstdZ
* FrequencyDomain.BodyAccelerationMagnitudemean
* FrequencyDomain.BodyAccelerationMagnitudestd
* FrequencyDomain.BodyBodyAccelerationJerkMagnitudemean
* FrequencyDomain.BodyBodyAccelerationJerkMagnitudestd
* FrequencyDomain.BodyBodyAngularSpeedMagnitudemean
* FrequencyDomain.BodyBodyAngularSpeedMagnitudestd
* FrequencyDomain.BodyBodyAngularAccelerationMagnitudemean
* FrequencyDomain.BodyBodyAngularAccelerationMagnitudestd
