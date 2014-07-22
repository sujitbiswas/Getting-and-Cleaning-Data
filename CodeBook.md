Getting and Cleaning Data
==============================================================


## Original Data

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. There original data comes from the smartphone accelerometer and gyroscope 3-axial raw signals, which have been processed using various signal processing techniques to measurement vector consisting of 561 features. For detailed description of the original dataset, please see `features_info.txt` in
the zipped dataset file.

- https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
- http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Conventions followed

Processing code and dataset variable naming follows the conventions described in 
[Google R Styde Guide](http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml).

## Data sets

### Raw data set

The raw dataset was created using the regular expression to filter out required
features, eg. the measurements on the mean and standard deviation for each measurement
from the original feature vector set 

`mean replaced with Mean & std replaced with StandardDev`

Only Column having ".*Mean.*|.*StandardDev.*" as regular expression selects 86 features from the original data set.
Combined with subject identifiers `Subject` and activity labels `Activity`, this makes up the
86 variables of the processed raw data set.

The training and test subsets of the original dataset were combined to produce final raw dataset.

### Tidy data set

Tidy data set contains the average of all feature standard deviation and mean values of the raw dataset. 
Original variable names were modified in the follonwing way:

 1. Replaced `-mean` with `Mean`
 2. Replaced `-std` with `StandardDev`
 3. Removed parenthesis `-()`


It should be noted that the variable names are formatted in camelCase, as described in 
[Google R Styde Guide](http://google-styleguide.googlecode.com/svn/trunk/Rguide.xml). 

#### Sample of renamed variables compared to original variable name

 Raw data            | Tidy data 
 --------------------|--------------
 `subject`           | `subject`
 `label`             | `label`
 `tBodyAcc-mean()-X` | `tBodyAccMeanX`
 `tBodyAcc-mean()-Y` | `tBodyAccMeanY`
 `tBodyAcc-mean()-Z` | `tBodyAccMeanZ`
 `tBodyAcc-std()-X`  | `tBodyAccStdX`
 `tBodyAcc-std()-Y`  | `tBodyAccStdY`
 `tBodyAcc-std()-Z`  | `tBodyAccStdZ`


 [1] "Activity"                          
 [2] "Subject"                           
 [3] "tBodyAcc-Mean-X"                   
 [4] "tBodyAcc-Mean-Y"                   
 [5] "tBodyAcc-Mean-Z"                   
 [6] "tBodyAcc-StandardDev-X"            
 [7] "tBodyAcc-StandardDev-Y"            
 [8] "tBodyAcc-StandardDev-Z"            
 [9] "tGravityAcc-Mean-X"                
[10] "tGravityAcc-Mean-Y"                
[11] "tGravityAcc-Mean-Z"                
[12] "tGravityAcc-StandardDev-X"         
[13] "tGravityAcc-StandardDev-Y"         
[14] "tGravityAcc-StandardDev-Z"         
[15] "tBodyAccJerk-Mean-X"               
[16] "tBodyAccJerk-Mean-Y"               
[17] "tBodyAccJerk-Mean-Z"               
[18] "tBodyAccJerk-StandardDev-X"        
[19] "tBodyAccJerk-StandardDev-Y"        
[20] "tBodyAccJerk-StandardDev-Z"        
[21] "tBodyGyro-Mean-X"                  
[22] "tBodyGyro-Mean-Y"                  
[23] "tBodyGyro-Mean-Z"                  
[24] "tBodyGyro-StandardDev-X"           
[25] "tBodyGyro-StandardDev-Y"           
[26] "tBodyGyro-StandardDev-Z"           
[27] "tBodyGyroJerk-Mean-X"              
[28] "tBodyGyroJerk-Mean-Y"              
[29] "tBodyGyroJerk-Mean-Z"              
[30] "tBodyGyroJerk-StandardDev-X"       
[31] "tBodyGyroJerk-StandardDev-Y"       
[32] "tBodyGyroJerk-StandardDev-Z"       
[33] "tBodyAccMag-Mean"                  
[34] "tBodyAccMag-StandardDev"           
[35] "tGravityAccMag-Mean"               
[36] "tGravityAccMag-StandardDev"        
[37] "tBodyAccJerkMag-Mean"              
[38] "tBodyAccJerkMag-StandardDev"       
[39] "tBodyGyroMag-Mean"                 
[40] "tBodyGyroMag-StandardDev"          
[41] "tBodyGyroJerkMag-Mean"             
[42] "tBodyGyroJerkMag-StandardDev"      
[43] "fBodyAcc-Mean-X"                   
[44] "fBodyAcc-Mean-Y"                   
[45] "fBodyAcc-Mean-Z"                   
[46] "fBodyAcc-StandardDev-X"            
[47] "fBodyAcc-StandardDev-Y"            
[48] "fBodyAcc-StandardDev-Z"            
[49] "fBodyAcc-MeanFreq-X"               
[50] "fBodyAcc-MeanFreq-Y"               
[51] "fBodyAcc-MeanFreq-Z"               
[52] "fBodyAccJerk-Mean-X"               
[53] "fBodyAccJerk-Mean-Y"               
[54] "fBodyAccJerk-Mean-Z"               
[55] "fBodyAccJerk-StandardDev-X"        
[56] "fBodyAccJerk-StandardDev-Y"        
[57] "fBodyAccJerk-StandardDev-Z"        
[58] "fBodyAccJerk-MeanFreq-X"           
[59] "fBodyAccJerk-MeanFreq-Y"           
[60] "fBodyAccJerk-MeanFreq-Z"           
[61] "fBodyGyro-Mean-X"                  
[62] "fBodyGyro-Mean-Y"                  
[63] "fBodyGyro-Mean-Z"                  
[64] "fBodyGyro-StandardDev-X"           
[65] "fBodyGyro-StandardDev-Y"           
[66] "fBodyGyro-StandardDev-Z"           
[67] "fBodyGyro-MeanFreq-X"              
[68] "fBodyGyro-MeanFreq-Y"              
[69] "fBodyGyro-MeanFreq-Z"              
[70] "fBodyAccMag-Mean"                  
[71] "fBodyAccMag-StandardDev"           
[72] "fBodyAccMag-MeanFreq"              
[73] "fBodyBodyAccJerkMag-Mean"          
[74] "fBodyBodyAccJerkMag-StandardDev"   
[75] "fBodyBodyAccJerkMag-MeanFreq"      
[76] "fBodyBodyGyroMag-Mean"             
[77] "fBodyBodyGyroMag-StandardDev"      
[78] "fBodyBodyGyroMag-MeanFreq"         
[79] "fBodyBodyGyroJerkMag-Mean"         
[80] "fBodyBodyGyroJerkMag-StandardDev"  
[81] "fBodyBodyGyroJerkMag-MeanFreq"     
[82] "angletBodyAccMean,gravity"         
[83] "angletBodyAccJerkMean,gravityMean"
[84] "angletBodyGyroMean,gravityMean"    
[85] "angletBodyGyroJerkMean,gravityMean"
[86] "angleX,gravityMean"                
[87] "angleY,gravityMean"                
[88] "angleZ,gravityMean" 
