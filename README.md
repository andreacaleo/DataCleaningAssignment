# DataCleaningAssignment
This repository contains material for the assignment of the "Getting and Cleaning Data" course on Coursera.

The script run_analysis.R should be in a folder that contains the sub_folder "UCI HAR Dataset" with the original dataset. It then produces a file "tidy_data.csv" in csv format in the same folder as the script, with the data according to the prescriptions repored in the Coursera assignment. The script is loaded using the command source("run_analysis.R").

The reader is referred to the CodeBook for a description of the choices made in naming the columns of the data base.

The script functions in a straightforward way and contains some comments so that it should be easy to understand. The dataset requested in step 4 of the Coursera assignment has not been created in a separate file as this was not explicitly asked, but is generated during the process, and is named X_imp_feats (stands for "X_important_features") in the script.
