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

Only Column having ".\*Mean.\*|.\*StandardDev.\*" as regular expression selects 79 features from the original data set.
Combined with subject identifiers `subject` and activity labels `activity`, this makes up the
81 variables of the processed raw data set.

The training and test subsets of the original dataset were combined to produce final raw dataset.

### Tidy data set

Tidy data set contains the average of all feature standard deviation and mean values of the raw dataset. 
Original variable names were modified in the follonwing way:

 1. Replaced `-mean` with `-Mean`
 2. Replaced `-std` with `-StandardDev`
 3. Removed parenthesis `()`
 4. Removed all '-' from the variable names at the end


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
 `tBodyAcc-std()-X`  | `tBodyAccStandardDevX`
 `tBodyAcc-std()-Y`  | `tBodyAccStandardDevY`
 `tBodyAcc-std()-Z`  | `tBodyAccStandardDevZ`


### All the variables are listed below


[1] "tBodyAccMeanX"                  
 [2] "tBodyAccMeanY"                  
 [3] "tBodyAccMeanZ"                  
 [4] "tBodyAccStandardDevX"           
 [5] "tBodyAccStandardDevY"           
 [6] "tBodyAccStandardDevZ"           
 [7] "tGravityAccMeanX"               
 [8] "tGravityAccMeanY"               
 [9] "tGravityAccMeanZ"               
[10] "tGravityAccStandardDevX"        
[11] "tGravityAccStandardDevY"        
[12] "tGravityAccStandardDevZ"        
[13] "tBodyAccJerkMeanX"              
[14] "tBodyAccJerkMeanY"              
[15] "tBodyAccJerkMeanZ"              
[16] "tBodyAccJerkStandardDevX"       
[17] "tBodyAccJerkStandardDevY"       
[18] "tBodyAccJerkStandardDevZ"       
[19] "tBodyGyroMeanX"                 
[20] "tBodyGyroMeanY"                 
[21] "tBodyGyroMeanZ"                 
[22] "tBodyGyroStandardDevX"          
[23] "tBodyGyroStandardDevY"          
[24] "tBodyGyroStandardDevZ"          
[25] "tBodyGyroJerkMeanX"             
[26] "tBodyGyroJerkMeanY"             
[27] "tBodyGyroJerkMeanZ"             
[28] "tBodyGyroJerkStandardDevX"      
[29] "tBodyGyroJerkStandardDevY"      
[30] "tBodyGyroJerkStandardDevZ"      
[31] "tBodyAccMagMean"                
[32] "tBodyAccMagStandardDev"         
[33] "tGravityAccMagMean"             
[34] "tGravityAccMagStandardDev"      
[35] "tBodyAccJerkMagMean"            
[36] "tBodyAccJerkMagStandardDev"     
[37] "tBodyGyroMagMean"               
[38] "tBodyGyroMagStandardDev"        
[39] "tBodyGyroJerkMagMean"           
[40] "tBodyGyroJerkMagStandardDev"    
[41] "fBodyAccMeanX"                  
[42] "fBodyAccMeanY"                  
[43] "fBodyAccMeanZ"                  
[44] "fBodyAccStandardDevX"           
[45] "fBodyAccStandardDevY"           
[46] "fBodyAccStandardDevZ"           
[47] "fBodyAccMeanFreqX"              
[48] "fBodyAccMeanFreqY"              
[49] "fBodyAccMeanFreqZ"              
[50] "fBodyAccJerkMeanX"              
[51] "fBodyAccJerkMeanY"              
[52] "fBodyAccJerkMeanZ"              
[53] "fBodyAccJerkStandardDevX"       
[54] "fBodyAccJerkStandardDevY"       
[55] "fBodyAccJerkStandardDevZ"       
[56] "fBodyAccJerkMeanFreqX"          
[57] "fBodyAccJerkMeanFreqY"          
[58] "fBodyAccJerkMeanFreqZ"          
[59] "fBodyGyroMeanX"                 
[60] "fBodyGyroMeanY"                 
[61] "fBodyGyroMeanZ"                 
[62] "fBodyGyroStandardDevX"          
[63] "fBodyGyroStandardDevY"          
[64] "fBodyGyroStandardDevZ"          
[65] "fBodyGyroMeanFreqX"             
[66] "fBodyGyroMeanFreqY"             
[67] "fBodyGyroMeanFreqZ"             
[68] "fBodyAccMagMean"                
[69] "fBodyAccMagStandardDev"         
[70] "fBodyAccMagMeanFreq"            
[71] "fBodyBodyAccJerkMagMean"        
[72] "fBodyBodyAccJerkMagStandardDev" 
[73] "fBodyBodyAccJerkMagMeanFreq"    
[74] "fBodyBodyGyroMagMean"           
[75] "fBodyBodyGyroMagStandardDev"    
[76] "fBodyBodyGyroMagMeanFreq"       
[77] "fBodyBodyGyroJerkMagMean"       
[78] "fBodyBodyGyroJerkMagStandardDev"
[79] "fBodyBodyGyroJerkMagMeanFreq"   
[80] "activity"                       
[81] "subject"


