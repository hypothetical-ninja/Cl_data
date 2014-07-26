The data consists of the following files:
1. X_train.txt -- Training data for the gyroscope and accelerometer signals

2. X_test.txt -- Testing Data for the gyroscope and accelerometer signals

3. Y_train.txt -- Contains the Activity (standing , walking ,laying etc) in form of factor leves 1,2,3... for training data

4. Y_test.txt -- Contains the Activity (standing , walking ,laying etc) in form of factor leves 1,2,3... for test data

5.subject_train.txt -- List of subjects on whom it was performed , 1,2,3,4,5,6 for train data

6.subject_test.txt -- List of subjects on whom it was performed , 1,2,3,4,5,6 for test data

7.activity_labels.txt -- The mapping between different activities with the factor levels.

8.features.txt -- Feature tests variables for X_train and X_test data.

The elaboration of different variables in run_analysis.R script are present in CodeBook.md 

The run_analysis.R script basically reads the test and train data for X , Y and Subject and asigns each of them distinct column names that describe the situation. The X_data consists of combined test and train data which is done by using rbind function.

The rbind function is used to combine all the data for X, Y and Subject . The subject is assigned labels , and is concatenated with Y using cbind.

The X_data is subsetted to only include variables related to mean and std which is stored in X_data1. 

total_data consists of the combination of S_data,Y_data and X_data .Dimensins : 10299*68 

Finally , the aggregate for each subject and activity is computed using the aggregate() function and is stored in the variable "final_data". Dimensions of result are 180*68

tidy_data.txt is its txt version which is created using write.table().