#factors
(gender=sample(c('m','f'),size=20,replace=T))
summary(gender)

genderF=factor(gender)
summary(genderF)
genderF


(likscale=sample(c('ex','good','sat','poor'), size=20, replace=T))
summary(likscale)
class(likscale)
likscalef=factor(likscale)
summary(likscalef)
class(likscalef)
likscaleof=factor(likscale,ordered=T, levels=c('poor','sat','good','ex'))
summary(likscaleof)
likscaleof
barplot(table(likscalef),col = 1:4)
barplot(table(likscaleof),col = 1:4)
