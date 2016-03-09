This CodeBook contains information on the variables in the tidy_data file. These data have been elaborated from a raw dataset available at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The original dataset folder includes a ReadMe which explains how the data were collected. For brevity, the experimental design is not reported here. The reader is referred to the original source.

In the tidy data set, each row represents an observation. Each observation corresponds to the mean value of a set of variables contained in the raw data set, averaged over each of the 30 subjects who took part to the experiment, and over each of the 6 activities in which the subjects were involved. The first two columns illustrate the activity and the subject.

The remaining columns contain the features selected as requested on the Coursera assignment (https://www.coursera.org/learn/data-cleaning/peer/FIZtT/getting-and-cleaning-data-course-project). For what concern the "mean" measurements requested in step 2, I have selected only the values that are proper means, which include the lowercase word "mean" in their description. These excludes the data on the direction of the forces on the subjects, as these have been calculated a-posteriori on the obtained mean values and are not proper means themselves.

The data are all dimensionless because, like those in the original dataset, they are normalised and constrained in the [-1, 1] interval.

Since there are approximately 100 different features selected, and the feature labels reported in the original dataset were sufficiently clear, the same labels have been used here to illustrate the meaning of the features. 
