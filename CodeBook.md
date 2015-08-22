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


* ydatasetdesc: ydataset with new name so that it can be reansmuted in the more labeled descriptive state, I use a different variable because I wanted to keep the original numeric data intact

* yxdataset: new data.frame with binded columns of the reduced xdataset, transmuted ydataset and the sdataset

* datasummary: summary set based on the data set

### Variables in the tidy datasummary resultset

* t measurements are time based measurements and f measurements are frequency based.
* X,Y and Z refer to Axis.

* mean(): Mean value
* std(): Standard deviation


* SubjectID: ID of the Subject
* Activity: Converted descriptive activity 1 of 6 (WALKING,WALKING_UPSTAIRS,WALKING_DOWNSTAIRS,SITTING,STANDING,LAYING)
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyAccMag-mean()
* tGravityAccMag-mean()
* tBodyAccJerkMag-mean()
* tBodyGyroMag-mean()
* tBodyGyroJerkMag-mean()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyAccMag-mean()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroJerkMag-mean()
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-std()
* tGravityAccMag-std()
* tBodyAccJerkMag-std()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-std()
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-std()

