## Getting and Cleaning Data Course Project Codebook
========
### Recognizing Human Activity from Smartphones Dataset 
----
### Content Description

This data is derived from 3-axial accelerometer and gyroscope readings from 30 subjects carrying Samsung Galaxy S2 smartphones while engaging in various activities.

Multiple trials were conducted while each subject performed a specific task and the mean and standard deviations of variables of interest were calculated for each trial.

The means and standard deviations of these variables have averaged for each subject and activity and compiled in the included tidyData.txt file.

For more technical information on sampling and filtering or to obtain original dataset, please visit this [UCI Machine Learning Repository][id]

### Tidying Variable Names
----
Variables were converted to be all lowercase and free of special characters as per the naming standards discussed in Week 4 lecture, *Editing Text Variables*. This was done via the use of *tolower()* and *gsub()*

To make the variables more human readable, the leading *t* and *f* in each variable was replaced with *time* and *freq*. The remainder of the original variable name elements were left untouched as they were already understandly and would like be quite unwieldy if further expanded. This was done using *sub()*

The apparently accidental inclusion of the string *bodybody* in some variables was replaced with *body* using *gsub()*

### Variable Subset Selection
----
Variables containing *mean()* and *std()* were selected as these appeared to be the variables where the mean and standard deviation were actually calculated based on a series of measurements of the associated basic variable. Variable containing only *mean* were excluded as this did not appear to be the case AND they had no associated standard deviation measure.

### Activity Names
----
Activity Name | Description
----------|----------
walking | Subject walked
walkingupstairs | Subject ascended stairs
walkingdownstairs | Subject descended stairs
sitting | Subject sat
standing | Subject stood still
laying | Subject lay down

----
### Variable Names
Variable Name | Description
----|----
timebodyaccmeanx |
timebodyaccmeany | Mean body acceleration on the x,y,z axes
timebodyaccmeanz |
 | 
timebodyaccstdx |
timebodyaccstdy | Standard deviation of body acceleration on the x,y,z axes
timebodyaccstdz |
  |
timegravityaccmeanx |
timegravityaccmeany | Mean gravity acceleration on the x,y,z axes
timegravityaccmeanz |
  |
timegravityaccstdx |
timegravityaccstdy | Standard deviation of gravity acceleration on the x,y,z axes
timegravityaccstdz |
  |
timebodyaccjerkmeanx |
timebodyaccjerkmeany | Mean of the body acceleration jerk signal on the x,y,z axes
timebodyaccjerkmeanz | 
  |
timebodyaccjerkstdx |
timebodyaccjerkstdy | Standard deviation of the body acceleration jerk signal on the x,y,z axes
timebodyaccjerkstdz |
  |
timebodygyromeanx |
timebodygyromeany | Mean body angular velocity on the x,y,z axes
timebodygyromeanz |
  |
timebodygyrostdx |
timebodygyrostdy | Standard deviation of the body angular velocity on the x,y,z axes
timebodygyrostdz |
  |
timebodygyrojerkmeanx |
timebodygyrojerkmeany | Mean body angular velocity jerk signal on x,y,z axes
timebodygyrojerkmeanz |
  |
timebodygyrojerkstdx |
timebodygyrojerkstdy | Standard deviation of body angular velocity on x,y,z axes
timebodygyrojerkstdz |
  |
timebodyaccmagmean |   Mean body acceleration magnitude
timebodyaccmagstd | Standard deviation of body acceleration magnitude
timegravityaccmagmean | Mean gravity acceleration magnitude
timegravityaccmagstd | Standard deviation of gravity acceleration magnitude
timebodyaccjerkmagmean | Mean body acceleration jerk signal magnitude
timebodyaccjerkmagstd | Standard deviation of body acceleration jerk signal magnitude
timebodygyromagmean | Mean body angular velocity magnitude
timebodygyromagstd | Standard deviation of angular velocity magnitude
timebodygyrojerkmagmean | Mean body angular velocity jerk signal magnitude
timebodygyrojerkmagstd | Standard deviation of angular velocity jerk signal magnitude
  |
freqbodyaccmeanx |
freqbodyaccmeany | Mean FFT of body acceleration on x,y,z axes
freqbodyaccmeanz |
  |  
freqbodyaccstdx |
freqbodyaccstdy | FFT standard deviation of body acceleration on x,y,z axes
freqbodyaccstdz |
  |
freqbodyaccjerkmeanx |
freqbodyaccjerkmeany | Mean FFT of body acceleration jerk signal on x,y,z axes
freqbodyaccjerkmeanz |
  |
freqbodyaccjerkstdx |
freqbodyaccjerkstdy | FFT standard deviation of body acceleration jerk signal on x,y,z axes
freqbodyaccjerkstdz |
  |
freqbodygyromeanx | 
freqbodygyromeany | Mean FFT of body angular velocity on x,y,z axes
freqbodygyromeanz |
  |
freqbodygyrostdx |
freqbodygyrostdy |	FFT standard deviation of body angular velocity on x,y,z axes
freqbodygyrostdz |
  |
freqbodyaccmagmean | Mean FFT of body acceleration magnitude
freqbodyaccmagstd | FFT standard deviation of body accleration magnitude
freqbodyaccjerkmagmean | Mean FFT of body acceleration jerk signal magnitude
freqbodyaccjerkmagstd | FFT standard deviation of body acceleration jerk signal magnitude
freqbodygyromagmean | Mean FFT of body angular velocity magnitude
freqbodygyromagstd | FFT standard deviation of body angular velocity magnitude
freqbodygyrojerkmagmean | Mean FFT of body angular velocity jerk signal magnitude
freqbodygyrojerkmagstd | FFT standard deviation of body angular velocity jerk signal magnitude

## License
----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

[id]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones