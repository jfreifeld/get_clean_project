---
title: "CodeBook - Gathering and Cleaning Data Project"
author: "Jack Israel-Freifeld"
date: "August 19, 2015"
---

### Libraries
* library(data.table)
* library(plyr)
* library(dplyr)
* library(tidyr)
* library(reshape2)

### Variables in run_analysis.R  

* xtest: xtest data
* ytest: ytest data
* xtrain: xtrain data
* ytrain: ytrain data
* stest: stest data
* strain: strain data
* actlabel: actlabel data 
* features: featrues data

* getactivity: function to swap the activity_labels with the activity id

* xdataset: bind xdata by rowset
* ydataset: bind ydata by rowset
* sdataset: bind sdata by rowset

* meanz: grab the means columns
* stds: grab the stds colums
* meanzstds: join the meanz and the stds columns


* redxdataset: take only the columns in xdataset with mean() and std() from xdataset
called redxdataset because it is reduced.


see the run_analysis.R file for how the columns are renamed, they are commented.


* ydatasetdesc: ydataset with new name so that it can be transmuted in the more descriptive state, I use a different variable because I wanted to keep the original numeric data intact

* yxdataset: new data.frame with binded columns of the reduced xdataset, transmuted ydataset and the sdataset

* datasummary: summary set based on the data set

### Variables in the tidy datasummary resultset

* t measurements are time based measurements and f measurements are frequency based.
* X,Y and Z refer to Axis.

* mean(): Mean value
* std(): Standard deviation


* SubjectID: ID of the Subject
* Activity: Converted descriptive activity 1 of 6 (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING)
* tBodyAcc_mean_X
* tBodyAcc_mean_Y
* tBodyAcc_mean_Z
* tGravityAcc_mean_X
* tGravityAcc_mean_Y
* tGravityAcc_mean_Z
* tBodyAccJerk_mean_X
* tBodyAccJerk_mean_Y
* tBodyAccJerk_mean_Z
* tBodyGyro_mean_X
* tBodyGyro_mean_Y
* tBodyGyro_mean_Z
* tBodyGyroJerk_mean_X
* tBodyGyroJerk_mean_Y
* tBodyGyroJerk_mean_Z
* tBodyAccMag_mean
* tGravityAccMag_mean
* tBodyAccJerkMag_mean
* tBodyGyroMag_mean
* tBodyGyroJerkMag_mean
* fBodyAcc_mean_X
* fBodyAcc_mean_Y
* fBodyAcc_mean_Z
* fBodyAccJerk_mean_X
* fBodyAccJerk_mean_Y
* fBodyAccJerk_mean_Z
* fBodyGyro_mean_X
* fBodyGyro_mean_Y
* fBodyGyro_mean_Z
* fBodyAccMag_mean
* fBodyBodyAccJerkMag_mean
* fBodyBodyGyroMag_mean
* fBodyBodyGyroJerkMag_mean
* tBodyAcc_std_X
* tBodyAcc_std_Y
* tBodyAcc_std_Z
* tGravityAcc_std_X
* tGravityAcc_std_Y
* tGravityAcc_std_Z
* tBodyAccJerk_std_X
* tBodyAccJerk_std_Y
* tBodyAccJerk_std_Z
* tBodyGyro_std_X
* tBodyGyro_std_Y
* tBodyGyro_std_Z
* tBodyGyroJerk_std_X
* tBodyGyroJerk_std_Y
* tBodyGyroJerk_std_Z
* tBodyAccMag_std
* tGravityAccMag_std
* tBodyAccJerkMag_std
* tBodyGyroMag_std
* tBodyGyroJerkMag_std
* fBodyAcc_std_X
* fBodyAcc_std_Y
* fBodyAcc_std_Z
* fBodyAccJerk_std_X
* fBodyAccJerk_std_Y
* fBodyAccJerk_std_Z
* fBodyGyro_std_X
* fBodyGyro_std_Y
* fBodyGyro_std_Z
* fBodyAccMag_std
* fBodyBodyAccJerkMag_std
* fBodyBodyGyroMag_std
* fBodyBodyGyroJerkMag_std


