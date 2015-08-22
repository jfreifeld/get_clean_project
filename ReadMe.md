---
title: "Getting and Cleaning Data Course Project - Read Me"
author: Jack Israel-Freifeld
output: html_document
---

###Assignmnent

You should create one R script called run_analysis.R that does the following. 
--Merges the training and the test sets to create one data set.
--Extracts only the measurements on the mean and standard deviation for each measurement. 
--Uses descriptive activity names to name the activities in the data set
--Appropriately labels the data set with descriptive variable names. 
--From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Files:
Codebook.md
run_analysis.R

There are two sets of data that need to be merged.  the "Test" and "Train" data are different, in that some subjects were in the test group and the rest were in the train group.  In total(in the test and the train data), 30 subjects.  The data are divided by several dimensions... the "x" related data containing lots of measurements and the Y data containing the activity data.

I decided to merge the data into complete sets across similar dimensions in the same order to maintain the ordinal state of the measurements.  xtest was joined with xtrain, ytest with ytrain and stest with strain.

The columns required for the assignment were those with a mean or a std.  These were grepped from the features.txt file and the columns were identified in a combined vector.  That vector was used to select only those columns.  The remaining columns were ignored.

I further used the features.txt file to rename the columns of the xdata. I chose to not alter the deescriptive names as they existed in the features file based on the recommendations found in the course discussion page here:

https://class.coursera.org/getdata-031/forum/thread?thread_id=28
"Should I decompose the variable names? No. For two reasons. ..."

Before combining the Y columns to the X columns, I transmuted the Y data, and renamed the column to a TIDY friendly variable name "Activity".

After combining the Y data column to the X data, I named the subject column with a friendly variable name "SubjectID" and added it to the YX dataset.

Summarize the proccedures followed to create the code
Refer to the comments
Include the references to the discussion thread on tiny data:
https://class.coursera.org/getdata-031/forum/thread?thread_id=113

and the general assignment notes discussion:
https://class.coursera.org/getdata-031/forum/thread?thread_id=28


data <- read.table("./datasummary.txt", header = TRUE)

View(data)

***
A person wanting to make life easy for their marker would give the code for reading the file back into R in the readMe. A person who varied the write.table settings should definitely help their marker by giving the variant instructions for reading the file in. A person careful about ethically noting their sources might cite this thread (though that is a pretty minor bit of code). There are fancier ways of reading the file in, like from a web address on the clipboard, but that is probably a topic for a stand lone thread if people were really curious, rather than extending this thread.
***



Left todo:
clean the variable names in the std and means - this was advised against

rename variable to lowercase for tidiness compliance or explain why the notation style used was intentional.


When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

```{r}
summary(cars)
```

You can also embed plots, for example:

```{r, echo=FALSE}
plot(cars)
```

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.
