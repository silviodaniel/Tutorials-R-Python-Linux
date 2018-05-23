setwd("C:/Users/Silvio/AppData/Local/Temp/RtmpQFrPOO/downloaded_packages")
install.packages("raster")
install.packages("rgdal")
install.packages("sp")

library(rgdal)
library(raster)
getwd()
aoiBoundary_HARV <- readOGR("C:/Users/Silvio/AppData/Local/Temp/RtmpQFrPOO/downloaded_packages","raster_2.5-8.zip")
