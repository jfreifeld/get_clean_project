library(data.table)
library(plyr)
library(dplyr)
library(tidyr)
library(reshape2)

xtest <- read.table("./test/X_test.txt", header=FALSE)
ytest <- read.table("./test/y_test.txt", header=FALSE)
xtrain <- read.table("./train/X_train.txt", header=FALSE)
ytrain <- read.table("./train/y_train.txt", header=FALSE)

stest <- read.table("./test/subject_test.txt", header=FALSE)
strain <- read.table("./train/subject_train.txt", header=FALSE)

actlabel <- read.table("activity_labels.txt", header=FALSE)
features <- read.table("features.txt", header=FALSE)

#function to swap the activity_labels with the activity id
getactivity <- function(x){
    return(actlabel[x,2])
}

#bind all the data - add the columns to the correct files combine the y and x and subject data in train and test
#bind the rows
xdataset <- bind_rows(xtest, xtrain)
ydataset <- bind_rows(ytest, ytrain)
sdataset <- bind_rows(stest, strain)

#grab the means and the std column numbers as they match the columns in the xdataset
meanz <-  grep("mean()", features$V2, fixed = TRUE)
stds <-  grep("std()", features$V2, fixed = TRUE)

#combine the means and the std
meanzstds <- c(meanz, stds)

#grab the columns
#take only the columns in xdataset with mean() and std()
redxdataset <- select(xdataset, num_range("V",meanzstds))
#give them the feature label
#attach the columnnames
colnames(redxdataset) <- features$V2[meanzstds]

#rename the subjectID and Activities column
#transmute the data in the Activities column

#columname on ydataset
colnames(ydataset) <- "ActivitiesID"

#transmute the ydataset so that the column is attached in the more labeled
#descriptive state, I use a different variable because I wanted to keep the original numeric data intact
ydatasetdesc <- ydataset
ydatasetdesc <- transmute(ydatasetdesc, Activity=getactivity(ydatasetdesc$ActivitiesID))

#new data.frame with reduced xdataset and transmuted ydataset
yxdataset <- bind_cols(ydatasetdesc, redxdataset)

colnames(sdataset) <- "SubjectID"
#updated data.frame with subject column - yxdataset is the complete dataset
yxdataset <- bind_cols(sdataset, yxdataset)

#create a summary set based on the data set

datasummary <- dcast(melt(yxdataset, id = c("SubjectID","Activity")), SubjectID + Activity ~ variable, fun.aggregate = mean)

write.table(datasummary, file="./datasummary.txt", row.names = FALSE)