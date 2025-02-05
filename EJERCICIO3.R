#EJERCICIO 3

#para calcular las probabilidades
gustos.csv->gustos
#Alcohol
nrow(gustos)->total
which(gustos$V2==1)->alc
alc
length(alc)->alcsi
which(gustos$V2==0)->alc1
length(alc1)->alcno
probalc_si<- alcsi/total
probalc_si
probalc_no<- alcno/total
probalc_no

#Chocolate
which(gustos$V3==1)->choco
length(choco)->chocosi
which(gustos$V3==0)->choco1
length(choco1)->chocono
probcho_si<- chocosi/total
probcho_si
probcho_no<- chocono/total
probcho_no

#Bailar
which(gustos$V4==1)->baile
length(baile)->bailesi
which(gustos$V4==0)->baile1
length(baile1)->baileno
probba_si<- bailesi/total
probba_si
probba_no<- baileno/total
probba_no

#auto
which(gustos$V5==1)->auto
length(auto)->ausi
which(gustos$V5==0)->auto1
length(auto1)->auno
proba_si<- ausi/total
proba_si
proba_no<- auno/total
proba_no

#nadar
which(gustos$V6==1)->nadar
length(nadar)->nasi
which(gustos$V6==0)->nadar1
length(nadar1)->nano
probna_si<- nasi/total
probna_si
probna_no<- nano/total
probna_no

#jogging
which(gustos$V7==1)->trote
length(trote)->trsi
which(gustos$V7==0)->trote1
length(trote1)->trno
probtr_si<- trsi/total
probtr_si
probtr_no<- trno/total
probtr_no

#f1
which(gustos$V8==1)->f1
length(f1)->f1si
which(gustos$V8==0)->f2
length(f2)->f1no
probf_si<- f1si/total
probf_si
probf_no<- f1no/total
probf_no

#nfl
which(gustos$V9==1)->nfl
length(nfl)->nflsi
which(gustos$V9==0)->nfl1
length(nfl1)->nflno
probn_si<- nflsi/total
probn_si
probn_no<- nflno/total
probn_no

#comics
which(gustos$V10==1)->comi
length(comi)->comisi
which(gustos$V10==0)->comi1
length(comi1)->comino
probco_si<- comisi/total
probco_si
probco_no<- comino/total
probco_no

#futbol
which(gustos$V11==1)->fut
length(fut)->futsi
which(gustos$V11==0)->fut1
length(fut1)->futno
probfu_si<- futsi/total
probfu_si
probfu_no<- futno/total
probfu_no

#comedias
which(gustos$V12==1)->com
length(chocolate)->comsi
which(gustos$V12==0)->com1
length(choqui)->comno
probcom_si<- comsi/total
probcom_si
probcom_no<- comno/total
probcom_no

#kpop
which(gustos$V13==1)->kp
length(kp)->kpsi
which(gustos$V13==0)->kp1
length(kp1)->kpno
probk_si<- kpsi/total
probk_si
probk_no<- kpno/total
probk_no

#anime
which(gustos$V14==1)->ani
length(ani)->anisi
which(gustos$V14==0)->ani1
length(ani1)->anino
proban_si<- anisi/total
proban_si
proban_no<- anino/total
proban_no

#una persona no le guste el chocolate
mean(gustos.csv$Chocolate==0)->ej2
ej2
gustos.csv$Chocolate==0
#binomiales

combinaciones<-function(n,k){
  factorial(n)/(factorial(k)*factorial(n-k))
}

bino<- function(n,k,p){
  combinaciones(n,k)*p^k*(1-p)^(n-k)
}

#5 personas conducir
combinaciones(10,6)
bino(10,6,0.863)->si_saben
1-si_saben->no_saben
no_saben

#10, 3 gusta F1
combinaciones(10,3)
bino(10,3,0.2272)->si1
1-si1->no1
no1

#15, 5 romcoms
combinaciones(15,5)
bino(15,5,0.4545)

#gráficas de las probabilidades
library(ggplot2)
