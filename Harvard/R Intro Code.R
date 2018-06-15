#What can R do?

#R can predict the world population in 2020!
install.packages(c("forecast", "plotly"))
library(forecast)
library(plotly)
## from https://esa.un.org/unpd/wpp/Download/Standard/Population/
worldpop <- structure(c(2.525149312, 2.571867515, 2.617940399, 2.66402901,
                        2.710677773, 2.758314525, 2.807246148, 2.85766291, 2.909651396,
                        2.963216053, 3.018343828, 3.075073173, 3.133554362, 3.194075347,
                        3.256988501, 3.322495121, 3.390685523, 3.461343172, 3.533966901,
                        3.607865513, 3.682487691, 3.757734668, 3.833594894, 3.90972212,
                        3.985733775, 4.061399228, 4.13654207, 4.211322427, 4.286282447,
                        4.362189531, 4.439632465, 4.518602042, 4.599003374, 4.681210508,
                        4.765657562, 4.852540569, 4.942056118, 5.033804944, 5.126632694,
                        5.218978019, 5.309667699, 5.398328753, 5.485115276, 5.57004538,
                        5.653315893, 5.735123084, 5.815392305, 5.894155105, 5.971882825,
                        6.049205203, 6.126622121, 6.204310739, 6.282301767, 6.360764684,
                        6.439842408, 6.51963585, 6.600220247, 6.68160732, 6.763732879,
                        6.846479521, 6.92972504300001, 7.013427052, 7.097500453, 7.181715139,
                        7.265785946, 7.349472099), .Tsp = c(1950, 2015, 1), class = "ts")

## Projected numbers (in billions) of humans living on earth
fit <- auto.arima(worldpop)
ggplotly(autoplot(forecast(fit)))

#R can allow us to create beautiful 3D plots
install.packages("plot3D")
libary(plot3D)
example(surf3D)

#(My favorite) R can pull up XKCD comics by number

install.packages("RXKCD",repos="https://cloud.r-project.org")
library(RXKCD)
getXKCD(539)

#Exercise 0 answers:
#1

#2

#3

#4

#5

#6

#Lesson 1:

abs(1)
abs(-1)

max(c(3,4,2,3,4,5,6,3))

quantile(c(3,4,4,3,5,7,23,5,45,75),p=0.5)
quantile(c(3,4,4,3,5,7,23,5,45,75))
?quantile

install.packages("car",repos="https://cloud.r-project.org")
library(car)

#Exercise 1 answers:
#1

#2

#3

#Lesson 2:

x = 3
y <-3

x
y

x+y
x-y
x*y
x/y

#Exercise 2 answers:
#1

#2

#3

#4

#5

#6

#Lesson 3:
a = 3
b = "letter"
c = TRUE

typeof(a)
typeof(b)
typeof(c)

d = 9
typeof(d)
e = as.character(d)
typeof(e)
e

x <- c(10, 11, 12)
y <- c("10", "11", "12")
z <- c(TRUE, FALSE, TRUE, TRUE)

typeof(x)
typeof(y)
typeof(z)

x[2]

which(y == "10")
which(x < 12)
which(z=="TRUE")

w = data.frame(x,y)
w

w$x
w[2,1]

w$x = w$x + 3
w

w$newcol = c(3,3,5)
w

data(sleep)
sleep

sleep$extra[sleep$group==1]

matrix(sleep$extra,nrow=10,ncol=2)

rbind(x,y) #binds vectors as rows
cbind(x,y) #binds vectors as columns

matrix(NA,nrow=2,ncol=2)

rep(NA,9)
rep(3,9)

seq(1,4)
seq(1,4,by=0.4)

#Exercise 3 answers:

#1

#2

#3

#4

#5

#6

#7

#8

#Lesson 4:

esoph = read.csv("~/Desktop/esoph.csv")

load("~/Desktop/dat2.R")

library(help="datasets")

data(sleep)
sleep

#Exercise 4 answers:

#Lesson 5:
names(babyNames)
dim(babyNames)
head(babyNames)

#[try yourself!]

girlNames = subset(babyNames,BoyNames==0)
babyNames[order(babyNames$Year),]
babyNames[order(-babyNames$Year),]

#Exercise 5 answers:

#1

#2

#3

#4

#5

#Lesson 6:

x = c(3,5,3,32,4,5,56,23,6,2)
mean(x)
sd(x)
median(x)
var(x)

quantile(x)
quantile(x,p=c(0.025,0.975))

summary(x)

r = c("a","a","b","c","b","a","b")
s = c("x","y","x","x","y","z","z")
table(r,s)

#Exercise 6 answers:

#1

#2

#3

#4

#Lesson 7:

sample(seq(1,10)) #permute full data set
sample(seq(1,10),replace=TRUE) #sample the same number of observations as was in the data set, with replacement (also called a "bootstrap")
sample(seq(1,10),size=2) #sample 2 observations from the data set, without replacement

dbinom(x = 3, size = 9, prob = 0.4)

pbinom(q=3, size = 9, prob=0.4)

qbinom(p = 0.8, size = 9, prob = 0.4)

rbinom(10,size=9,prob=0.4)

#Exercise 7 answers:

#1

#2

#3

#4

#5

#6

#7

#Lesson 8:

# write data to a .csv file
write_csv(babyNames, path = "~/Desktop/newbabyNames.csv")

# write data to an R file
save(babyNames, file = "~/Desktop/newbabyNames.Rdata")
