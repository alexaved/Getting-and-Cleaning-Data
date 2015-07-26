# Course Project: creating a tidy dataset
The R script "run_analysis.R" takes the initial dataset "Human Activity Recognition using Smartphones" and transforms it into a new tidy dataset which can be used for later analysis.

The initial dataset was obtained through experiments carried out by a group of 30 volunteers. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the scientists captured a set of signals (ex. tGravityAccMag, fBodyACCJerk-XYZ) and then estimated a set of variables from them (ex. mean(), energy(), enthropy(), etc. - SEE Code book). The initial dataset consists of the training data (70% of observations) and the test data (30% of observations), stored in different files. Activity, subjects and features (signals) labels are also stored separately. 

The R script "run_analysis.R" performs several operations on the original dataset to create an independent tidy dataset, which displays the average of each variable (only a subset of variables is used, SEE BELOW) for each activity and each subject. The new dataset is presented in the wide format and meets the tidy data principles, because it contains one variable per column and one distinct observation per row.

## How R script "run_analysis.R" works
1. Creates a temporary file to which it downloads the original data and unzips it into the newly created directory "Data" located in your working directory. 
2. Reads into R files containing features names, subjects' ID numbers for each observation, activity ID numbers for each observation, training set and test set, using the function read.table and specifying the column names with the argument col.names. For the training and test sets column names are taken from the file with features names, by extracting the relevant column and trasforming it into a character vector.
3. Assembles the training set by column-binding (function cbind()) of the subjects' ID numbers, activity ID numbers and the training set (each object has the same number of rows)
4. Assembles the test set by column-binding (function cbind()) of the subjects' ID numbers, activity ID numbers and the test set (each object has the same number of rows)
5. Merges the training and test sets (concatenates) with function rbind()
6. Extracts only the measurements on the mean and standard deviation.
