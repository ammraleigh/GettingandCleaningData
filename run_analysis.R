
ActivityDesc <- read.table("../UCI HAR Dataset/Activity_labels.txt", header = FALSE, blank.lines.skip = TRUE)

dataTest <- read.csv("../UCI HAR Dataset/test/subject_test.txt", col.names = "SubjectId", header=FALSE)
temp <- c(rep(x = "Test",nrow(dataTest)))
dataTest <- cbind(dataTest, temp)
temp <- read.csv("../UCI HAR Dataset/test/y_test.txt", col.names = "Activity", blank.lines.skip = TRUE, header=FALSE)
temp$Activity <- as.factor(temp$Activity)
levels(temp$Activity) <- ActivityDesc$V2
dataTest <- cbind(dataTest, temp)
temp <- read.table("../UCI HAR Dataset/test/X_test.txt", header = FALSE, blank.lines.skip = TRUE)
temp$Mean <- apply(temp, 1, mean) 
temp$SD <- apply(temp, 1, sd) 
dataTest <- cbind(dataTest, temp$Mean)
dataTest <- cbind(dataTest, temp$SD)
colnames(dataTest)[2] = "SubjectType"
colnames(dataTest)[4] = "MeasureMean"
colnames(dataTest)[5] = "MeasureSD"
dataTrain <- read.csv("../UCI HAR Dataset/train/subject_train.txt", col.names = "SubjectId", header=FALSE)
temp <- c(rep(x = "Training",nrow(dataTrain)))
dataTrain <- cbind(dataTrain, temp)
temp <- read.csv("../UCI HAR Dataset/train/y_train.txt", col.names = "Activity", header=FALSE)
temp$Activity <- as.factor(temp$Activity)
levels(temp$Activity) <- ActivityDesc$V2
dataTrain <- cbind(dataTrain, temp)
temp <- read.table("../UCI HAR Dataset/train/X_train.txt", header = FALSE, blank.lines.skip = TRUE)
temp$Mean <- apply(temp, 1, mean) 
temp$SD <- apply(temp, 1, sd) 
dataTrain <- cbind(dataTrain, temp$Mean)
dataTrain <- cbind(dataTrain, temp$SD)
colnames(dataTrain)[2] = "SubjectType"
colnames(dataTrain)[4] = "MeasureMean"
colnames(dataTrain)[5] = "MeasureSD"

tidyDataSet1 <- rbind(dataTest,dataTrain)

library(plyr)
tidyDataSet2 <- ddply(tidyDataSet1, .(SubjectId, SubjectType, Activity), summarize, MeasureMean=round(mean(MeasureMean),7), MeasureSD = round(mean(MeasureSD),7))

write.table(tidyDataSet2, file="../tidyDataSet2.txt",row.name=FALSE)

