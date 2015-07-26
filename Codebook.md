## Codebook
The initial dataset was obtained through experiments carried out by a group of 30 volunteers. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the scientists captured a set of signals (ex. tGravityAccMag, fBodyACCJerk-XYZ) and then estimated a set of variables from them (ex. mean(), energy(), enthropy(), etc.). The initial dataset consists of the training data (70% of observations) and the test data (30% of observations) stored in different files. 

The new dataset contains 68 variables, which are the measurements on the mean and standard deviation, estimated from the following signals: tBodyAcc-XYZ, tGravityAcc-XYZ, tBodyAccJerk-XYZ, tBodyGyro-XYZ, tBodyGyroJerk-XYZ, tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag, fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccMag, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. Note that "Weighted average of the frequency components" (meanFreq()) variable and additional vectors used on the angle() variable were excluded from the subset.

The new dataset groups all observations by activity type and subject and summarises them by calculating the mean of each variable for each subject within each activity type.

### How to read and interpret the variable names:
t: time domain signal
f: frequency domain signal
BodyAcc: Body acceleration signal
GravityAcc: Gravity acceleration signal
Jerk: Jerk signal
Mag: magnitude
X: signal in the X direction
Y: signal in the Y direction
Z: signal in the Z direction
mean: mean of the signal
std: standard deviation of the singnal

1. activity (Factor): type of activity performed by subjects. Includes WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING
2. subject (int): ID number of volunteers participating in the experiment 
3. tBodyAcc.mean.X (num) 
4. tBodyAcc.mean.Y (num) 
5. tBodyAcc.mean.Z (num) 
6. tBodyAcc.std.X (num)     
7. tBodyAcc.std.Y (num) 
8. tBodyAcc.std.Z (num) 
9. tGravityAcc.mean.X (num) 
10. tGravityAcc.mean.Y (num) 
11. tGravityAcc.mean.Z (num) 
12. tGravityAcc.std.X (num) 
13. tGravityAcc.std.Y (num) 
14. tGravityAcc.std.Z (num) 
15. tBodyAccJerk.mean.X (num) 
16. tBodyAccJerk.mean.Y (num) 
17. tBodyAccJerk.mean.Z (num) 
18. tBodyAccJerk.std.X (num) 
19. tBodyAccJerk.std.Y (num) 
20. tBodyAccJerk.std.Z (num) 
21. tBodyGyro.mean.X (num)    
22. tBodyGyro.mean.Y (num) 
23. tBodyGyro.mean.Z (num) 
24. tBodyGyro.std.X (num) 
25. tBodyGyro.std.Y (num) 
26. tBodyGyro.std.Z (num) 
27. tBodyGyroJerk.mean.X (num) 
28. tBodyGyroJerk.mean.Y (num) 
29. tBodyGyroJerk.mean.Z (num) 
30. tBodyGyroJerk.std.X (num) 
31. tBodyGyroJerk.std.Y (num) 
32. tBodyGyroJerk.std.Z (num) 
33. tBodyAccMag.mean (num) 
34. tBodyAccMag.std (num) 
35. tGravityAccMag.mean (num) 
36. tGravityAccMag.std (num) 
37. tBodyAccJerkMag.mean (num) 
38. tBodyAccJerkMag.std (num) 
39. tBodyGyroMag.mean (num) 
40. tBodyGyroMag.std (num) 
41. tBodyGyroJerkMag.mean (num) 
42. tBodyGyroJerkMag.std (num) 
43. fBodyAcc.mean.X (num) 
44. fBodyAcc.mean.Y (num) 
45. fBodyAcc.mean.Z (num) 
46. fBodyAcc.std.X (num) 
47. fBodyAcc.std.Y (num) 
48. fBodyAcc.std.Z (num) 
49. fBodyAccJerk.mean.X (num) 
50. fBodyAccJerk.mean.Y (num) 
51. fBodyAccJerk.mean.Z (num) 
52. fBodyAccJerk.std.X (num) 
53. fBodyAccJerk.std.Y (num) 
54. fBodyAccJerk.std.Z (num) 
55. fBodyGyro.mean.X (num) 
56. fBodyGyro.mean.Y (num) 
57. fBodyGyro.mean.Z (num)    
58. fBodyGyro.std.X (num) 
59. fBodyGyro.std.Y (num) 
60. fBodyGyro.std.Z (num) 
61. fBodyAccMag.mean (num)
62. fBodyAccMag.std (num) 
63. fBodyAccJerkMag.mean (num) 
64. fBodyAccJerkMag.std (num) 
65. fBodyGyroMag.mean (num) 
66. fBodyGyroMag.std (num)  
67. fBodyGyroJerkMag.mean (num) 
68. fBodyGyroJerkMag.std (num)
