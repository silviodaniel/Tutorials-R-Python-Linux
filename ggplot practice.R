<<<<<<< HEAD

new=data.frame(cond=rep(c("Chocolate","Sour Candy"), each=10),
               xvar=1:20,
               yvar=1:20)
new
f=function(x,y,z){
  x+y*z
}
f(3,2,1)
dat

install.packages('ggplot2')
library(ggplot2)

setwd("C:/Users/Silvio/AppData/Local/Temp/RtmpGMuLxM/downloaded_packages")

dat=data.frame(cond=rep(c("A","B"), each=10),##CREATE DATA FRAME
               xvar=1:20+rnorm(20,sd=3),
               yvar=1:20+rnorm(20,sd=3))
ggplot(dat, aes(x=xvar, y=yvar)) +geom_point(shape=1)+geom_smooth(method=lm)
#linear regression line (above) with 95% CI automatically
ggplot(dat, aes(x=xvar, y=yvar)) +geom_point(shape=1)+geom_smooth(method=lm, se=F)
#SAME, but without auto CI
ggplot(dat, aes(x=xvar, y=yvar))+geom_point(shape=2)+geom_smooth()
#less smooth fit curve, triangles instead of circles

library(gridExtra)
mtc=mtcars
mtc
p1=ggplot(mtc, aes(x=hp, y =mpg))
p1
p1+geom_point()

qplot()
qplot(x=mpg,y=wt,mtcars)

mtcars
set.seed(1234)
set.seed
dat1=data.frame(cond=factor(rep(c("A","B"), each=200)),
rating=c(rnorm(200),rnorm(200, mean=.8)))
dat1
ggplot(dat1, aes(x=rating))+geom_histogram(binwidth=.5)##HISTOGRAM
ggplot(dat1, aes(x=rating))+geom_histogram(binwidth=.5,color="black", fill="white")
df=data.frame(x=1:20,dbinom(1:20,20,prob=.8))#dbinom probability of getting these successes in 20 trials with that level of probability
df
require(ggplot2)
ggplot(data=df, aes(x=x,y=prob)) + geom_line() +
  geom_ribbon(data=subset(df,x>=16 & x<=20),aes(ymax=prob),ymin=0,
              fill="red", colour = NA, alpha = 0.5)

pbinom(1,2,.5)#Cumulative probability of 1 or less Heads with 2 flips
dbinom(1,2,.5)#Probability of 1 h two flips
dbinom(1:20,20,.8)
dbinom(4,12,.2)
dbinom(17,26,.5)

str(mtcars)#structure
head(dat)
qplot(data=dat,x=xvar,main="Plot")

head(mtcars)

qplot(data=mtcars,x=mpg,main="Miles per Gallon")#QUICK HISTOGRAM

#Read new data online
filepath="http://bit.ly/wBBTQO"
head(filepath)
myData=read.table(file=url(filepath),header=T, sep="\t")
head(myData)
tail(myData)

#Creates graph with BM and outcome var, color coded by tribe!
qplot(data=myData,x=BM,main="Title")
qplot(data=myData, x=BM, y=var1, log="xy",color=Tribe)#log xy logs both variables
qplot(data=myData,x=BM,y=var1, log = "xy",color=Tribe, facets=Hab~Tribe)
head(myData)
qplot(data=myData,x=BM,y=var1, log = "xy",color=Tribe, facets=~Tribe)
=======

new=data.frame(cond=rep(c("Chocolate","Sour Candy"), each=10),
               xvar=1:20,
               yvar=1:20)
new
f=function(x,y,z){
  x+y*z
}
f(3,2,1)
dat

install.packages('ggplot2')
library(ggplot2)

setwd("C:/Users/Silvio/AppData/Local/Temp/RtmpGMuLxM/downloaded_packages")

dat=data.frame(cond=rep(c("A","B"), each=10),##CREATE DATA FRAME
               xvar=1:20+rnorm(20,sd=3),
               yvar=1:20+rnorm(20,sd=3))
ggplot(dat, aes(x=xvar, y=yvar)) +geom_point(shape=1)+geom_smooth(method=lm)
#linear regression line (above) with 95% CI automatically
ggplot(dat, aes(x=xvar, y=yvar)) +geom_point(shape=1)+geom_smooth(method=lm, se=F)
#SAME, but without auto CI
ggplot(dat, aes(x=xvar, y=yvar))+geom_point(shape=2)+geom_smooth()
#less smooth fit curve, triangles instead of circles

library(gridExtra)
mtc=mtcars
mtc
p1=ggplot(mtc, aes(x=hp, y =mpg))
p1
p1+geom_point()

qplot()
qplot(x=mpg,y=wt,mtcars)

mtcars
set.seed(1234)
set.seed
dat1=data.frame(cond=factor(rep(c("A","B"), each=200)),
rating=c(rnorm(200),rnorm(200, mean=.8)))
dat1
ggplot(dat1, aes(x=rating))+geom_histogram(binwidth=.5)##HISTOGRAM
ggplot(dat1, aes(x=rating))+geom_histogram(binwidth=.5,color="black", fill="white")
df=data.frame(x=1:20,dbinom(1:20,20,prob=.8))#dbinom probability of getting these successes in 20 trials with that level of probability
df
require(ggplot2)
ggplot(data=df, aes(x=x,y=prob)) + geom_line() +
  geom_ribbon(data=subset(df,x>=16 & x<=20),aes(ymax=prob),ymin=0,
              fill="red", colour = NA, alpha = 0.5)

pbinom(1,2,.5)#Cumulative probability of 1 or less Heads with 2 flips
dbinom(1,2,.5)#Probability of 1 h two flips
dbinom(1:20,20,.8)
dbinom(4,12,.2)
dbinom(17,26,.5)

str(mtcars)#structure
head(dat)
qplot(data=dat,x=xvar,main="Plot")

head(mtcars)

qplot(data=mtcars,x=mpg,main="Miles per Gallon")#QUICK HISTOGRAM

#Read new data online
filepath="http://bit.ly/wBBTQO"
head(filepath)
myData=read.table(file=url(filepath),header=T, sep="\t")
head(myData)
tail(myData)

#Creates graph with BM and outcome var, color coded by tribe!
qplot(data=myData,x=BM,main="Title")
qplot(data=myData, x=BM, y=var1, log="xy",color=Tribe)#log xy logs both variables
qplot(data=myData,x=BM,y=var1, log = "xy",color=Tribe, facets=Hab~Tribe)
head(myData)
qplot(data=myData,x=BM,y=var1, log = "xy",color=Tribe, facets=~Tribe)
>>>>>>> b1b38498ba0a014f24d12e94aea7e5d5e5389191
