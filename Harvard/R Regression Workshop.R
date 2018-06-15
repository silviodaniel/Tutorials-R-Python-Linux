#R Regression Models
sample(1:100,10,prob=c(x,y))
#or place 1:20 again through sample(c(1:20,1:100),,,,keep prob)

#1
j=c(1:20,1:100);j
x=rep(2,20)
y=rep(1,80)
c(x,y)#to concatenate
?sample()

rep(1,10)
#2
hist(dnorm(79,0,7))
qnorm(.94,79,7)
?dnorm()

#3
(hist(rnorm(100,3,8)))
(hist(rnorm(50,3,8)))
(hist(rnorm(20,3,8)))
(hist(rnorm(10,3,8)))

mean(rnorm(100,3,8))
mean(rnorm(50,3,8))
mean(rnorm(20,3,8))
mean(rnorm(10,3,8))

sd(rnorm(100,3,8))#larger sd 
sd(rnorm(50,3,8))
sd(rnorm(20,3,8))
sd(rnorm(10,3,8))#smallest sd

?rbinom()
?sample()
#4
rbinom(30,1,.5)#size is how many
sample(1:2,30,replace=TRUE)#size sample size

#5
#90%,99%,99.5%: 

qnorm(.975)#95% CI; 1-alpha/2; 1.96

qnorm(.95)#90%, 1.645
1-.01/2
1-.005/2
qnorm(.995)#99; 2.58
qnorm(.9975)#99.5; 2.81
#As coverage increases (90% to 99.5%), interval length increases.

f=0
for(i in 1:10){#for i as i changes 1 to t10
  f=f+rnorm(1)
}
f

#FIbonacci
X=c(1,1,rep(NA,18))

rep(NA,18)
for(i in 3:20){#start at pos 3 in vector
  X[i]=X[i-1]+X[i-2]#specify the vector after 3:20
}#fills all NAs with new Xi
X

m=matrix(NA,nrow=10,ncol=10)
for(i in 1:10){
  for(j in 1:10){
    m[i,j]=mean(c(i+j,i*j))
  }
}
m

x=0
while(x<100){
  x=x+sample(1:10,1)
}
x

#
output=c()
x=0

while(x<4&x>-4){
  x=rnorm(1)
  output=c(output,x)
}
rnorm(1)

#Better, creates less time creating new data structures since filling just one vector
output = rep(NA,10000)
i = 0 #this is how you iterate in a while loop
x = 0
while(x<4 & x>-4){
  i = i + 1
  x = rnorm(1)
  output[i] = x
}
output = output[!is.na(output)];output

x = c(2,3,5,3,5)
y = c(3,4,3,7,8)

any(x>4)
all(x>4)

x = 10
if(x<9){ #one conditional statement
  print("x is smaller than 9")
}
if(x<9){
  print("x is smaller than 9")
} 
else{
  print("x is not smaller than 9")
}
sdklfjasldad
10+1
mean(x)

#????????????????
count8 = 0
count7 = 0
for(i in 1:100){
  if(x[i]%%8==0){
    count8 = count8+1
  } 
  else if(x[i]%%7==0){
    count7=count7+1
  }
}
count7
count8

for(i in 1:10){
  if(i==8){
    next
  }
print(i)
}

count=0
x=1:1000

for(i in 1:100){
  if(x[i]%%2==1){
    count=count+1
  }
}
count

#Exercise 1
f = 0
for(i in 1:10){ #for i as i changes from 1 to 10
  f = f+rnorm(1)
}
f

#2
#
count=0
i=0
odd=rep(NA,10)
while(count<10){
  i=i+1
  if(i%%2==1){
    count=count+1
    odd[count]=i
  }
}
odd
count
seq(1,6,2)
5%%2==1

#3
for(a in 2:8){
  for(b in seq(1,6,2)){
    if(a<b){
      
      print(paste(a," is less than",b))
    }
  }
}

#lesson 2
z = rnorm(3000)
z[sample(1:3000,938,replace=FALSE)] = NA;z#take out 938 numbers

zforloop = z
zforvector = z

for(i in 1:3000){
  if(is.na(zforloop[i])){ #this is an example of a conditional statement, which we will talk about in the next section
    zforloop[i] = mean(zforloop,na.rm=TRUE)
  }
}
zforloop

zforvector[is.na(zforvector)] = mean(z,na.rm=TRUE);zforvector

x = matrix(rnorm(320),nrow=40,ncol=8)#Find mean for each column
apply(x,MARGIN = 2,FUN = mean)#2 is by column, 1 is by rows

apply(x,MARGIN = 2,FUN = quantile, probs = c(0.025,0.975))
#

data(airquality)
View(airquality)
by(airquality,airquality$Month,summary)

apply(airquality,MARGIN=2,FUN=mean,na.rm=TRUE)
apply(airquality,MARGIN=2,FUN=sd,na.rm=TRUE)
apply(airquality,MARGIN=2,FUN=quantile,probs=.95,na.rm=TRUE)

?rgamma()
x=rnorm(1000)
y=rgamma(1000,shape=2,rate=5)
x>y
sum(x>y)/1000#.358

cuberoot=function(x){
  x^(1/3)
}
cuberoot(27)

root=function(num,rootn){
  num^(1/rootn)
    
}
root(27,3)

#But we want to set a default anyway
root = function(x,rootnum=3){#deafult of 3
  x^(1/rootnum)
}
root(27)

#????????????
#need an existing data frame
x=(1:100)
returneven2 = function(x){
  evens = data.frame(rep(NA,length(x)),rep(NA,length(x)))
  names(evens) = c("value","index")
  for(i in 1:length(x)){
    if(x[i] %% 2 ==0){
      evens[i,] = c(x[i],i)
    }
  }
  evens[!is.na(evens$value),]
}
head(returneven2(x))

