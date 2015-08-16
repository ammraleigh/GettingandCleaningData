---
title: "Code Book : Getting and Cleaning Data Course Project"
author: "ann"
date: "August 15, 2015"
output: html_document
---

##**Overview**  

This code book describes the raw and tidy data sets used in the Getting and Cleaning Data course project.  

##**Data Overview**

The raw data set contains data gathered from wearable computing devices that help people monitor and track their physical activity. A full description of this data and its use is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data for the project was obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

##**Data Description**

 - The data was gathered from **30 subjects** during **6 different average daily living (ADL) activities ** while carrying a waist-mounted smartphone with embedded inertial sensors.
 - The subjects were randomly selected into two sets: 70% for training and 30% for test formulation (21 training and 9 test subjects respectively)  
 - While performing the activities the wearable device would collect raw sensor data. From this raw data **561 sensor statistics variables** ('features') were derived per subject per activity. 

The raw data was delivered in multiple files:

        - README.txt               // Description of the raw data set
        - features_info.txt        // Shows information about the variables used on the feature vector.
        - features.txt             // List of all features (sensor statistics)
        - activiy labels.txt       // (6,2) 6 numeric activity levels, 6 character activity descriptions  
        - test/subject_test.txt    // (2947,1) 2947 numeric SubjectIds for test y~x data (1 empty row)
        - test/X_test.txt          // (2947,561) 2947x561 sensor statistics for test subjects (1 empty row) 
        - text/y_test.txt          // (2947,1) 2947 numeric activity levels (1 empty row) 
        - test/Inertial Signals/*  // Not Used (See Appendix for details) 
        - train/subject_train.txt  // (7353,1) 7353 numeric SubjectIds for train y~x data (1 empty row) 
        - train/X_train.txt        // (7353,561) 7353x561 sensor statistics for training subjects (1 empty row)  
        - train/y_train.txt        // (7353,1) 7353 numeric activity levels (1 empty row) 
        - train/Inertial Signals/* // Not Used (See Appendix for details) 
        
X_train.txt Detail:  

All 30 subjects were recorded performing all 6 activities. However the rows of data sampled by the devices were not all the same for each subject and activity. The following table illustrates the varying information recorded per training subject.

Note: See Appendix for 561 column descriptions

![tidyData2](https://github.com/ammraleigh/GettingAndCleaningData/raw/master/TrainSubjectRowCnt.png)

X_test.txt Detail:  

All 30 subjects were recorded performing all 6 activities. However the rows of data sampled by the devices were not all the same for each subject and activity. The following table illustrates these varying information recorded per test subject.   

Note: See Appendix for 561 column descriptions

![tidyData2](https://github.com/ammraleigh/GettingAndCleaningData/raw/master/TestSubjectRowCnt.png)

### Project Deliverable

**tidyDataSet2**

For each SubjectId, SubjectType, and Activity the data set supplies the mean of MeasureMean and mean of MeasureSD. (Rows = 30 subjects * 6 activities = 180)  

![tidyData2](https://github.com/ammraleigh/GettingAndCleaningData/raw/master/tidyDataSet2.png)


###Tidy Data Variables  

**SubjectId**  
        *type*: integer  
        *description*: Identification number assigned to subject  
        *values* : Sequencial and assigned in raw data.  


**SubjectType**  
        *type*: Factor  
        *description* : Type of subject, either a subject select for developing the formula or a subject selected to be used to test the formula  
        *values* :   

        numeric         character  
        1               Test  
        2               Training  

**Activity**                                            
        *type* : Factor  
        *description* : Activity levels and their associated descriptions  
        *values* :   

        numeric         character  
        1               WALKING  
        2               WALKING_UPSTAIRS  
        3               WALKING_DOWNSTAIRS  
        4               SITTING  
        5               STANDING  
        6               LAYING  
        
**MeasureMean**                                        
        *type* : numeric  
        *description* : Mean of the 561 wearable device derived statistics.  See the Appendic for descriptions of V1-V561 statistics.  
        *values:*       Continous data from raw data. 

**MeasureSD**                                        
        *type* : numeric  
        *description* : Standard deviation of the 561 wearable device derived statistics.  See Appendic for descriptions of V1-V561 statistics.  
        *values* : Continous data from raw data.

#Appendix - 561 Wearable Device Sensor Statistics  

The following is a list of the 561 statistics termed 'features' that are derived from the wearable device sensor output. These statistics were delivered as a feature vector represented by row data within the raw data files X_train and X_test.txt These files were previously described in the main section of this code book. The statistic descriptions below are copied directly features.txt document in the raw data package and are repeated here for completeness.   

The documentation also indicates these statistics are dervied from sensor raw data output contained in folders "\test\Inertial Signals" and "\train\Inertial Signals". Since these derived statistics were already calculated and supplied as row data within X_train and X_test.txt files the raw sensor output data within the "Inertial Signals" folders was not needed and hence not included in any processing for this project.    

    V1 tBodyAcc-mean()-X  
    V2 tBodyAcc-mean()-Y  
    V3 tBodyAcc-mean()-Z  
    V4 tBodyAcc-std()-X  
    V5 tBodyAcc-std()-Y  
    V6 tBodyAcc-std()-Z  
    V7 tBodyAcc-mad()-X  
    V8 tBodyAcc-mad()-Y  
    V9 tBodyAcc-mad()-Z  
    V10 tBodyAcc-max()-X  
    V11 tBodyAcc-max()-Y  
    V12 tBodyAcc-max()-Z  
    V13 tBodyAcc-min()-X  
    V14 tBodyAcc-min()-Y  
    V15 tBodyAcc-min()-Z  
    V16 tBodyAcc-sma()  
    V17 tBodyAcc-energy()-X  
    V18 tBodyAcc-energy()-Y  
    V19 tBodyAcc-energy()-Z  
    V20 tBodyAcc-iqr()-X  
    V21 tBodyAcc-iqr()-Y  
    V22 tBodyAcc-iqr()-Z  
    V23 tBodyAcc-entropy()-X  
    V24 tBodyAcc-entropy()-Y  
    V25 tBodyAcc-entropy()-Z  
    V26 tBodyAcc-arCoeff()-X,1  
    V27 tBodyAcc-arCoeff()-X,2  
    V28 tBodyAcc-arCoeff()-X,3  
    V29 tBodyAcc-arCoeff()-X,4  
    V30 tBodyAcc-arCoeff()-Y,1  
    V31 tBodyAcc-arCoeff()-Y,2  
    V32 tBodyAcc-arCoeff()-Y,3  
    V33 tBodyAcc-arCoeff()-Y,4  
    V34 tBodyAcc-arCoeff()-Z,1  
    V35 tBodyAcc-arCoeff()-Z,2  
    V36 tBodyAcc-arCoeff()-Z,3  
    V37 tBodyAcc-arCoeff()-Z,4  
    V38 tBodyAcc-correlation()-X,Y  
    V39 tBodyAcc-correlation()-X,Z  
    V40 tBodyAcc-correlation()-Y,Z  
    V41 tGravityAcc-mean()-X  
    V42 tGravityAcc-mean()-Y  
    V43 tGravityAcc-mean()-Z  
    V44 tGravityAcc-std()-X  
    V45 tGravityAcc-std()-Y  
    V46 tGravityAcc-std()-Z  
    V47 tGravityAcc-mad()-X  
    V48 tGravityAcc-mad()-Y  
    V49 tGravityAcc-mad()-Z  
    V50 tGravityAcc-max()-X  
    V51 tGravityAcc-max()-Y  
    V52 tGravityAcc-max()-Z  
    V53 tGravityAcc-min()-X  
    V54 tGravityAcc-min()-Y  
    V55 tGravityAcc-min()-Z  
    V56 tGravityAcc-sma()  
    V57 tGravityAcc-energy()-X  
    V58 tGravityAcc-energy()-Y  
    V59 tGravityAcc-energy()-Z  
    V60 tGravityAcc-iqr()-X  
    V61 tGravityAcc-iqr()-Y  
    V62 tGravityAcc-iqr()-Z  
    V63 tGravityAcc-entropy()-X  
    V64 tGravityAcc-entropy()-Y  
    V65 tGravityAcc-entropy()-Z  
    V66 tGravityAcc-arCoeff()-X,1  
    V67 tGravityAcc-arCoeff()-X,2  
    V68 tGravityAcc-arCoeff()-X,3  
    V69 tGravityAcc-arCoeff()-X,4  
    V70 tGravityAcc-arCoeff()-Y,1  
    V71 tGravityAcc-arCoeff()-Y,2  
    V72 tGravityAcc-arCoeff()-Y,3  
    V73 tGravityAcc-arCoeff()-Y,4  
    V74 tGravityAcc-arCoeff()-Z,1  
    V75 tGravityAcc-arCoeff()-Z,2  
    V76 tGravityAcc-arCoeff()-Z,3  
    V77 tGravityAcc-arCoeff()-Z,4  
    V78 tGravityAcc-correlation()-X,Y  
    V79 tGravityAcc-correlation()-X,Z  
    V80 tGravityAcc-correlation()-Y,Z  
    V81 tBodyAccJerk-mean()-X  
    V82 tBodyAccJerk-mean()-Y  
    V83 tBodyAccJerk-mean()-Z  
    V84 tBodyAccJerk-std()-X  
    V85 tBodyAccJerk-std()-Y  
    V86 tBodyAccJerk-std()-Z  
    V87 tBodyAccJerk-mad()-X  
    V88 tBodyAccJerk-mad()-Y  
    V89 tBodyAccJerk-mad()-Z  
    V90 tBodyAccJerk-max()-X  
    V91 tBodyAccJerk-max()-Y  
    V92 tBodyAccJerk-max()-Z  
    V93 tBodyAccJerk-min()-X  
    V94 tBodyAccJerk-min()-Y  
    V95 tBodyAccJerk-min()-Z  
    V96 tBodyAccJerk-sma()  
    V97 tBodyAccJerk-energy()-X  
    V98 tBodyAccJerk-energy()-Y  
    V99 tBodyAccJerk-energy()-Z  
    V100 tBodyAccJerk-iqr()-X  
    V101 tBodyAccJerk-iqr()-Y  
    V102 tBodyAccJerk-iqr()-Z  
    V103 tBodyAccJerk-entropy()-X  
    V104 tBodyAccJerk-entropy()-Y  
    V105 tBodyAccJerk-entropy()-Z  
    V106 tBodyAccJerk-arCoeff()-X,1  
    V107 tBodyAccJerk-arCoeff()-X,2  
    V108 tBodyAccJerk-arCoeff()-X,3  
    V109 tBodyAccJerk-arCoeff()-X,4  
    V110 tBodyAccJerk-arCoeff()-Y,1  
    V111 tBodyAccJerk-arCoeff()-Y,2  
    V112 tBodyAccJerk-arCoeff()-Y,3  
    V113 tBodyAccJerk-arCoeff()-Y,4  
    V114 tBodyAccJerk-arCoeff()-Z,1  
    V115 tBodyAccJerk-arCoeff()-Z,2  
    V116 tBodyAccJerk-arCoeff()-Z,3  
    V117 tBodyAccJerk-arCoeff()-Z,4  
    V118 tBodyAccJerk-correlation()-X,Y  
    V119 tBodyAccJerk-correlation()-X,Z  
    V120 tBodyAccJerk-correlation()-Y,Z  
    V121 tBodyGyro-mean()-X  
    V122 tBodyGyro-mean()-Y  
    V123 tBodyGyro-mean()-Z  
    V124 tBodyGyro-std()-X  
    V125 tBodyGyro-std()-Y  
    V126 tBodyGyro-std()-Z  
    V127 tBodyGyro-mad()-X  
    V128 tBodyGyro-mad()-Y  
    V129 tBodyGyro-mad()-Z  
    V130 tBodyGyro-max()-X  
    V131 tBodyGyro-max()-Y  
    V132 tBodyGyro-max()-Z  
    V133 tBodyGyro-min()-X  
    V134 tBodyGyro-min()-Y  
    V135 tBodyGyro-min()-Z  
    V136 tBodyGyro-sma()  
    V137 tBodyGyro-energy()-X  
    V138 tBodyGyro-energy()-Y  
    V139 tBodyGyro-energy()-Z  
    V140 tBodyGyro-iqr()-X  
    V141 tBodyGyro-iqr()-Y  
    V142 tBodyGyro-iqr()-Z  
    V143 tBodyGyro-entropy()-X  
    V144 tBodyGyro-entropy()-Y  
    V145 tBodyGyro-entropy()-Z  
    V146 tBodyGyro-arCoeff()-X,1  
    V147 tBodyGyro-arCoeff()-X,2  
    V148 tBodyGyro-arCoeff()-X,3  
    V149 tBodyGyro-arCoeff()-X,4  
    V150 tBodyGyro-arCoeff()-Y,1  
    V151 tBodyGyro-arCoeff()-Y,2  
    V152 tBodyGyro-arCoeff()-Y,3  
    V153 tBodyGyro-arCoeff()-Y,4  
    V154 tBodyGyro-arCoeff()-Z,1  
    V155 tBodyGyro-arCoeff()-Z,2  
    V156 tBodyGyro-arCoeff()-Z,3  
    V157 tBodyGyro-arCoeff()-Z,4  
    V158 tBodyGyro-correlation()-X,Y  
    V159 tBodyGyro-correlation()-X,Z  
    V160 tBodyGyro-correlation()-Y,Z  
    V161 tBodyGyroJerk-mean()-X  
    V162 tBodyGyroJerk-mean()-Y  
    V163 tBodyGyroJerk-mean()-Z  
    V164 tBodyGyroJerk-std()-X  
    V165 tBodyGyroJerk-std()-Y  
    V166 tBodyGyroJerk-std()-Z  
    V167 tBodyGyroJerk-mad()-X  
    V168 tBodyGyroJerk-mad()-Y  
    V169 tBodyGyroJerk-mad()-Z  
    V170 tBodyGyroJerk-max()-X  
    V171 tBodyGyroJerk-max()-Y  
    V172 tBodyGyroJerk-max()-Z  
    V173 tBodyGyroJerk-min()-X  
    V174 tBodyGyroJerk-min()-Y  
    V175 tBodyGyroJerk-min()-Z  
    V176 tBodyGyroJerk-sma()  
    V177 tBodyGyroJerk-energy()-X  
    V178 tBodyGyroJerk-energy()-Y  
    V179 tBodyGyroJerk-energy()-Z  
    V180 tBodyGyroJerk-iqr()-X  
    V181 tBodyGyroJerk-iqr()-Y  
    V182 tBodyGyroJerk-iqr()-Z  
    V183 tBodyGyroJerk-entropy()-X  
    V184 tBodyGyroJerk-entropy()-Y  
    V185 tBodyGyroJerk-entropy()-Z  
    V186 tBodyGyroJerk-arCoeff()-X,1  
    V187 tBodyGyroJerk-arCoeff()-X,2  
    V188 tBodyGyroJerk-arCoeff()-X,3  
    V189 tBodyGyroJerk-arCoeff()-X,4  
    V190 tBodyGyroJerk-arCoeff()-Y,1  
    V191 tBodyGyroJerk-arCoeff()-Y,2  
    V192 tBodyGyroJerk-arCoeff()-Y,3  
    V193 tBodyGyroJerk-arCoeff()-Y,4  
    V194 tBodyGyroJerk-arCoeff()-Z,1  
    V195 tBodyGyroJerk-arCoeff()-Z,2  
    V196 tBodyGyroJerk-arCoeff()-Z,3  
    V197 tBodyGyroJerk-arCoeff()-Z,4  
    V198 tBodyGyroJerk-correlation()-X,Y  
    V199 tBodyGyroJerk-correlation()-X,Z  
    V200 tBodyGyroJerk-correlation()-Y,Z  
    V201 tBodyAccMag-mean()  
    V202 tBodyAccMag-std()  
    V203 tBodyAccMag-mad()  
    V204 tBodyAccMag-max()  
    V205 tBodyAccMag-min()  
    V206 tBodyAccMag-sma()  
    V207 tBodyAccMag-energy()  
    V208 tBodyAccMag-iqr()  
    V209 tBodyAccMag-entropy()  
    V210 tBodyAccMag-arCoeff()1  
    V211 tBodyAccMag-arCoeff()2  
    V212 tBodyAccMag-arCoeff()3  
    V213 tBodyAccMag-arCoeff()4  
    V214 tGravityAccMag-mean()  
    V215 tGravityAccMag-std()  
    V216 tGravityAccMag-mad()  
    V217 tGravityAccMag-max()  
    V218 tGravityAccMag-min()  
    V219 tGravityAccMag-sma()  
    V220 tGravityAccMag-energy()  
    V221 tGravityAccMag-iqr()  
    V222 tGravityAccMag-entropy()  
    V223 tGravityAccMag-arCoeff()1  
    V224 tGravityAccMag-arCoeff()2  
    V225 tGravityAccMag-arCoeff()3  
    V226 tGravityAccMag-arCoeff()4  
    V227 tBodyAccJerkMag-mean()  
    V228 tBodyAccJerkMag-std()  
    V229 tBodyAccJerkMag-mad()  
    V230 tBodyAccJerkMag-max()  
    V231 tBodyAccJerkMag-min()  
    V232 tBodyAccJerkMag-sma()  
    V233 tBodyAccJerkMag-energy()  
    V234 tBodyAccJerkMag-iqr()  
    V235 tBodyAccJerkMag-entropy()  
    V236 tBodyAccJerkMag-arCoeff()1  
    V237 tBodyAccJerkMag-arCoeff()2  
    V238 tBodyAccJerkMag-arCoeff()3  
    V239 tBodyAccJerkMag-arCoeff()4  
    V240 tBodyGyroMag-mean()  
    V241 tBodyGyroMag-std()  
    V242 tBodyGyroMag-mad()  
    V243 tBodyGyroMag-max()  
    V244 tBodyGyroMag-min()  
    V245 tBodyGyroMag-sma()  
    V246 tBodyGyroMag-energy()  
    V247 tBodyGyroMag-iqr()  
    V248 tBodyGyroMag-entropy()  
    V249 tBodyGyroMag-arCoeff()1  
    V250 tBodyGyroMag-arCoeff()2  
    V251 tBodyGyroMag-arCoeff()3  
    V252 tBodyGyroMag-arCoeff()4  
    V253 tBodyGyroJerkMag-mean()  
    V254 tBodyGyroJerkMag-std()  
    V255 tBodyGyroJerkMag-mad()  
    V256 tBodyGyroJerkMag-max()  
    V257 tBodyGyroJerkMag-min()  
    V258 tBodyGyroJerkMag-sma()  
    V259 tBodyGyroJerkMag-energy()  
    V260 tBodyGyroJerkMag-iqr()  
    V261 tBodyGyroJerkMag-entropy()  
    V262 tBodyGyroJerkMag-arCoeff()1  
    V263 tBodyGyroJerkMag-arCoeff()2  
    V264 tBodyGyroJerkMag-arCoeff()3  
    V265 tBodyGyroJerkMag-arCoeff()4  
    V266 fBodyAcc-mean()-X  
    V267 fBodyAcc-mean()-Y  
    V268 fBodyAcc-mean()-Z  
    V269 fBodyAcc-std()-X  
    V270 fBodyAcc-std()-Y  
    V271 fBodyAcc-std()-Z  
    V272 fBodyAcc-mad()-X  
    V273 fBodyAcc-mad()-Y  
    V274 fBodyAcc-mad()-Z  
    V275 fBodyAcc-max()-X  
    V276 fBodyAcc-max()-Y  
    V277 fBodyAcc-max()-Z  
    V278 fBodyAcc-min()-X  
    V279 fBodyAcc-min()-Y  
    V280 fBodyAcc-min()-Z  
    V281 fBodyAcc-sma()  
    V282 fBodyAcc-energy()-X  
    V283 fBodyAcc-energy()-Y  
    V284 fBodyAcc-energy()-Z  
    V285 fBodyAcc-iqr()-X  
    V286 fBodyAcc-iqr()-Y  
    V287 fBodyAcc-iqr()-Z  
    V288 fBodyAcc-entropy()-X  
    V289 fBodyAcc-entropy()-Y  
    V290 fBodyAcc-entropy()-Z  
    V291 fBodyAcc-maxInds-X  
    V292 fBodyAcc-maxInds-Y  
    V293 fBodyAcc-maxInds-Z  
    V294 fBodyAcc-meanFreq()-X  
    V295 fBodyAcc-meanFreq()-Y  
    V296 fBodyAcc-meanFreq()-Z  
    V297 fBodyAcc-skewness()-X  
    V298 fBodyAcc-kurtosis()-X  
    V299 fBodyAcc-skewness()-Y  
    V300 fBodyAcc-kurtosis()-Y  
    V301 fBodyAcc-skewness()-Z  
    V302 fBodyAcc-kurtosis()-Z  
    V303 fBodyAcc-bandsEnergy()-1,8  
    V304 fBodyAcc-bandsEnergy()-9,16  
    V305 fBodyAcc-bandsEnergy()-17,24  
    V306 fBodyAcc-bandsEnergy()-25,32  
    V307 fBodyAcc-bandsEnergy()-33,40  
    V308 fBodyAcc-bandsEnergy()-41,48  
    V309 fBodyAcc-bandsEnergy()-49,56  
    V310 fBodyAcc-bandsEnergy()-57,64  
    V311 fBodyAcc-bandsEnergy()-1,16  
    V312 fBodyAcc-bandsEnergy()-17,32  
    V313 fBodyAcc-bandsEnergy()-33,48  
    V314 fBodyAcc-bandsEnergy()-49,64  
    V315 fBodyAcc-bandsEnergy()-1,24  
    V316 fBodyAcc-bandsEnergy()-25,48  
    V317 fBodyAcc-bandsEnergy()-1,8  
    V318 fBodyAcc-bandsEnergy()-9,16  
    V319 fBodyAcc-bandsEnergy()-17,24  
    V320 fBodyAcc-bandsEnergy()-25,32  
    V321 fBodyAcc-bandsEnergy()-33,40  
    V322 fBodyAcc-bandsEnergy()-41,48  
    V323 fBodyAcc-bandsEnergy()-49,56  
    V324 fBodyAcc-bandsEnergy()-57,64  
    V325 fBodyAcc-bandsEnergy()-1,16  
    V326 fBodyAcc-bandsEnergy()-17,32  
    V327 fBodyAcc-bandsEnergy()-33,48  
    V328 fBodyAcc-bandsEnergy()-49,64  
    V329 fBodyAcc-bandsEnergy()-1,24  
    V330 fBodyAcc-bandsEnergy()-25,48  
    V331 fBodyAcc-bandsEnergy()-1,8  
    V332 fBodyAcc-bandsEnergy()-9,16  
    V333 fBodyAcc-bandsEnergy()-17,24  
    V334 fBodyAcc-bandsEnergy()-25,32  
    V335 fBodyAcc-bandsEnergy()-33,40  
    V336 fBodyAcc-bandsEnergy()-41,48  
    V337 fBodyAcc-bandsEnergy()-49,56  
    V338 fBodyAcc-bandsEnergy()-57,64  
    V339 fBodyAcc-bandsEnergy()-1,16  
    V340 fBodyAcc-bandsEnergy()-17,32  
    V341 fBodyAcc-bandsEnergy()-33,48  
    V342 fBodyAcc-bandsEnergy()-49,64  
    V343 fBodyAcc-bandsEnergy()-1,24  
    V344 fBodyAcc-bandsEnergy()-25,48  
    V345 fBodyAccJerk-mean()-X  
    V346 fBodyAccJerk-mean()-Y  
    V347 fBodyAccJerk-mean()-Z  
    V348 fBodyAccJerk-std()-X  
    V349 fBodyAccJerk-std()-Y  
    V350 fBodyAccJerk-std()-Z  
    V351 fBodyAccJerk-mad()-X  
    V352 fBodyAccJerk-mad()-Y  
    V353 fBodyAccJerk-mad()-Z  
    V354 fBodyAccJerk-max()-X  
    V355 fBodyAccJerk-max()-Y  
    V356 fBodyAccJerk-max()-Z  
    V357 fBodyAccJerk-min()-X  
    V358 fBodyAccJerk-min()-Y  
    V359 fBodyAccJerk-min()-Z  
    V360 fBodyAccJerk-sma()  
    V361 fBodyAccJerk-energy()-X  
    V362 fBodyAccJerk-energy()-Y  
    V363 fBodyAccJerk-energy()-Z  
    V364 fBodyAccJerk-iqr()-X  
    V365 fBodyAccJerk-iqr()-Y  
    V366 fBodyAccJerk-iqr()-Z  
    V367 fBodyAccJerk-entropy()-X  
    V368 fBodyAccJerk-entropy()-Y  
    V369 fBodyAccJerk-entropy()-Z  
    V370 fBodyAccJerk-maxInds-X  
    V371 fBodyAccJerk-maxInds-Y  
    V372 fBodyAccJerk-maxInds-Z  
    V373 fBodyAccJerk-meanFreq()-X  
    V374 fBodyAccJerk-meanFreq()-Y  
    V375 fBodyAccJerk-meanFreq()-Z  
    V376 fBodyAccJerk-skewness()-X  
    V377 fBodyAccJerk-kurtosis()-X  
    V378 fBodyAccJerk-skewness()-Y  
    V379 fBodyAccJerk-kurtosis()-Y  
    V380 fBodyAccJerk-skewness()-Z  
    V381 fBodyAccJerk-kurtosis()-Z  
    V382 fBodyAccJerk-bandsEnergy()-1,8  
    V383 fBodyAccJerk-bandsEnergy()-9,16  
    V384 fBodyAccJerk-bandsEnergy()-17,24  
    V385 fBodyAccJerk-bandsEnergy()-25,32  
    V386 fBodyAccJerk-bandsEnergy()-33,40  
    V387 fBodyAccJerk-bandsEnergy()-41,48  
    V388 fBodyAccJerk-bandsEnergy()-49,56  
    V389 fBodyAccJerk-bandsEnergy()-57,64  
    V390 fBodyAccJerk-bandsEnergy()-1,16  
    V391 fBodyAccJerk-bandsEnergy()-17,32  
    V392 fBodyAccJerk-bandsEnergy()-33,48  
    V393 fBodyAccJerk-bandsEnergy()-49,64  
    V394 fBodyAccJerk-bandsEnergy()-1,24  
    V395 fBodyAccJerk-bandsEnergy()-25,48  
    V396 fBodyAccJerk-bandsEnergy()-1,8  
    V397 fBodyAccJerk-bandsEnergy()-9,16  
    V398 fBodyAccJerk-bandsEnergy()-17,24  
    V399 fBodyAccJerk-bandsEnergy()-25,32  
    V400 fBodyAccJerk-bandsEnergy()-33,40  
    V401 fBodyAccJerk-bandsEnergy()-41,48  
    V402 fBodyAccJerk-bandsEnergy()-49,56  
    V403 fBodyAccJerk-bandsEnergy()-57,64  
    V404 fBodyAccJerk-bandsEnergy()-1,16  
    V405 fBodyAccJerk-bandsEnergy()-17,32  
    V406 fBodyAccJerk-bandsEnergy()-33,48  
    V407 fBodyAccJerk-bandsEnergy()-49,64  
    V408 fBodyAccJerk-bandsEnergy()-1,24  
    V409 fBodyAccJerk-bandsEnergy()-25,48  
    V410 fBodyAccJerk-bandsEnergy()-1,8  
    V411 fBodyAccJerk-bandsEnergy()-9,16  
    V412 fBodyAccJerk-bandsEnergy()-17,24  
    V413 fBodyAccJerk-bandsEnergy()-25,32  
    V414 fBodyAccJerk-bandsEnergy()-33,40  
    V415 fBodyAccJerk-bandsEnergy()-41,48  
    V416 fBodyAccJerk-bandsEnergy()-49,56  
    V417 fBodyAccJerk-bandsEnergy()-57,64  
    V418 fBodyAccJerk-bandsEnergy()-1,16  
    V419 fBodyAccJerk-bandsEnergy()-17,32  
    V420 fBodyAccJerk-bandsEnergy()-33,48  
    V421 fBodyAccJerk-bandsEnergy()-49,64  
    V422 fBodyAccJerk-bandsEnergy()-1,24  
    V423 fBodyAccJerk-bandsEnergy()-25,48  
    V424 fBodyGyro-mean()-X  
    V425 fBodyGyro-mean()-Y  
    V426 fBodyGyro-mean()-Z  
    V427 fBodyGyro-std()-X  
    V428 fBodyGyro-std()-Y  
    V429 fBodyGyro-std()-Z  
    V430 fBodyGyro-mad()-X  
    V431 fBodyGyro-mad()-Y  
    V432 fBodyGyro-mad()-Z  
    V433 fBodyGyro-max()-X  
    V434 fBodyGyro-max()-Y  
    V435 fBodyGyro-max()-Z  
    V436 fBodyGyro-min()-X  
    V437 fBodyGyro-min()-Y  
    V438 fBodyGyro-min()-Z  
    V439 fBodyGyro-sma()  
    V440 fBodyGyro-energy()-X  
    V441 fBodyGyro-energy()-Y  
    V442 fBodyGyro-energy()-Z  
    V443 fBodyGyro-iqr()-X  
    V444 fBodyGyro-iqr()-Y  
    V445 fBodyGyro-iqr()-Z  
    V446 fBodyGyro-entropy()-X  
    V447 fBodyGyro-entropy()-Y  
    V448 fBodyGyro-entropy()-Z  
    V449 fBodyGyro-maxInds-X  
    V450 fBodyGyro-maxInds-Y  
    V451 fBodyGyro-maxInds-Z  
    V452 fBodyGyro-meanFreq()-X  
    V453 fBodyGyro-meanFreq()-Y  
    V454 fBodyGyro-meanFreq()-Z  
    V455 fBodyGyro-skewness()-X  
    V456 fBodyGyro-kurtosis()-X  
    V457 fBodyGyro-skewness()-Y  
    V458 fBodyGyro-kurtosis()-Y  
    V459 fBodyGyro-skewness()-Z  
    V460 fBodyGyro-kurtosis()-Z  
    V461 fBodyGyro-bandsEnergy()-1,8  
    V462 fBodyGyro-bandsEnergy()-9,16  
    V463 fBodyGyro-bandsEnergy()-17,24  
    V464 fBodyGyro-bandsEnergy()-25,32  
    V465 fBodyGyro-bandsEnergy()-33,40  
    V466 fBodyGyro-bandsEnergy()-41,48  
    V467 fBodyGyro-bandsEnergy()-49,56  
    V468 fBodyGyro-bandsEnergy()-57,64  
    V469 fBodyGyro-bandsEnergy()-1,16  
    V470 fBodyGyro-bandsEnergy()-17,32  
    V471 fBodyGyro-bandsEnergy()-33,48  
    V472 fBodyGyro-bandsEnergy()-49,64  
    V473 fBodyGyro-bandsEnergy()-1,24  
    V474 fBodyGyro-bandsEnergy()-25,48  
    V475 fBodyGyro-bandsEnergy()-1,8  
    V476 fBodyGyro-bandsEnergy()-9,16  
    V477 fBodyGyro-bandsEnergy()-17,24  
    V478 fBodyGyro-bandsEnergy()-25,32  
    V479 fBodyGyro-bandsEnergy()-33,40  
    V480 fBodyGyro-bandsEnergy()-41,48  
    V481 fBodyGyro-bandsEnergy()-49,56  
    V482 fBodyGyro-bandsEnergy()-57,64  
    V483 fBodyGyro-bandsEnergy()-1,16  
    V484 fBodyGyro-bandsEnergy()-17,32  
    V485 fBodyGyro-bandsEnergy()-33,48  
    V486 fBodyGyro-bandsEnergy()-49,64  
    V487 fBodyGyro-bandsEnergy()-1,24  
    V488 fBodyGyro-bandsEnergy()-25,48  
    V489 fBodyGyro-bandsEnergy()-1,8  
    V490 fBodyGyro-bandsEnergy()-9,16  
    V491 fBodyGyro-bandsEnergy()-17,24  
    V492 fBodyGyro-bandsEnergy()-25,32  
    V493 fBodyGyro-bandsEnergy()-33,40  
    V494 fBodyGyro-bandsEnergy()-41,48  
    V495 fBodyGyro-bandsEnergy()-49,56  
    V496 fBodyGyro-bandsEnergy()-57,64  
    V497 fBodyGyro-bandsEnergy()-1,16  
    V498 fBodyGyro-bandsEnergy()-17,32  
    V499 fBodyGyro-bandsEnergy()-33,48  
    V500 fBodyGyro-bandsEnergy()-49,64  
    V501 fBodyGyro-bandsEnergy()-1,24  
    V502 fBodyGyro-bandsEnergy()-25,48  
    V503 fBodyAccMag-mean()  
    V504 fBodyAccMag-std()  
    V505 fBodyAccMag-mad()  
    V506 fBodyAccMag-max()  
    V507 fBodyAccMag-min()  
    V508 fBodyAccMag-sma()  
    V509 fBodyAccMag-energy()  
    V510 fBodyAccMag-iqr()  
    V511 fBodyAccMag-entropy()  
    V512 fBodyAccMag-maxInds  
    V513 fBodyAccMag-meanFreq()  
    V514 fBodyAccMag-skewness()  
    V515 fBodyAccMag-kurtosis()  
    V516 fBodyBodyAccJerkMag-mean()  
    V517 fBodyBodyAccJerkMag-std()  
    V518 fBodyBodyAccJerkMag-mad()  
    V519 fBodyBodyAccJerkMag-max()  
    V520 fBodyBodyAccJerkMag-min()  
    V521 fBodyBodyAccJerkMag-sma()  
    V522 fBodyBodyAccJerkMag-energy()  
    V523 fBodyBodyAccJerkMag-iqr()  
    V524 fBodyBodyAccJerkMag-entropy()  
    V525 fBodyBodyAccJerkMag-maxInds  
    V526 fBodyBodyAccJerkMag-meanFreq()  
    V527 fBodyBodyAccJerkMag-skewness()  
    V528 fBodyBodyAccJerkMag-kurtosis()  
    V529 fBodyBodyGyroMag-mean()  
    V530 fBodyBodyGyroMag-std()  
    V531 fBodyBodyGyroMag-mad()  
    V532 fBodyBodyGyroMag-max()  
    V533 fBodyBodyGyroMag-min()  
    V534 fBodyBodyGyroMag-sma()  
    V535 fBodyBodyGyroMag-energy()  
    V536 fBodyBodyGyroMag-iqr()  
    V537 fBodyBodyGyroMag-entropy()  
    V538 fBodyBodyGyroMag-maxInds  
    V539 fBodyBodyGyroMag-meanFreq()  
    V540 fBodyBodyGyroMag-skewness()  
    V541 fBodyBodyGyroMag-kurtosis()  
    V542 fBodyBodyGyroJerkMag-mean()  
    V543 fBodyBodyGyroJerkMag-std()  
    V544 fBodyBodyGyroJerkMag-mad()  
    V545 fBodyBodyGyroJerkMag-max()  
    V546 fBodyBodyGyroJerkMag-min()  
    V547 fBodyBodyGyroJerkMag-sma()  
    V548 fBodyBodyGyroJerkMag-energy()  
    V549 fBodyBodyGyroJerkMag-iqr()  
    V550 fBodyBodyGyroJerkMag-entropy()  
    V551 fBodyBodyGyroJerkMag-maxInds  
    V552 fBodyBodyGyroJerkMag-meanFreq()  
    V553 fBodyBodyGyroJerkMag-skewness()  
    V554 fBodyBodyGyroJerkMag-kurtosis()  
    V555 angle(tBodyAccMean,gravity)  
    V556 angle(tBodyAccJerkMean),gravityMean)  
    V557 angle(tBodyGyroMean,gravityMean)  
    V558 angle(tBodyGyroJerkMean,gravityMean)  
    V559 angle(X,gravityMean)  
    V560 angle(Y,gravityMean)  
    V561 angle(Z,gravityMean)  
