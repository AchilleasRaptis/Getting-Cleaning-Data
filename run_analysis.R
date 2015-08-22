# Coursera - Getting and Cleaning Data (Assignment)
# Achilleas Raptis - August 2015
########################################################################

## Step 0a. Install & Load prerequisite package

package <- "plyr"
is.installed <- function(mypkg) is.element(mypkg, installed.packages()[,1]) 
if(!is.installed(package))
    install.packages(package)
library(plyr)

## Step 0b. Set wd, prepare data

# Create folder and set working directory
dir.create("~/Coursera/Getting-and-Cleaning-Data/", showWarnings = FALSE, recursive = TRUE)
setwd("~/Coursera/Getting-and-Cleaning-Data/")
# Download and unzip data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="data.zip")
unzip("data.zip")

################## ryn_analysis function ###############################

run_analysis <- function(){
    ##Step 1. Merge the training and the test sets to create one data set.
    
    # Load & Merge subject data  
    subject_test = read.table("UCI HAR Dataset/test/subject_test.txt")
    subject_train = read.table("UCI HAR Dataset/train/subject_train.txt")
    subject <- rbind(subject_train,subject_test)
    
    # Load & Merge  X data
    X_test = read.table("UCI HAR Dataset/test/X_test.txt")
    X_train = read.table("UCI HAR Dataset/train/X_train.txt")
    X <- rbind(X_train,X_test)
     
    # Load & Merge  Y data
    Y_test = read.table("UCI HAR Dataset/test/Y_test.txt")
    Y_train = read.table("UCI HAR Dataset/train/Y_train.txt")
    Y <- rbind(Y_train,Y_test)
    
    ##Step 2. Extract only the measurements on the mean and standard deviation for each measurement. 
    
    # Load features information & Extract measurements
    features <- read.table("UCI HAR Dataset/features.txt", col.names=c("featureID", "featureLabel"))
    mean_std_features <- grep("-mean\\(\\)|-std\\(\\)", features$featureLabel)
    X <- X[, mean_std_features]
    
    # Proper naming
    names(X) <- gsub("\\(|\\)", "", features$featureLabel[mean_std_features]) # Remove "()"
    names(X) <- gsub("-", "", names(X)) # Remove "-"
        
    ##Step 3. Use descriptive activity names to name the activities in the data set.
    
    # Load activities information
    activities <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activityID", "activityLabel"))
    Y[, 1] <- activities[Y[, 1], 2]
    
    # Proper naming
    names(Y) <- "Activity"
    names(subject) <- "Subject"
    
    ##Step 4. Appropriately labels the data set with descriptive activity names.
    
    # Create dataset
    dataset <- cbind(X, Y, subject)
    
    # Proper naming
    names(dataset) <- gsub('Acc',"Acceleration",names(dataset))
    names(dataset) <- gsub('GyroJerk',"AngularAcceleration",names(dataset))
    names(dataset) <- gsub('Gyro',"AngularSpeed",names(dataset))
    names(dataset) <- gsub('Mag',"Magnitude",names(dataset))
    names(dataset) <- gsub('^t',"TimeDomain.",names(dataset))
    names(dataset) <- gsub('^f',"FrequencyDomain.",names(dataset))
    names(dataset) <- gsub('\\.mean',".Mean",names(dataset))
    names(dataset) <- gsub('\\.std',".StandardDeviation",names(dataset))
    names(dataset) <- gsub('Freq\\.',"Frequency.",names(dataset))
    names(dataset) <- gsub('Freq$',"Frequency",names(dataset))
    
    # Export dataset
    dir.create("./output", showWarnings = FALSE)
    write.csv(dataset, "./output/dataset.csv")
    
    ##Step 5. Create a second, independent tidy data set with the average of each variable for each activity and each subject.
    
    # Calculation of AVG & Export
    tidy_dataset <- ddply(dataset, .(Subject, Activity), function(x) colMeans(x[, 1:66]))
    write.csv(tidy_dataset, "./output/tidy_dataset.csv") # CSV export
    write.table(tidy_dataset, "./output/tidy_dataset.txt", row.name=FALSE) # TXT export
}

run_analysis()
