#setwd("~")
# 3%/%2 questa rappresenta una divisione in modulo
sqrt(4)
# help(sqrt) questo comando mi permette di consultare la libreria del comando al suo interno.


#ASSEGNAZIONE
# se vogliamo assegnare ad una variabile il valore posso vare due cose:
a<-3

#vettori
#sono vettori colonna
c <- c(1,2,3)
d <- c(1,2,3)


#sequenze
seq(to =7, by= 1,from =5)

rep(2,3)


#variazione
y=2:8
min(y)
max(y)

#questi due comandi mi restituiscono la posizione del vettore in cui si trova il minimo o il massimo
which.min(y)
which.max(y)

#nel caso di un vettore con ripetizione del minimo, questo comando mi restituisce il minimo valore che arriva prima
z <- c(1,1,3,4,5,5)
which.min(z)
which.min(z)

isBigger <- 6>10
isBigger==TRUE
isBigger==T
isBigger==F

#verificare una disuguaglianza
6!=7

#questo è una concatenazione di richieste
(6!=7)&(10>4)

# OR
(6!=7)|(10>4)

# XOR
xor((6!=7),(10>4))

#restituisce un vettore di logici che è vero solo per le caselle in cui è verificata tale operatore logico
y==max(y)

#questo mi restituisce un vettore in cui ci sono i valori che soddisfano tale operatore logico
y[y==max(y)]

#cercare di evitare dei cicli "for" in quanto R non è ottimizzato per questi cicli

#MATRICI
#non è ottimizzato per fare il calcolo matriciale
cbind(x,z)
#nel caso in cui uno dei vettori sia più piccolo dell'altro, nelle caselle in cui non c'è nulla, R inserisce 1

AA<-cbind(x,z)
dim(AA)

BB<-rbind(x,z)
BB
BB[2,2]



#STRINGHE
nomi<- c('Francesco','Silvia','Stefania')
nomi2<- c('Nicola','Alice','Fabio')

nomi[2]
#i vettori non possono essere misti quindi sono booleani, cifre o stringhe.
#Nel caso in cui ci sia un vettore misto R prende il tipo del primo termine e selezione tutti gli elementi di quel tipo all'interno di tale vettore


nth<- paste(1:12,c("st","nd","rd",rep("th",9)))
nth


#DATAFRAME
c<- list(destinazione = c("London","Madrid"), compagnia = c("Rayanair","EasyJet"), costo =c("sterline","euro"))

c$costo










