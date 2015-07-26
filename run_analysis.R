############################################################################################################
# STEP 0. Download and unzip the data
############################################################################################################
FileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
temp <- tempfile()
download.file(FileURL, temp, method = "curl")
dir.create("./Data")
unzip(temp, exdir = "./Data")
unlink(temp)
############################################################################################################
# STEP 1. Merge training and test sets
############################################################################################################
## Assemble the train set
library(dplyr)
features <- read.table(file = "./Data/UCI HAR Dataset/features.txt")
var_names <- as.character(features[,2])
subject_train <- read.table(file = "./Data/UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
y_train <- read.table(file = "./Data/UCI HAR Dataset/train/y_train.txt", col.names = "activity")
X_train <- read.table(file = "./Data/UCI HAR Dataset/train/X_train.txt", col.names = var_names)
train <- cbind(subject_train, y_train, X_train)
## Assemble the test set
subject_test <- read.table(file = "./Data/UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
y_test <- read.table(file = "./Data/UCI HAR Dataset/test/y_test.txt", col.names = "activity")
X_test <- read.table(file = "./Data/UCI HAR Dataset/test/X_test.txt", col.names = var_names)
test <- cbind(subject_test, y_test, X_test)
## Merge the test and the train sets
merged_data <- rbind(test, train)
#######################################################################################################
#STEP 2. Extract only the measurements on the mean and standard deviation for each measurement.
#######################################################################################################
mean_std <- select(merged_data, subject, activity, matches("mean()|std()"), -matches("meanFreq|angle"))
#######################################################################################################
#STEP 3. Use descriptive activity names to name the activities in the data set
#######################################################################################################
y_labels <- read.table(file = "./Data/UCI HAR Dataset/activity_labels.txt")
mean_std_lab <- merge(mean_std, y_labels, by.x = "activity", by.y = "V1")
tidy <- mean_std_lab %>%
  mutate(activity = V2) %>%
  select(-V2) %>%
  group_by(activity, subject) %>%
  summarise_each(funs(mean))
#######################################################################################################
#STEP 4. Appropriately label the data set with descriptive variable names
#######################################################################################################
VarNames<- colnames(tidy) %>%
  gsub(pattern = "BodyBody", replacement = "Body", fixed = TRUE) %>%
  gsub(pattern = "...", replacement = ".", fixed = TRUE) %>%
  gsub(pattern = "..", replacement = "", fixed = TRUE)
colnames(tidy) <- VarNames
#######################################################################################################
#STEP 5. Create a  tidy data set with the average of each variable for each activity and each subject
#######################################################################################################
write.table(tidy, file ="TidyData.txt", row.names = FALSE)


