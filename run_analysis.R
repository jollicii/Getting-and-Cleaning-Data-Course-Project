
library(reshape2)

#setting work directory
setwd("./Project/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")

#loading data
testdata <- read.table("./test/X_test.txt")
traindata <- read.table("./train/X_train.txt")
merged.data <- rbind(testdata,traindata)

#merging subject and activity
train.sub <- read.table("./train/subject_train.txt")
test.sub <- read.table("./test/subject_test.txt")
merged.sub <- rbind(test.sub, train.sub)

train.act <- read.table("./train/y_train.txt")
test.act <- read.table("./test/y_test.txt")
merged.act <- rbind(test.act,train.act)

merged.data <- cbind(merged.sub,merged.act,merged.data)


#loading feature names
datanames <- read.table("./features.txt")
datanames <- as.character(datanames[ ,2])
names(merged.data) <- c("subject","activity", datanames)

#cleaning data
cleandata <- merged.data[ , grep("-(mean|std).*", names(merged.data))]
cleandata <- cbind(cleandata, merged.data[ , c("subject","activity")])
names(cleandata) <- gsub("[-()]","", names(cleandata))
names(cleandata) <- gsub("mean","Mean", names(cleandata))
names(cleandata) <- gsub("std","STD", names(cleandata))

#loading activity names
activitynames <- read.table("./activity_labels.txt")
activitynames[ ,2]  <- as.character(activitynames[ ,2])
cleandata$activity <-  factor(cleandata$activity,levels =  activitynames[ ,1], labels = activitynames[ ,2])
cleandata$subject <- as.factor(cleandata$subject)

#generating tidy dataset
meltedData <- melt(cleandata, id = c("subject", "activity"))
tidy.data <- dcast(meltedData, subject + activity ~ variable, mean)

write.table(tidy.data, "./tidy.txt", row.names = FALSE, quote = FALSE)
