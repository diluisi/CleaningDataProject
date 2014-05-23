run_analysis <- function()
{
    ##load necessary library in case it isn't loaded, user will need to install if not installed
    library(reshape2)
    
    ##Obtain and store the root directory of the Samsung data folder which should be in the user's HOME directory
    data_dir <- paste(getwd(), "/UCI HAR Dataset", sep="")
    
    #Read in the files containing the two separate datasets and their associated labels
    activity_labels <- read.table(paste(data_dir, "/activity_labels.txt", sep=""))
    variable_labels <- read.table(paste(data_dir, "/features.txt", sep=""))
    test_subjects <- read.table(paste(data_dir, "/test/subject_test.txt", sep=""))
    test_data <- read.table(paste(data_dir, "/test/X_test.txt", sep=""))
    test_activity_ids <- read.table(paste(data_dir, "/test/y_test.txt", sep=""))
    train_subjects <- read.table(paste(data_dir, "/train/subject_train.txt", sep=""))
    train_data <- read.table(paste(data_dir, "/train/X_train.txt", sep=""))
    train_activity_ids <- read.table(paste(data_dir, "/train/y_train.txt", sep=""))

    #Identify variable labels that are not associated with mean or std.dev. 
    target_variables <- grep("mean\\(\\)|std\\(\\)", variable_labels[,2], ignore.case=TRUE) 
    
    ##Convert activity labels to tidy data standards
    tidy_labels <- tolower(as.character(activity_labels[,2]))
    tidy_labels <- gsub("_", "", tidy_labels)
    levels(activity_labels[,2]) <- tidy_labels
    rm(tidy_labels, data_dir)

    ##Remove unwanted variable labels and convert data variable labels to tidy data standards
    variable_labels <- as.character(variable_labels[target_variables, 2])
    variable_labels <- tolower(variable_labels)
    variable_labels <- gsub("[(),-]","",variable_labels)

    ##Add labels for "subject" and "activity" to the beginning of the column labels
    variable_labels <- append(variable_labels, c("subject", "activity"), 0)

    ##Remove unwanted variable columns
    test_data <- test_data[ , target_variables]
    train_data <- train_data[ , target_variables]

    ##Append subject and activity column values to the beginning of the data frames containing variable values
    test_data <- data.frame(test_subjects, test_activity_ids, test_data)
    train_data <- data.frame(train_subjects, train_activity_ids, train_data)
    rm(test_subjects, test_activity_ids, train_subjects, train_activity_ids, target_variables)

    ##Set column names to the tidy data labels contained in variable_labels
    colnames(test_data) <- variable_labels
    colnames(train_data) <- variable_labels
    rm(variable_labels)

    ##Combine and sort test and training data
    all_data <- rbind(test_data, train_data)
    all_data <- all_data[order(all_data$subject, all_data$activity),]
    rm(test_data, train_data)

    ##swap in descriptive activity names for activity IDs
    for (i in seq_along(activity_labels[,1]))
    {
        all_data[all_data[,2]==i,2] <- as.character(activity_labels[i,2])
    }
    rm(activity_labels, i)

    ##Create simplified dataset with average value for each subject/activity combo
    simplified_data <- melt(all_data, id=c(1,2), measure.vars=c(3:68))
    simplified_data <- dcast(simplified_data, subject + activity ~ variable,mean)

    ##De-comment to save a comma-delimited text file for project submission instead of return simplified_data
    ##write.table(simplified_data, file="tidyData.txt", sep=",", row.names=FALSE)
}