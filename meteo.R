#RAPORT
#dane o stacjach synoptycznych oraz miesięcznych pomiarach średniej temperatury,
#sumy opadów i średniego ciśnienia atmosferycznego z lat 2000 do 2020
dane <- read.csv("meteo20002020.csv", encoding = "UTF-8")
dane

#Raport dot. stacji Krosno 
#Dane:
library(dplyr)
krosno <- filter(dane, station == "KROSNO")
krosno

#średnia temp stycznia i lipca w latach 2000-2020






#