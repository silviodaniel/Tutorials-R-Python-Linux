#Create Data Set
Names=c("Romeo","Juliet","Oscar","Sierra")
Gender=c("M","F","M","F")
Occupation=c('Clown','Magician','Hobo','Unemployed')
FaveFood=c('Tuna','Sausage','Melons','Kimchi')
Winners=data.frame(Names,Gender,Occupation,FaveFood)
Winners

#Plotting
Chocolate.Type=c('Dark Chocolate','Milk Chocolate','White Chocolate',"Another")
Calories=c(80,90,100,110)
Sugar=c(6,12,13,15)
Mood=c('Calm','Joyful','Celebrate','Bloated')
Chocolate=data.frame(Chocolate.Type,Calories,Sugar,Mood)
Chocolate
Chocolate.Type Calories Sugar      Mood
1  Dark Chocolate       80     6      Calm
2  Milk Chocolate       90    12    Joyful
3 White Chocolate      100    13 Celebrate
 plot(Chocolate$Calories,Chocolate$Sugar)
 ?plot
 plot(Chocolate$Calories,Chocolate$Sugar,type='l',xlab="Calories",ylab="Sugar")#LINE
 plot(Chocolate$Calories,Chocolate$Sugar,type='o',xlab="Calories",ylab="Sugar")#PLOTS WITH LINE AND POINTS SHOWN/OVER
 abline(lm(Chocolate$Sugar~Chocolate$Calories))
 abline(lm(Sugar~Calories),col=4)##LINEAR REGRESSION
 lines(smooth.spline(Calories,Sugar))
 abline(lm(Chocolate$Sugar~Chocolate$Calories))
 