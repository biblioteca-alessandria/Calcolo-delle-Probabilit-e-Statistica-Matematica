getwd()
setwd('~D:/Desktop/UNITN/2° ANNO/Bonaccorsi/R')


library(MASS)
library(hflights)
install.packages('hflights',dependencies = )  
search()
MASS::crabs
hflights::hflights
hflights<-hflights::hflights
#Header legge il nome delle variabili
BodyTemperature <- read.table(url('http://extras.springer.com/2012/978-1-4614-1301-1/BodyTemperature.txt'),header = T)

#INFORMAZIONI SULLA STRUTTURA DEI DATI
head(BodyTemperature,n=10)
tail(BodyTemperature)

#mi permette di vedere il dataframe in una tabella aperta in un'altra finestra
View(BodyTemperature)
View(hflights)

#da le dimensioni di tale tabella
dim(hflights)

#fornisce il nome delle colonne in cui è strutturato
names(hflights)
str(hflights)


#da la caratterizzazione del data set
summary(BodyTemperature)
mean(BodyTemperature$Age)
IQR(BodyTemperature$Temperature)
range(BodyTemperature$Temperature)


#scegliere colonne numeriche
apply(BodyTemperature[,2:4],2,mean)
apply(BodyTemperature[,2:4],2,IQR)

#arrotonda i numeri
round(BodyTemperature$Temperature,1)
sort()

#mi da una lista composta da elementi diversi
unique(hflights$UniqueCarrier)

any(BodyTemperature$Temperature==98.9)
which(BodyTemperature$Temperature==98.9)
BodyTemperature$Temperature[which(BodyTemperature$Temperature==98.9)]


MASS::birthwt

bw1$race<-as.factor(bw1$race)
levels(bw1$race)<-c('white','Black','other')

table(bw1$race)
summary(bw1)

#mi da le percentuali di ciò
prop.table(table(bw1$race))
round(prop.table(table(bw1$race)),2)





Pima<- MASS::Pima.tr2
View(Pima)
mean(Pima$skin, na.rm = T)
apply(Pima,2,is.na)

#prendo la tabella e tolgo tutte quelle righe che posiedono al loro interno "NA"
na.omit(Pima)
View(na.omit(Pima))

#VISUALIZZAZIONE DATI
bw1$bwt
summary(bw1$bwt)
boxplot(bw1$bwt)

#il boxplot mi permette di vedere anche rispetto a più variabili categoriche
boxplot(bwt~ race,data= bw1)

hist(bw1$bwt)
hist(bw1$bwt,freq = F)

dati_naz<-read.csv(url('https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-andamento-nazionale/dpc-covid19-ita-andamento-nazionale.csv'
))
View(dati_naz)

#comando che trasforma in date
dati_naz$data<-as.Date(dati_naz$data)

plot(dati_naz$data,dati_naz$nuovi_positivi)
plot(dati_naz$data,dati_naz$terapia_intensiva)
plot(dati_naz$nuovi_positivi,dati_naz$terapia_intensiva)

par(mfrow= c(1,2))
hist(dati_naz$nuovi_positivi,freq = F)
hist(dati_naz$nuovi_positivi[dati_naz$data>"2020-03-31"],freq = F)

par(mfrow=c(1,2))
boxplot(dati_naz$nuovi_positivi[dati_naz$data>"2020-03-31" & dati_naz$data<"2020-05-01"], main = "Apr")
boxplot(dati_naz$nuovi_positivi[dati_naz$data>"2020-02-29" & dati_naz$data<"2020-04-01"], main = "Mar")


