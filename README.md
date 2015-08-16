---
title: "README : Getting and Cleaning Data Course Project"
author: "ann"
date: "August 15, 2015"
output: html_document
---

##**Overview**  

This repo contains the script and code book artifacts for the Coursera "Getting and Cleaning Data" course project.

There is only one R script maintained in the repository (run_analysis.R) and its purpose is to collect, process and clean the project raw data set into a useful tidy data set for later analysis.

A complete description of the project's raw and tidy data sets can be found in the project's code book (CookBook.md).

##**Project Description**   

The purpose of this project is to collect, work with, and clean a tidy data set that can be used for later analysis.  

The following is a list of the project instructions:

1 Merge the training and test data into one data set.  
2 Extract only the measurements on the mean and standard deviation for each measurement.  
3 Use descriptive activity names to name the activities in the data set  
4 Appropriately label the data set with descriptive variable names.  
5 From the data set in step 4, deliver a 2nd independent tidy data set with the average of each variable for each activity and each subject.  

The following are annotations to the project instructions that correspond to the run_analysis.R script which prepares the data:

1 Merge the training (dataTrain) and test (dataTest) data into one data set (tidyDataSet1).  
3 Use descriptive activity names: the tidyDataSet1 Activity variable uses the levels and descriptions provided in the raw data data (Activity_labels.txt)  
4 Appropriately label the data set with descriptive variable names: the following descriptive varible names were used to label the data in tidyDataSet1. All variables are described   in detail the *Tidy Data Variables* section of the project code book:  

        - SubjectId  
        - SubjectType  
        - Activity  
        - MeasureMean  
        - MeasureSD  
    
5 A 2nd independent tidy data set (tidyData2) containing the average of each variable for each activity and each subject was the final delivered output. This 2nd tidy data set was derived from tidyData1.  

**Initial Setup**  

The following steps describe how to setup the environment to create the tidyDataSet2 deliverable:  

1 Create a Project directory  
2 Download the zip file containing the raw data set:   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
3 Unzip the raw data set into Project/UCI HAR Dataset  
4 Download the run_analysis.R script from github.com into Project/GettingandCleaningData  
5 Using RStudio, set the session working directory to Project/GettingandCleaningData and run the run_analysis.R script.  
6 The tidyDataSet2 will be output as Project/tidyDataSet2.txt  

**Processing**  

The run_analysis.R script performs the following activites to create the tidyDataSet2 deliverable:

**Prepare Test Data**  
1 Read data from "Activity_labels.txt" into Activity Desc  
2 Read in "subject_test.txt" into dataTest and add the column name "SubjectID"  
3 Create a vector of nrow(dataTest) "Test"and add this column to the right of dataTest  
4 Read in Test data activity levels from "y_test.txt" as "Activity" into temp and convert the integer field to a Factor. Use blank.lines.skip = TRUE to remove a blank line.  
5 Update the Activity Factor in temp with the Activity Descriptions in ActivityDesc  
6 Add temp as a column to the right of dataTest  
7 Read in Test derived statistics ('features') from "X_test.txt"into temp  
8 Compute the mean and sd for all of the rows in temp and add them to new columns: temp\$Mean and temp\$SD.  
9 Add columns temp\$Mean and temp\$SD to the right of dataTest  
10 Update the column names for "SubjectType", "MeasureMean", and "MeasureSD"  

**Prepare Train Data**  
1 Read in "subject_train.txt" into dataTest and add the column name "SubjectID"  
2 Create a vector of nrow(dataTrain) "Training"and add this column to the right of dataTrain  
3 Read in Train data activity levels from "y_train.txt" as "Activity" into temp and convert the integer field to a Factor. Use blank.lines.skip = TRUE to remove a blank line.  
4 Update the Activity Factor in temp with the Activity Descriptions in ActivityDesc  
5 Add temp as a column to the right of dataTrain  
6 Read in Train derived statistics ('features') from "X_train.txt"into temp  
7 Compute the mean and sd for all of the rows in temp and add them to new columns: temp\$Mean and temp\$SD.  
8 Add columns temp\$Mean and temp\$SD to the right of dataTrain  
9 Update the column names for "SubjectType", "MeasureMean", and "MeasureSD"  

**Combine Test and Train Data into Tidy Data Set (tidyDataSet1)**   
1 Using row bind combine dataTest and dataTrain into tidyDataSet1

**Create 2nd Independent Tidy Data Set (tidyDataSet2)**  
1 Load plyr library  
2 Use ddply to create the 2nd Independent Tidy Data Set, tidyDataSet2  
3 Output tidyDataSet2 to Project/tidyDataSet2.txt

![tidyData2](https://github.com/ammraleigh/GettingAndCleaningData/raw/master/tidyDataSet2.png)
