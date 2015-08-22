---
title: "Getting and Cleaning Data Course Project - Read Me"
author: Jack Israel-Freifeld
---

###Assignmnent

You should create one R script called run_analysis.R that does the following: 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Data source:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Files:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Repository Files:
* Codebook.md
* run_analysis.R
* readme.md



Summary:
There are two sets of data that need to be merged.  the "Test" and "Train" data are different, in that some subjects were in the test group and the rest were in the train group.  In total(in the test and the train data), 30 subjects.  The data are divided by several dimensions... the "x" related data containing lots of measurements and the Y data containing the activity data.


I decided to merge the data into complete sets across similar dimensions in the same order to maintain the ordinal state of the measurements.  xtest was joined with xtrain, ytest with ytrain and stest with strain.


The columns required for the assignment were those with a mean or a std.  These were 'grepped' from the features.txt file and the columns were identified in a combined vector.  That vector was used to select only those columns.  The remaining columns were ignored.


I further used the features.txt file to rename the columns of the xdata. I only altered the descriptive names as they existed in the features file based on the recommendations found in the course discussion page here:


***
[https://class.coursera.org/getdata-031/forum/thread?thread_id=28](https://class.coursera.org/getdata-031/forum/thread?thread_id=28)
"Should I decompose the variable names? No. For two reasons. ..."
***

Before combining the Y columns to the X columns, I transmuted the Y data, and renamed the column to a TIDY friendly variable name "Activity".


After combining the Y data column to the X data, I named the subject column with a friendly variable name "SubjectID" and added it to the YX dataset.


Use the following code to load and then view the tidy data data summary:
```{r eval=FALSE}
data <- read.table("./datasummary.txt", header = TRUE)

View(data)
```

There were two great threads that were very helpful in this assignment and I wanted to give them credit by mentioning them:

[discussion thread on tiny data:](https://class.coursera.org/getdata-031/forum/thread?thread_id=113)

[general assignment notes discussion:](https://class.coursera.org/getdata-031/forum/thread?thread_id=28)

It was based on the information there that I made the decision only to clean the variable names in the std and means by removing the "()" and convert the "-" to "_". The data is already normalized in the wide form. 

I also chose not to rename the xdata variables to all lowercase for tidiness compliance as they are already in
[CamelCase](https://en.wikipedia.org/wiki/CamelCase).  If we consider that its descriptive nature, it seems common sense to leave it as is.

I chose not to include the inertial folder.

I only included columns that had specifically had mean() and std().

Please see the included codebook for the list of variables in run_analysis.R and from the TIDY data output from datasummary.txt

The output is in the WIDE format.

