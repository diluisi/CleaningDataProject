## Getting and Cleaning Data Course Project Codebook
========
### Recognizing Human Activity from Smartphones Dataset 
----
### Content Description

This data is derived from 3-axial accelerometer and gyroscope readings from 30 subjects carrying Samsung Galaxy S2 smartphones while engaging in various activities.

Multiple trials were conducted while each subject performed a specific task and the mean and standard deviations of variables of interest were calculated for each trial.

The means and standard deviations of these variables have averaged for each subject and activity and compiled in the included tidyData.txt file.

For more technical information on sampling and filtering or to obtain original dataset, please visit this [UCI Machine Learning Repository][id]

## Activity Names
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
## Variable Names
Variable Name | Description
----|----
tbodyaccmeanx |
tbodyaccmeany | Mean body acceleration on the x,y,z axes
tbodyaccmeanz |
 | 
 | 
tbodyaccstdx |
tbodyaccstdy | Standard deviation of body acceleration on the x,y,z axes
tbodyaccstdz |
  |  
  |
tgravityaccmeanx |
tgravityaccmeany | Mean gravity acceleration on the x,y,z axes
tgravityaccmeanz |
  |  
  |
tgravityaccstdx |
tgravityaccstdy | Standard deviation of gravity acceleration on the x,y,z axes
tgravityaccstdz |
  |
  |
tbodyaccjerkmeanx |
tbodyaccjerkmeany | Mean of the body acceleration jerk signal on the x,y,z axes
tbodyaccjerkmeanz | 
  |
  |
tbodyaccjerkstdx |
tbodyaccjerkstdy | Standard deviation of the body acceleration jerk signal on the x,y,z axes
tbodyaccjerkstdz |
  |  
  |
tbodygyromeanx |
tbodygyromeany | Mean body angular velocity on the x,y,z axes
tbodygyromeanz |
  |
  |
tbodygyrostdx |
tbodygyrostdy | Standard deviation of the body angular velocity on the x,y,z axes
tbodygyrostdz |
  |
  |
tbodygyrojerkmeanx |
tbodygyrojerkmeany | Mean body angular velocity jerk signal on x,y,z axes
tbodygyrojerkmeanz |
  |
  |
tbodygyrojerkstdx |
tbodygyrojerkstdy | Standard deviation of body angular velocity on x,y,z axes
tbodygyrojerkstdz |
  |
  |
tbodyaccmagmean |   Mean body acceleration magnitude
tbodyaccmagstd | Standard deviation of body acceleration magnitude
tgravityaccmagmean | Mean gravity acceleration magnitude
tgravityaccmagstd | Standard deviation of gravity acceleration magnitude
tbodyaccjerkmagmean | Mean body acceleration jerk signal magnitude
tbodyaccjerkmagstd | Standard deviation of body acceleration jerk signal magnitude
tbodygyromagmean | Mean body angular velocity magnitude
tbodygyromagstd | Standard deviation of angular velocity magnitude
tbodygyrojerkmagmean | Mean body angular velocity jerk signal magnitude
tbodygyrojerkmagstd | Standard deviation of angular velocity jerk signal magnitude
  |  
  |
fbodyaccmeanx |
fbodyaccmeany | Mean FFT of body acceleration on x,y,z axes
fbodyaccmeanz |
  |  
fbodyaccstdx |
fbodyaccstdy | FFT standard deviation of body acceleration on x,y,z axes
fbodyaccstdz |
  |
  |
fbodyaccjerkmeanx |
fbodyaccjerkmeany | Mean FFT of body acceleration jerk signal on x,y,z axes
fbodyaccjerkmeanz |
  |
  |
fbodyaccjerkstdx |
fbodyaccjerkstdy | FFT standard deviation of body acceleration jerk signal on x,y,z axes
fbodyaccjerkstdz |
  |
  |
fbodygyromeanx | 
fbodygyromeany | Mean FFT of body angular velocity on x,y,z axes
fbodygyromeanz |
  |
  |
fbodygyrostdx |
fbodygyrostdy |	FFT standard deviation of body angular velocity on x,y,z axes
fbodygyrostdz |
  |
  |
fbodyaccmagmean | Mean FFT of body acceleration magnitude
fbodyaccmagstd | FFT standard deviation of body accleration magnitude
fbodybodyaccjerkmagmean | Mean FFT of body acceleration jerk signal magnitude
fbodybodyaccjerkmagstd | FFT standard deviation of body acceleration jerk signal magnitude
fbodybodygyromagmean | Mean FFT of body angular velocity magnitude
fbodybodygyromagstd | FFT standard deviation of body angular velocity magnitude
fbodybodygyrojerkmagmean | Mean FFT of body angular velocity jerk signal magnitude
fbodybodygyrojerkmagstd | FFT standard deviation of body angular velocity jerk signal magnitude

## License
----
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

[id]:http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones