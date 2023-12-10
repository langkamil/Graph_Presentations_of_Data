install.packages("ggplot2")

library(ggplot2)

imiona<-c("Ala","Kasia","Marta")
nazwiska<-c("Kot","But","Nos")
oceny<-c(4,5,5)
kiedy <- as.Date(c('2020-11-10','2020-12-3','2020-11-14'))
tabelka<-data.frame(imiona,nazwiska,oceny,kiedy)
tabelka

ggplot(data=tabelka) +  geom_point(mapping = aes(x = imiona, y = oceny))