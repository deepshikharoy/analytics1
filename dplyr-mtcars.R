#analysis of dataset mtcars using dplyr
#filename : dplyr-mtcars.R
#learn to use dployr for mtcars data set
library(dplyr)
?mtcars
#structure of data set
str(mtcars)
dim(mtcars)
names(mtcars) #colum names
rownames(mtcars)
summary(mtcars)  #summery of data set

#summary activities on mtcars
t1= table(mtcars$am)
pie(t1)
19/32*360

pie(t1, labels=c('auto','manual'))
t2=table(mtcars$gear)
pie(t2)
barplot(t2)
barplot(t2, col=1:3, horiz=T)
pie(t1, labels=c('low','high'))
barplot(t2, col=c('green','blue','yellow'))

barplot(t2, col=c('green','blue','yellow') , xlab='gear' , ylab='no of cars' , ylim=c(0,20))
title(main = 'distribution of gears of cars', sub = 'no of gears')
#using dplyr %>% is chaining function
mtcars %>%  select(mpg,gear) %>% slice(c(1:5, 10))
#select for colums, slice for row
mtcars %>% arrange(mpg) #ascending order of mileage
mtcars %>% arrange(am, desc(mpg)) %>% select(am, mpg) #ascending order of mpg
mtcars %>%mutate(rn= rownames(mtcars)) %>% select(rn,mpg)

#display rowname with mpg
mtcars %>% sample_n(3)
mtcars %>%  sample_frac(.2)
mtcars %>% select(sample(x=c(1:11),size=2))
mtcars %>% mutate(newmpg = mpg*1.1)
mutate(mtcars, newmpg = mpg*1.2)

#type of tx, mean(mpg)
mtcars %>%  group_by(am) %>%summarise(meanmpg = mean(mpg))
mtcars %>%  group_by(am) %>% summarise(Meanmpg = mean(mpg), maxhp =max(hp), minwt= min(wt))
mtcars %>% group_by(gear, cyl) %>% summarise(meanmpg = mean(mpg))

