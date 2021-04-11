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



#roczny rozkład ciśnienia w latach:
#2000
library(ggplot2)
krosno2000 <- filter(krosno, rok == "2000")
krosno2000

miesiąc <- 1:12
ciśnienie <- c(krosno2000$cisnienie)
krosno2000df <- data.frame(miesiąc,ciśnienie)
krosno2000_wykres <- ggplot(krosno2000df, aes(x=miesiąc, y=ciśnienie)) +
  geom_line(color="#69b3a2", size=1, alpha=0.9) +ggtitle("Krosno 2000")
krosno2000_wykres

#2010
krosno2010 <- filter(krosno, rok == "2010")
krosno2010

miesiąc <- 1:12
ciśnienie <- c(krosno2010$cisnienie)
krosno2010df <- data.frame(miesiąc,ciśnienie)
krosno2010_wykres <- ggplot(krosno2010df, aes(x=miesiąc, y=ciśnienie)) +
  geom_line(color="#843273", size=1, alpha=0.9) +ggtitle("Krosno 2010")
krosno2010_wykres


#2020
krosno2020 <- filter(krosno, rok == "2020")
krosno2020

miesiąc <- 1:12
ciśnienie <- c(krosno2020$cisnienie)
krosno2020df <- data.frame(miesiąc,ciśnienie)
krosno2020_wykres <- ggplot(krosno2020df, aes(x=miesiąc, y=ciśnienie)) +
  geom_line(color="#906500", size=1, alpha=0.9) +ggtitle("Krosno 2020")
krosno2020_wykres

#porównanie 2000-2010-2020
krosno001020 <- filter(krosno, rok %in% c("2000","2010","2020"))
krosno001020

##   supp dose  len
## 1   VC D0.5  6.8
## 2   VC   D1 15.0
## 3   VC   D2 33.0
## 4   OJ D0.5  4.2
## 5   OJ   D1 10.0
## 6   OJ   D2 29.5

ggplot(data=df2, aes(x=dose, y=len, group=supp)) +
  geom_line()+
  geom_point()
# Change line types
ggplot(data=df2, aes(x=dose, y=len, group=supp)) +
  geom_line(linetype="dashed", color="blue", size=1.2)+
  geom_point(color="red", size=3)



#Podsumowanie:
lipiec_avg    #średnia temperatura lipca
styczen_avg   #średnia temperatura stycznia
suma_opadow   #suma opadóW
krosno2000_wykres #wykres rocznego rozkładu ciśnienia 2000
krosno2010_wykres #wykres rocznego rozkładu ciśnienia 2010
krosno2020_wykres #wykres rocznego rozkładu ciśnienia 2020




