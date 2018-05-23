<<<<<<< HEAD
?rbinom
hist(rbinom(10000,10,1/3),freq=FALSE,breaks=-1:10)
dbinom(7,10,1/3)
dbinom(0:10,10,1/3)
hist(rbinom(500,10,1/3),freq=FALSE,breaks = -1:10)
curve(dbinom(ceiling(x),10,1/3),add=TRUE,col="red")
pbinom(2,10,1/3)
qbinom(.8,10,1/3)
x=8;y=4;z=3
c(x,y,z)
age=19
if(age>=6){can.ride=T}
can.ride
ride.test=function(age)
{
  can.ride=F
  if(age>=6){can.ride=T}
  return(can.ride)
}
ride.test(5)
ride.test(60)
ride.test=function(age){return(age>=6)}
ride.test(5)

central.tend=function(x)
{
  my.answer=median(x)
  if(length(x)<10){my.answer=mean(x)}
  return(my.answer)
}
central.tend(c(1,1,3))
central.tend(1,1,3)
if(Inf-Inf>0){x=5}
if(c(T,T,F)){1+1}

dbinom(9,9,4/5)
dbinom(7,9,4/5)
patients=(1:9)
patients
plot(patients,dbinom(patients,9,4/5),main="Probability of No Side Effect",ylab= "Probability",xlab = "Number of Patients without Side Effects")

?abline
abline(h=.025,col="red")
#standard treatment produces no side effects in 2.5% or does have side effects in 97.5% of patients
=======
?rbinom
hist(rbinom(10000,10,1/3),freq=FALSE,breaks=-1:10)
dbinom(7,10,1/3)
dbinom(0:10,10,1/3)
hist(rbinom(500,10,1/3),freq=FALSE,breaks = -1:10)
curve(dbinom(ceiling(x),10,1/3),add=TRUE,col="red")
pbinom(2,10,1/3)
qbinom(.8,10,1/3)
x=8;y=4;z=3
c(x,y,z)
age=19
if(age>=6){can.ride=T}
can.ride
ride.test=function(age)
{
  can.ride=F
  if(age>=6){can.ride=T}
  return(can.ride)
}
ride.test(5)
ride.test(60)
ride.test=function(age){return(age>=6)}
ride.test(5)

central.tend=function(x)
{
  my.answer=median(x)
  if(length(x)<10){my.answer=mean(x)}
  return(my.answer)
}
central.tend(c(1,1,3))
central.tend(1,1,3)
if(Inf-Inf>0){x=5}
if(c(T,T,F)){1+1}

dbinom(9,9,4/5)
dbinom(7,9,4/5)
patients=(1:9)
patients
plot(patients,dbinom(patients,9,4/5),main="Probability of No Side Effect",ylab= "Probability",xlab = "Number of Patients without Side Effects")

?abline
abline(h=.025,col="red")
#standard treatment produces no side effects in 2.5% or does have side effects in 97.5% of patients
>>>>>>> b1b38498ba0a014f24d12e94aea7e5d5e5389191
#shows we need at least 5 patients to be better than standard