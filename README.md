Getting and Cleaning Data - Course Project
==========================================

## Introduction

This repository hosts the R code and documentation files for the Data Science's course ["Getting and Cleaning data"](http://www.coursera.org/course/getdata), by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD  available through [Coursera](http://www.coursera.org).

## How R script works

The script `run_analysis.R` performs the 5 following steps described in the course project's description + 1 step that makes this script more powerfull:

* **Step 0.** Checks (and downloads) for the prerequisite package "plyr", selects the proper working directory and creates the required files, downloads and unzip the original data,
* **Step 1.** Reads and merges the training and the test sets to create one data set,
* **Step 2.** Extracts only the measurements on the mean and standard deviation for each measurement,
* **Step 3.** Loads and uses descriptive activity names to name the activities in the data set,
* **Step 4.** A new dataset with proper descriptive variable names is created and exported in CSV format,
* **Step 5.** A new independent tidy data set with the average of each variable for each activity and each subject is created holding 180 rows, this dataset is exported in output folder in 2 different formats.

## Repository files & folders

The repository hosts the folowing files:
The code takes for granted all the data is present in the same folder, un-compressed and without names altered.

* `README.md` describing how the script works,
* `CodeBook.md` describing the variables of run_analysis and output file,
* `run_analysis.R` contains all the R code to perform the analysis (*please see Note 1*).

## More information

For more information about the study and the original data you can visit the [UCI Machine learning repository: Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

###### *Notes*
0. `run_analysis.R` script is an integrated script that you can execute through R. It performs the check for the prerequisite package, creates the required folders (and the output folder), downloads and unzip the original dataset, executes the run_analysis function and produces the tidy dataset.
1. The `run_analysis.R` script requires "plyr" packages and for this reason I have incorporated a small piece of code for check if this package is installed, if not the code proceeds with the instalaltion of this package.
2. You can find the original & output files at `C:\Users\YOUR_MACHINE_NAME\Documents\Coursera\Getting-and-Cleaning-Data` (the folder and the subfolders are created automatically.
