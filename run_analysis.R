# set working dir to "UCI HAR Dataset"

# Read features and cleanup/normalize some characters
features = read.csv("features.txt", sep="", header=FALSE)
features[,2] = gsub('[()]', '', features[,2])
features[,2] = gsub('-mean', '-Mean', features[,2])
features[,2] = gsub('-std', '-StandardDev', features[,2])

#read training data
train = read.csv("train/X_train.txt", sep="", header=FALSE)
train[,562] = read.csv("train/Y_train.txt", sep="", header=FALSE)
train[,563] = read.csv("train/subject_train.txt", sep="", header=FALSE)

#read test data
test = read.csv("test/X_test.txt", sep="", header=FALSE)
test[,562] = read.csv("test/Y_test.txt", sep="", header=FALSE)
test[,563] = read.csv("test/subject_test.txt", sep="", header=FALSE)

# Merge training and test sets together
allData = rbind(train, test)

# Get only the data on mean and std. dev.
relevantCols <- grep(".*-Mean.*|.*-StandardDev.*", features[,2])
# get only relevant features
features <- features[relevantCols,]
# add the last two columns - subject & activity
relevantCols <- c(relevantCols, 562, 563)
# create relevant data set
relevantData <- allData[,relevantCols]
# Add the column names (features) to relevantData
colnames(relevantData) <- c(features$V2, "activity", "subject")

#create tidy data
tidy = aggregate(relevantData, by=list(relevantData$activity, relevantData$subject), mean)
# Remove the two groups created
tidy[,"Group.1"] = NULL
tidy[,"Group.2"] = NULL

#finally cleanup the '-' in the column names
colnames(tidy) <- gsub('-', '', colnames(tidy))

#read activity labels and use them to set in the tidy data
activityLabels = read.csv("activity_labels.txt", sep="", header=FALSE)
tidy$activity = factor(tidy$activity, levels=c(1,2,3,4,5,6),labels=activityLabels$V2)

#wrtie tidy data
write.table(tidy, "tidy.txt", sep="\t")
