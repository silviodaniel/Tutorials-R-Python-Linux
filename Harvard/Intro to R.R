install.packages(c("forecast","plotly"),repos="https://cloud.r-project.org")
library(forecast)
library(plotly)

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

fit=auto.arima(worldpop)
ggplotly(autoplot(forecast(fit)))

install.packages("RXKCD",repos="https://cloud.r-project.org")
library(RXKCD)
getXKCD(539)

###eXERCISE 0
  3932+458#4390
  38*-26#-988
  sqrt(23)#4.795832
  x=2
  print("Hello World!")
  cat("hello")
  install.packages("car")

  abs(1)
  quantile(c(3,4,4,3,5,7,23,5,45,75),p=0.5)
  plot(c(3,4,4,3,5,7,23,5,45,75))
  ?quantile#quantile has 4 other default inputs
  
  #Exercise 1, RANDOM PASSWORDS!
  install.packages("fun")
  library(fun)
  ?random_password()
  random_password(12)#length, replace, extended
  random_password(8,replace=FALSE,extended=FALSE)#WITH FALSE REPLACEMENT, NO REPEATING BC taking out letters once used
  
  #Exercise 2
  x=2389
  x=2389*3
  y=x/11
  log2(x)-sqrt(y)
  sum(1:x)

  x=c(10,11,12)
  x[-1]
  abs(x)
  max(x)
  y=c("10","11","12")
  w=data.frame(x,y)
  w$x=w$x+3;w
  w$newcol=c(3,3,5);w
  
  #exercise 3
  a=c(1:10);a
  b=rep(3,10);b
  
  c=a*b#point wise multiplication
  
  d=rep(8,10)
  a+d
  a+8
  
  c[3]/b[2]
  
  e=matrix(m,3,10);e
  m=rbind(a,b,c)
  
  m2=cbind(a,b,c)
  f=data.frame(m2);f
  
  max(e)
  max(f)
  
  g=seq(1,8)
  matrix(g,2,4)
  
  hey
  library(help="datasets")
  
  data(Orange)
  head(Orange)
  data(sleep)
  
  head(babyNames)
  
 babyNames$newcol=rep(0,1966001)
  babyNames$newcol[which(babyNames$Sex=="M")]=1
  tail(babyNames)
  head(babyNames)
  babyNames
  ?colnames()
  names(babyNames)[names(babyNames)=="Boy Names"]="Sex Numerical"
  
  
  dbinom(x = 3, size = 9, prob = 0.4)
  
  ###Biostats class
  ?pnorm()
  1-.8944
  pnorm(1.25,80,144)
  5/6
  pnorm(1.25,80,12)
  
  pnorm(1.25)
  1-pnorm(1.25)
  
  1-pnorm(5/6)
  ####
  
  pnorm
  