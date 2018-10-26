(gender = sample(c('m','f'),size=30,replace=T, prob=c(.7, .3)))
table(gender)
prop.table(table(gender)
summery(x)
(x=rnorm(100, mean=60, sd=10))
summery(x) #summery of x

quantile(x) #quantile
quantile(x,seq(0,1,.1))
boxplot(x)
abline(h=fivenum(x))
plot(density(x))
floor(3.4)
floor(3.7)
ceiling(3.4)
trunc(3.4)
round(3.6,2)
signif(5.67564,3)
