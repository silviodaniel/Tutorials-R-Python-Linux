 #R Review notes
#changes
rm(list=ls())
#For loop
#Needto know: length of list, and which ith you are taking out from data
random=seq(0,5)
random_sqd=NULL
random[1]
for (i in 1:6){
  random_sqd[i]=random[i]^2
}
print(random_sqd)
print(random)

#
plot(3,3)
coord=c(2,2.5,4)
for (i in 1:3){
  points(coord[i],coord[i])
}

points(2,2)
points(4,4)
points(2.5,2.5)


#subsetting and repeating data
vec=rep(c("a","b","c"),each=12)
st=subset(df1,vec=="a")
df1=data.frame(vec)

rep(c(0,0,1),times=3)
rep(c(0,0,1),each=3)#Different!
seq(0,8,by=2)#0,2,4,6,8

#Function example
mm=function(x){
  return(c(mean(x),median(x)))
}

mm(lbw_subset$gest_age)

#Get column number from indexing
grep("^mat_med_risk___2$",colnames(data))


#Combine data frames, rbind by rows
cohort=rbind(control_subset,lbw_subset,preterm_subset)

#2 sample t test
Control = c(91, 87, 99, 77, 88, 91)
Treat = c(101, 110, 103, 93, 99, 104)
t.test(Control,Treat,alternative="less", var.equal=TRUE)
#This is assuming equal standard deviation, make var.equal =F if not 
?t.test()

#Chi square
x1 <- c(272003,310418,201601,237168)
x2 <- c(239614,316515,182070,198025)
cbind(x1,x2)

SoreThroat <-   read.table("http://www.stat.ufl.edu/~aa/cat/data/SoreThroat.dat",
                            skip=5, header=TRUE)
SoreThroat

chisq.test(cbind(SoreThroat$T,SoreThroat$Y))

testor=rbind(c(4,1),c(20,1));testor
chisq.test(testor,correct=F)
########################################################
#Continuous color values
#Depends on x axis or y axis
x <- runif(100)
dat <- data.frame(x =x,y = x^2 + 1)

#Create a function to generate a continuous color palette
rbPal <- colorRampPalette(c('red','blue'))

#This adds a column of color values
# based on the y values, can base on x values
dat$Col <- rbPal(10)[as.numeric(cut(dat$x,breaks = 10))]

plot(dat$x,dat$y,pch = 20,col = dat$Col)

head(dat)
#######################################
#RColorBrewer
par(mfrow=c(2,2))#Multiple plots in one window, 

### Show all the colour schemes available
display.brewer.all()

### Generate random data matrix
rand.data <- replicate(8,rnorm(100,100,sd=1.5))

### Draw a box plot, with each box coloured by the 'Set3' palette
boxplot(rand.data,col=brewer.pal(8,"Set3"))

### Draw plot of counts coloured by the 'Set3' pallatte
br.range <- seq(min(rand.data),max(rand.data),length.out=10)
results <- sapply(1:ncol(rand.data),function(x) hist(rand.data[,x],plot=F,br=br.range)$counts)
plot(x=br.range,ylim=range(results),type="n",ylab="Counts")
cols <- brewer.pal(8,"Set3")
lapply(1:ncol(results),function(x) lines(results[,x],col=cols[x],lwd=3))

### Draw a pie chart
table.data <- table(round(rand.data))
cols <- colorRampPalette(brewer.pal(8,"Dark2"))(length(table.data))
pie(table.data,col=cols)

#colorRampPalette(brewer.pal(9,"Blues"))(100)

#Plots a gradient of color (2 colors)
#THIS IS THE ONE TO USE FOR MY MAP
#Won't work because depends on x  value
colfunc <- colorRampPalette(c("red", "blue"))
colfunc(10)
#plot(rep(1,10),col=c(4,1,2,3),pch=19,cex=3)
plot(rep(1,10),col=colfunc(10),pch=19,cex=3)

#Back to normal view normal window
par(mfrow=c(1,1))


qnorm(1.96)
########################################################################
#GGPLOT2
library(ggplot2)

#Plot with 3 colors specified based on certain thresholds set
ggplot(mtcars, aes(wt, mpg)) + 
  geom_point(aes(colour = cut(qsec, c(-Inf, 17, 19, Inf))),
             size = 1) +
  scale_color_manual(name = "qsec",
                     values = c("(-Inf,17]" = "black",
                                "(17,19]" = "yellow",
                                "(19, Inf]" = "red"),
                     ##CAREFUL! TINNYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
                     #Little change above, not including the space after 19
                     #comma then Inf, would change the plot!!!!!!!!!!!!
                     labels = c("<= 17", "17 < qsec <= 19", "> 19"))

#
ggplot(mtcars, aes(wt, mpg)) + 
  scale_fill_gradientn(colours=c("navyblue","darkmagenta","darkorange1"),
                       breaks=c(16,18,20),labels=format(c(16,18,20)))
  
  scale_fill_gradientn(colors=c("blue","yellow","red"),
  breaks=c(0,17,19),labels=format(c("0","17",'19')))
  # scale_color_gradient2()
  
ggplot(mtcars,aes(wt,mpg))+geom_point(aes(colour=qsec))+
  scale_color_gradient(low="black",high="yellow")

ggplot(mtcars,aes(wt,mpg))+geom_point(aes(colour=qsec))+
  scale_color_gradient2()

ggplot(mtcars,aes(wt,mpg))+geom_point(aes(colour=qsec))+
  scale_color_gradientn(colours=terrain.colors(5))
  
ggplot(mtcars,aes(wt,mpg))+geom_point(aes(colour=qsec),size=1)+
  scale_color_gradientn(colours=rainbow(5))

ggplot(mtcars,aes(wt,mpg,fill=qsec))+geom_point()+
  scale_fill_gradientn(colours=topo.colors(7),na.value="transparent",
                       breaks=c(15,18,22.5),labels=c("Minimum",18,"Maximum"),
                       limits=c(15,18,22.5))


# ggplot(df, aes(x, y, fill = z)) + geom_raster() + 
#   scale_fill_gradientn(colours=topo.colors(7),na.value = "transparent",
#                        breaks=c(0,0.5,1),labels=c("Minimum",0.5,"Maximum"),
#                        limits=c(0,1))
  
head(mtcars)
###############################################################################
#How to change values in a list to other value depending on condition
Crabs <- read.table("http://www.stat.ufl.edu/~aa/cat/data/Crabs.dat",header=T)
fit=glm(Crabs$y~Crabs$width,family=binomial)
predicted=rep(0,173)
predicted[fitted(fit)>.5]=1

#WHICh
( m <- matrix(1:12, 3, 4) )
div.3 <- m %% 3 == 0
which(div.3)

df <- data.frame(x = runif(20))
df
w=which(df$x > 0.9);w
data.frame(which=w, df=df[w, ])

class(df)

#Fishers exact
testor = rbind(c(4,1),
                  c(20,1) ); testor
fisher.test(testor)
chisq.test(testor)

#Replacing values in column based on condition
species<-"ABC"
ind<-rep(1:4,each=24)
hour<-rep(seq(0,23,by=1),4)
depth<-runif(length(ind),1,50)

df<-data.frame(cbind(species,ind,hour,depth));df
tail(df)
df$depth[df$depth<10] <- 0
levels(df$species) <- c(levels(df$species), "unknown") 
df$species[df$depth<10]  <- "unknown" 


##Testing above, changing values based on condition
random=c(rep(0,5),rep(2,5),rep(4,5),rep(6,5));random
random2=c(rep(6,10),rep(0,10))
random3=c(rep(0,10),rep(NA,10))
# length(random)
zeros=c(rep(0,20))
df=data.frame(random,random3,zeros);df
df$zeros[df$random>4|df$random3>4]=1#CHANGE MULTIPLE ROWS
df
length(which(df[,1:2]>4))#CANT DO THIS, BECAUSE IT WILL COUNT THE ONES OVERLAPPING TWICE
length(which(df$zeros==1))
length(which(df$random>4|df$random3>4))#DO THIS WAY, IT WILL ACCOUNT FOR OVERLAP

df[!df$random==2|!is.na(df$random3),]
df[!df$random==2|df$random==4,]
subset(df,random3!=2)
df[complete.cases(df),]

##Check if value in a row
A = data.frame(C=c(1,2,3,4))
B = data.frame(C=c(1,3,4,7))

A$C %in% B$C
A[A$C %in% B$C,  ] 
##########################################################################
#SPDF Example
dput(buildings_df)
buildings_df=structure(list(lon = c(96.135972, 96.1358, 96.136315, 96.136562, 
                       96.133997, 96.133922, 96.134319, 96.134437, 96.135961, 96.135864, 
                       96.136154, 96.136261, 96.135993), lat = c(16.833625, 16.833153, 
                                                                 16.832978, 16.833512, 16.831038, 16.830729, 16.830637, 16.830853, 
                                                                 16.83074, 16.830442, 16.83035, 16.830647, 16.830729), id = structure(c(1L, 
                                                                                                                                        1L, 1L, 1L, 2L, 2L, 2L, 2L, 3L, 3L, 3L, 3L, 3L), .Label = c("convocation_hall", 
                                                                                                                                                                                                    "judson_church", "the_library"), class = "factor")), .Names = c("lon", 
                                                                                                                                                                                                                                                                    "lat", "id"), row.names = c(NA, -13L), class = "data.frame")
#
buildings_list <- split(buildings_df, buildings_df$id)
# only want lon-lats in the list, not the names
buildings_list <- lapply(buildings_list, function(x) { x["id"] <- NULL; x })

head(buildings_list)
ps <- lapply(buildings_list, Polygon)

# add id variable
p1 <- lapply(seq_along(ps), function(i) Polygons(list(ps[[i]]), 
                                                 ID = names(buildings_list)[i]  ))

# create SpatialPolygons object
my_spatial_polys <- SpatialPolygons(p1, proj4string = CRS("+proj=longlat +datum=WGS84") )

my_spatial_polys_df <- SpatialPolygonsDataFrame(my_spatial_polys, 
                                                data.frame(id = unique(buildings_df$id), 
                                                           row.names = unique(buildings_df$id)))
View(my_spatial_polys_df)
str(my_spatial_polys_df)


#Example, plot triangle plot lines
plot(1:100,type='n')
lines(c(0,0,20,0),c(0,20,20,0))#Plot triangle

#Histogram tick marks
dat <- sample(100, 1000, replace=TRUE)
hist(dat, xaxt='n')#xaxt removes the default tick marks
# hist(dat)
axis(side=1, at=seq(0,100, 5), labels=seq(0,1000,50))
# View(dat)
#better way
hist(dat)
axis(side=1,at=seq(0,100,5),labels=seq(0,100,5))
axis(side=2,at=seq(0,100,10),labels=seq(0,100,10))
hist(dat,yaxt='n')
axis(side=2,at=seq(0,100,10),labels=seq(0,100,10))

#Adding new column based on other values in other column
table<- data.frame(population=c(100, 300, 5000, 2000, 900, 2500), habitat=c(1,2,3,4,5,6))
head(table)

#Take note, here , the last else argument must be included (4, then 5);see below too
table$size1<-ifelse(table$population<500,1,
                    ifelse(table$population>=500 & table$population<1000,2,
                           ifelse(table$population>=1000 & table$population<2000,3,
                                  ifelse(table$population>=2000 & table$population<3000,4,5
                                  ))));head(table)

class(table$population<500)

##additional example of above
A = data.frame(C=c(1,2,3,4))
B = data.frame(C=c(1,3,4,7))

A = data.frame(C=v1)
B = data.frame(C=c("FL","AL","KT","TN"))
D= data.frame(C=c("KT","GA"))

B$C %in% A$C
!B$C %in% A$C#Negate

B$test=ifelse(B$C %in% A$C,"SOUTH",
              ifelse(B$C %in% D$C,"NORTH","ELSE"));B#ELSE IS THE LAST ELSE ARGUMENT

#Random sampling each factor
df <- data.frame(matrix(rnorm(80), nrow=40));head(df)
df$color <-  rep(c("blue", "red", "yellow", "pink"), each=10)
tail(df)
View(df)

#Convert data frame to vector
test <- data.frame(x=c(26,21,20),y=c(34,29,28))
test
test1=as.vector(t(test))#why the t() function? transpose ?

test1[1]

##REmove special characters
x <- "a1~!@#$%^&*(){}_+:\"<>?,./;'[]-=" #or whatever
gsub("[[:punct:]]", "", x)
# str_replace_all(x, "[[:punct:]]", " ")

######################################

#Check if a character or phrase in a string
chars <- "test"
value <- "testing"
grepl(value, chars)

#Check if one of multiple separate strings in a vector
mult_strings <- c("testing","just","because of")
value <- "because"

value %in% mult_strings 
grepl(value,mult_strings[3])

value %in% chars
#########################################################################
#using dplyr
# > nrow(unique(select(rural, CVE_MUN, CVE_AGEB)))
# [1] 346
# > length(unique(select(rural, CVE_MUN, CVE_AGEB)))
# [1] 3
# > unique(select(rural, CVE_MUN, CVE_AGEB)) %>% nrow()
# [1] 346
# rural %>% select(CVE_MUN,CVE_AGEB) %>% unique








