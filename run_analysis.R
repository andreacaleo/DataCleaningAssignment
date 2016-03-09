X_train_data <- read.table("UCI HAR Dataset/train/X_train.txt") #each feature is a column
X_test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
X_merged_data <- rbind(X_train_data, X_test_data)

features_list <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F)
mean_features_indices <- grep("mean",features_list$V2) #only count lowercase "mean", on purpose!
std_features_indices <- grep("std",features_list$V2)
important_features_indices <- sort(c(mean_features_indices,std_features_indices))

#contains important features, no labels yet
X_imp_feats_no_labels <- X_merged_data[,important_features_indices] 

#this dataframe will also contain labels in due time
X_imp_feats <- X_imp_feats_no_labels

train_activity_nos <- read.table("UCI HAR Dataset/train/y_train.txt") #"nos" = "numbers"
test_activity_nos <- read.table("UCI HAR Dataset/test/y_test.txt")
merged_activity_nos <- rbind(train_activity_nos, test_activity_nos)
X_imp_feats_no_labels$activity_number = merged_activity_nos$V1
activity_labels <- c("walking", "walkingupstairs", "walkingdownstairs", 
                     "sitting", "standing", "laying")
X_imp_feats$activity_label <- activity_labels[X_imp_feats_no_labels$activity_number]

feats <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = F) #loads features names
feats_labels <- feats$V2
imp_feats_labels <- feats_labels[important_features_indices]
#NOTE: X_imp_feats constructed here is the database requested in step 4 of the assignment
colnames(X_imp_feats)[1:length(X_imp_feats)-1] <- imp_feats_labels 

train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt")
merged_subject <- rbind(train_subject,test_subject)

#appends subject id to X_imp_feats
X_complete_feats <- X_imp_feats
X_complete_feats$subject_id <- merged_subject$V1

X_means <- aggregate(
    X_complete_feats[,1:(length(X_complete_feats)-2)],
    by=list(activity = X_complete_feats$activity_label, subject = X_complete_feats$subject_id), 
    mean)

write.csv(X_means, file = "tidy_data.csv")
