covid_err <- read.csv(url("https://raw.githubusercontent.com/pcm-dpc/COVID-19/master/dati-province/dpc-covid19-ita-province.csv"))
covid_err$data <- as.Date(covid_err$data)
prov_err <- which(covid_err$codice_provincia>900)
cod = 202215-22*floor(202215/22)
covid <- covid_err[-prov_err,]
covid_reg <- covid[which(covid$codice_regione==cod),]

plot(covid_reg$data,covid_reg$totale_casi)



ieri_altro <- covid[which(covid$data >'2020-06-30' & covid$data < '2020-07-02'),] 
ieri <- covid[which(covid$data >'2020-07-01' & covid$data < '2020-07-03'),]


incremento=ieri$totale_casi -ieri_altro$totale_casi
incremento
t=sum(incremento)
media <- mean(ieri$totale_casi)
tot= sum(ieri$totale_casi)
tot
plot(ieri$data,t)
