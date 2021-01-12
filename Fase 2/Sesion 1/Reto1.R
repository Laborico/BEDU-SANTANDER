setwd("/home/laborico/Documents/Cursos/Santander/BEDU- Data Science/Fase 2/Sesion1")
netflix <- read.csv("https://raw.githubusercontent.com/ecoronadoj/Sesion_1/main/Data/netflix_titles.csv")

#dimension y tipo
dim(netflix)
class(netflix)

#Obtener los títulos que se estrenaron después del 2015. Almacenar este df en una variable llamada net.2015
#se puede de 2 formas
#net.2015 <- data.frame(netflix[netflix$release_year>2015,]) 
net.2015 <- data.frame(netflix$title[netflix$release_year>2015]) 

#Escribir los resultados en un archivo .csv llamado res.netflix.csv
write.csv(net.2015,"res.netflix.csv")