t.test2=function(m1,m2,s1,s2,n1,n2,m0=0,equal.variance=FALSE)
{
  if(equal.variance=FALSE){
    
  }
}
summary(airquality)

reg=lm(airquality$Ozone~airquality$Solar.R);reg
summary(reg)

#CI
p=6/52;p
p+1.96*sqrt(p*(1-p)/52)
p-1.96*sqrt(p*(1-p)/52)

z=()
2*pnorm(-0.733)


p1=.212
p2=.146
n1=3220
n2=10245

p=(n1*p1+n2*p2)/(n1+n2);p
z=(p1-p2)/(sqrt(p*(1-p)*(1/n1+1/n2)));z
2*pnorm(z,lower.tail=FALSE)

prop.test(x=c(683,1498),n=c(3220,10245))

#COGNITIVE ABILITY
p=8/33;p
z=qnorm(.975);z
n=33
p+z*sqrt((p*(1-p))/n)
p-z*sqrt((p*(1-p))/n)

prop.test(x=c(8),n=33)

po=.032
p=8/33;p
n=33

z=(p-po)/(sqrt((po*(1-po))/(n)));z
2*pnorm(z,lower.tail=FALSE)

##
(17+218)*(17+130)/(793)
(17+218)*(218+428)/(793)

a=23
b=5
  c=26
  d=16
  n=70
  
ao=(a+b)*(a+c)/n
  bo=(a+b)*(b+d)/n
  co=(c+d)*(a+c)/n
  do=(c+d)*(b+d)/n
sum((a-))

data=matrix(c(23,5,26,16),nrow=2,byrow=TRUE);data
chisq.test(data)$expected#get expected counts chi squared
chisq.test(data)$observed
chisq.test(data)#WITH CORRECTION
OR=(a*d)/(b*c);OR
chisq.test(data,correct=FALSE)#WITHOUT CORRECTION


#McNemar's Test
data=matrix(c(9,37,16,82),nrow=2,byrow=TRUE);data
mcnemar.test(data)
chisq.test(data)
chisq.test(data,correct=FALSE)

pchisq(7.55,1,lower.tail=FALSE)#get p value using chi sq dist manually
pchisq(3.84,1,lower.tail = FALSE)#P VALUE .05 level of significance chi sq
?pt()


1.777-6.284
log10(0)
exp(1.222)
exp(.714)
exp(.368)
exp(.714-.368)
exp(-.168)

z=qnorm(.975)
se=.00815*10;se
b1=-.0168*10;b1
exp((b1-z*(se)))
exp((b1+z*(se)))

2*pnorm(2.321,lower.tail=FALSE)
2.04/1.445


data=matrix(c(610,226,390,774),nrow=2,byrow=TRUE);data
mcnemar.test(data)
chisq.test(data)
chisq.test(data,correct=FALSE)

data=matrix(c(610,390,226,774),nrow=2,byrow=TRUE);data
mcnemar.test(data)
chisq.test(data)
chisq.test(data,correct=FALSE)

1-.226
354/900/(390/1100)

(70*324)/((476*30))

90*600/(110*300)




