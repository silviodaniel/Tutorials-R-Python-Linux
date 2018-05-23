png("test 2.png",width=1800,height=1200,res=400)
par(mar=c(4.1,4.1,2.1,1.1),las=1)
plot(1:10)
dev.off()

png("School Transit.png",width=1800,height=1200,res=400)
par(mar=c(5.1,4.6,3.1,1.1),las=1)
hist(movement_by_type$distance[movement_by_type$type=='school'],xlab="Distance Traveled (km)", main="Histogram of Average School Transit", cex.axis=.75)
dev.off()

png("Work Transit.png",width=1800,height=1200,res=400)
par(mar=c(5.1,4.6,3.1,1.1),las=1)
hist(movement_by_type$distance[movement_by_type$type=='work'],xlab="Distance Traveled (km)", main="Histogram of Average Work Transit", cex.axis=.65)
dev.off()

#cex.lab=somenumber changes the size of labels of axes
#cex.axis=1.5 changes the values of axis

