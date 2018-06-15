install.packages("ggplot2")
hist(babyNames$Name.length, main="Histogram of Name Length",xlab="Name.Length")
library(ggplot2)
ggplot(babyNames, aes(x=Name.length))+geom_histogram()

babyNames=babyNames[order(babyNames$Year),]
plot(Percent~Year,type="l",data=subset(babyNames,Location=="MA" & Name=="heather"))
points(Percent~Year,type="l",col="red",data=subset(babyNames,Location=="TX"&Name=="heather"))
title("Popularity of the name Heather over time")
legend(2007,.18,c("MA","TX"),title="Location",col=c("black","red"),pch=c(1,1))

ggplot(subset(babyNames,Location %in% c("MA","TX")&Name=="heather"),aes(x=Year,y=Percent,color=Location))+geom_line()

help.search("geom_",package="ggplot2")
hp2001Q1 <- subset(babyNames, Name == "jessica" & Location %in% c("MA","DE","CT","RI","MD"))
ggplot(hp2001Q1,aes(y=Percent,x=Year))+geom_point()#for scatter plot, only need to specify
#the x and y variables

hp2001Q1$pred.SC <- predict(lm(Percent ~ Year, data = hp2001Q1))#predicted points, regression
ggplot(hp2001Q1,aes(x=Year,y=Percent))+geom_point(aes(color=Location))+geom_line(aes(y=pred.SC))
ggplot(hp2001Q1,aes(x=Year,y=Percent))+geom_point(aes(shape=Location))+geom_line(aes(y=pred.SC))
#search for shape types
?aes(shape)

install.packages("ggrepel",repos="https://cloud.r-project.org")
library("ggrepel")
ggplot(hp2001Q1,aes(x=Year,y=Percent))+geom_point() +geom_text_repel(aes(label=Location),size=3)

ggplot(hp2001Q1,aes(x=Year,y=Percent))+geom_point(aes(color=Location))+geom_smooth()

###Economist
ggplot(ed,aes(x=CPI,y=HDI))+geom_point(color="blue")

ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region),size=2)

ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region,size=HDI.Rank))

ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region),size=2)+geom_smooth()

?stat_smooth

ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region),size=2)+geom_smooth()

ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region,size=HDI.Rank))+geom_smooth(method="lm")

ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region,size=HDI.Rank))+geom_smooth(method="lm",formula=y~log(x))
######
ggplot(subset(babyNames,Year=2000), aes(x = Percent)) + geom_histogram(stat="bin",binwidth=.05)
#Binwidth is thickness of bars in histograms

p1 = ggplot(subset(babyNames,Name=="david" & Location %in% c("MN","ND","SD","IN","WI","IL")), #I'm going to save this ggplot object because we will create many plots using it
            aes(x = Location,
                y = Percent)) +
  theme(legend.position="top",
        axis.text=element_text(size = 12))
(p2 <- p1 + geom_point(aes(color = Year),
                       alpha = 0.5,
                       size = 3,
                       position = position_jitter(width = 0.25, height = 0)))

p2 + scale_x_discrete(name="State Abbreviation") + #changes our X axis label
  scale_color_continuous(name="", #changes the look of our legend
                         breaks = c(1996, 2004, 2015),
                         labels = c("'96", "'04", "'15"),low="red",high="yellow")
##Exercise 2
ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region),size=2)
p=ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region),size=2)+scale_y_continuous(name="Human Development ndex")+scale_x_continuous(name="Corruption Perception Index")
  
?scale_color_manual
library(ggplot)
p+scale_colour_manual(values=c("red","yellow","purple","blue","green",rgb(250/255,70/255,22/255)))

?color#########CHOOSE OWN COLORS
install.packages("grDevices")
library(grDevices)
############

ggplot(subset(babyNames,Name=="andrea"), aes(x = Year, y = Percent)) + geom_line(aes(color = Location))+facet_wrap(~Location, ncol=10)+theme_linedraw()+theme(text = element_text(color = "green"))

##Economist Project
p=ggplot(ed,aes(x=CPI,y=HDI))+geom_point(aes(color=Region),size=2,shape="O")+scale_y_continuous(name="Human Development ndex")+scale_x_continuous(name="Corruption Perception Index");p
p+geom_smooth(method="lm",formula=y~log(x))+geom_text_repel(aes(label=Country%in% c("EU W. Europe")),size=3)
##GEOM TEXT REPEL FUNCTION, label, subset of data


?scale_shape_discrete
head(ed)

(73.9-70)/18.1
z1=pnorm(0.2154696)
(73.9-78)/18.1
z2=pnorm(-0.2265193)
z1-z2

se=18.1/10
pnorm((73.9-78)/1.81)-pnorm((73.9-70)/1.81) 

9/(46/5)
1-pnorm(9/(46/5))
9/(46/5)

46*1.96
211-46*1.96
211+46*1.96

binom.test(7,20,.4)#.35
binom.test(8,20,.4)#.4
binom.test(9,20,.4)#
binom.test(10,20,.4)
binom.test(11,20,.4)
binom.test(12,20,.4)
?binom.test

qnorm(.95)

qnorm(.975)#95% CI z score
1-.05/2#(1 - alpha/2)
1-.1/2

qt(.975,9)
?qt()
z=qnorm(.975);z

37.2-7.13/sqrt(10)*z
37.2+7.13/sqrt(10)*z

z
(13.6)-z*(2/8)
(13.6)+z*(2/8)

?pnorm()
(13.6-9.7)/(1/4)
1-pnorm((13.6-9.7)/(1/4))
2*pnorm(-15.6)

Z=qnorm(.95);Z
qnorm(.975)

abs(-1)
abs(10.60-12.29)/(.85/sqrt(5))-Z
2.800976-Z
pnorm(2.800976)
qnorm(.10, lower.tail=FALSE)

sum(dbinom(7:12, 12, 0.6))

qt()?
2*pt(3.35,13,lower.tail=FALSE)

2*pt(3.03,93,lower.tail = FALSE)

10.9/4.6

2*pt(4.19,ts,lower.tail=FALSE)

s1n=10.9^2/63
s2n=4.6^2/32

ts=(s1n+s2n)^2/((s1n^2)/62+s2n^2/31);ts

?pf()
pf()

x=c(0,0)
y=c(1,1)
y^2-x^2
sum((y^2-x^2))
sqrt(sum(y^2-x^2))



