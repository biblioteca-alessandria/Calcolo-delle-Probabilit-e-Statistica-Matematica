getwd()
setwd("~/R/dataset")
PM10dataSA<- read.csv("./PM10dataSanAndreas.csv")
PM10dataSA$Date.Local <-as.Date(PM10dataSA$Date.Local)


library(MASS)
library(hflights)
install.packages('hflights')

which.min(PM10dataSA$Date.Local)
min(PM10dataSA$Date.Local)
max(PM10dataSA$Date.Local)

summary(PM10dataSA)

str(PM10dataSA)

#trasformare data ed ora in un unica colonna
PM10dataSA$DateTime.Local <- as.POSIXct(paste(PM10dataSA[1,c("Date.local")],PM10dataSA[1,c("Time.Local")]),format="%Y-%m-%d %H:%M",tz="America/Los_Angeles",usetz=TRUE)
plot(PM10dataSA$Date.Local,PM10dataSA$DateTime.Local)  
