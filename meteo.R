#RAPORT
#dane o stacjach synoptycznych oraz miesięcznych pomiarach średniej temperatury,
#sumy opadów i średniego ciśnienia atmosferycznego z lat 2000 do 2020
dane <- read.csv("meteo20002020.csv", encoding = "UTF-8")
dane

#Raport dot. stacji Krosno 

#Dane:
library(dplyr)
krosno <- filter(dane, station == "KROSNO")

#średnia temp stycznia i lipca w latach 2000-2020
#lipiec:
lipiec = krosno[krosno$mies == 8, ]
lipiec
lipiec_avg = mean(lipiec[["tavg"]])
lipiec_avg
#styczeń:
styczen = krosno[krosno$mies == 1, ]
styczen
styczen_avg = mean(styczen[["tavg"]])
styczen_avg

#roczne sumy opadów 
suma_opadow = data.frame(stacja = c("Krosno"), 
                    aggregate(krosno['opad'], by=krosno['rok'], sum))
suma_opadow

#Podsumowanie:
lipiec_avg    #średnia temperatura lipca
styczen_avg   #średnia temperatura stycznia
suma_opadow   #suma opadóW


