#simple linera regression - women
#save slr-women.R

women
head(women)
names(women)
cov(women$height, women$weight)
cor(women$height, women$weight)
pairs(women)
pairs(mtcars[1:5])
fit1 = lm(weight ~ height, data=women)
summary(fit1)
