## Getting and Cleaning Data Course Project Readme
========
### Recognizing Human Activity from Smartphones Dataset 
----
### Repository Contents
----

File | Description
----|----
run_analysis.R | A script that takes the UCI HAR dataset and returns a the averages for each subject/activity combination across a subset of the original variables
readme.md | Pseudocode/instructions for *run_analysis.R and variable naming standards
CodeBook.md | Description of the tidy data set, it's source, and all included variables.
tidyData.txt | A comma-separated text file containing the data frame created by *run_analysis.R*

All operations were conducted using R v3.1.0 in RStudio v0.98.507

### Using *run_analysis.R* to derive the tidy dataset from the UCI HAR Dataset
----
1. Download the UCI HAR Dataset from the [course link.][id]
2. Extract the UCI HAR folder to your R working directory.
3. Install the *reshape2* library if it hasn't been already.
4. Source in the *run_analysis.R* function.
5. Execute *output <- run_analysis()*
6. When complete, the tidy dataset will be returned in the variable *output*.



### Tidying Variable Names
____
Variables were converted to be all lowercase and free of special characters as per the naming standards discussed in Week 4 lecture, *Editing Text Variables*. This was done via the use of *tolower()* and *gsub()*

To make the variables more human readable, the leading *t* and *f* in each variable was replaced with *time* and *freq*. The remainder of the original variable name elements were left untouched as they were already understandly and would like be quite unwieldy if further expanded. This was done using *sub()*

The apparently accidental inclusion of the string *bodybody* in some variables was replaced with *body* using *gsub()*

### Basic Description of Code Procedure
____
1. Loads the required library and the all of the UCI HAR data files required to generate the tidy data set using *read.table()* provided they have been unzipped into the working directory and still have their original directory heirarchy.
2. Identifies column indices of variables containing *mean()* or *std()*.
3. Removes column labels with non-matching names and tidies variable and activity names as described in *Tidying Variable Names* section.
4. Appends the *subject* and *activity* variable labels to the beginning of the column name vector.
5. Removes data that corresponds to the non-matching labels removed in step 3.
6. Adds the *subject* and *activity* data to the corresponding *test* or *train* data frames.
7. Applies the tidy column names to the *test* and *train* data frames.
8. Row binds the completed *test* and *train* data frames together and then orders them by *subject* then *activity*.
9. Loops through the *activity* column and replaces matched numeric value with corresponding activity label.
10. Melts the complete data frame using *subject* and *activity* as IDs, and the remaining columns as measured variables.
11. dcasts the melted data frame to derive the mean value across all trials for each subject/activity combination for all measured variables.
12. Writes a comma-separated text file if associated code is uncommented, otherwise returns the data frame described in step 11.

## License
----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

[id]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

[id]: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
