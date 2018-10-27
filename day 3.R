#create vect of stdnt name divide in 2 grps
studentname= paste('student',1:33, sep='-')
studentname
gruop1=60%
group2=40%

x=101:200
x
(index=sample(length(x),size = .6*length(x)))
studentname= paste('student',1:33, sep='-')
(index=sample(length(x),size=.6*length(x)))
length(studentname)
studentname
x=studentname
length(x)
(index=sample(length(x),size=.6*length(x)))
length(index)
length(-index)
train1=x[index]
test1=x[-index]
(train1)
(test1)






?sample
#create a large df
sname= paste('S',1:1000, sep='-')
gender=sample(x=c('male','female'), size =1000, prob=c(.6,.4), replace=T)
marks= ceiling(rnorm(1000, 60,10))
df= data.frame(sname,gender,marks)
head(df)
table(df$gender)
#split df in 2 parts 70% n 30%
#train- 70% of df test - 30% of df
index2=sample(x=nrow(df),.7*nrow(df))
index2
length(index2)
train2=df[-index2,]
nrow(train2)
test2=df[-index2,]
nrow(test2)


#usingcaret
library(caret)
table(df$gender)
prop.table(table(df$gender))
(index3=createDataPartition(y=df$gender,p=.7,list=F))
length(index3)
(train3=df[index3,])
(test3=df[-index3,])
(t3a=table(train3$gender));prop.table(t3a)
(t3b=table(test3$gender));prop.table(t3b)
#proportion of am is almost same in both samples
nrow



