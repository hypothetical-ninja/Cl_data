Xtrain1 <- read.table("X_train.txt")
Ytrain1 <- read.table("y_train.txt",col.names = "Activity")


Xtest1 <- read.table("X_test.txt")
Ytest1 <- read.table("y_test.txt",col.names = "Activity")

Strain1 <- read.table("subject_train.txt",col.names = "Subject")
Stest1 <- read.table("subject_test.txt", col.names = "Subject")

X_data <- rbind(Xtrain1,Xtest1)

Y_data <- rbind(Ytrain1,Ytest1)
Y_data$Activity <- factor(Y_data$Activity,levels = c(1,2,3,4,5,6),labels = c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING"))
t1 <- read.table("features.txt")
names(X_data) <- t1[,2]
X_data1<- X_data[,grep(pattern="mean\\(\\)|std\\(\\)",names(X_data),ignore.case=TRUE,value = TRUE)]
S_data <- rbind(Strain1,Stest1)

total_data0 <- cbind(S_data,Y_data)
total_data <- cbind(total_data0,X_data1)




final_data<-aggregate(total_data[3:68], by=list(total_data$Subject, total_data$Activity), FUN=mean, na.rm=TRUE)

write.table(final_data,file = "tidy_set.txt")
