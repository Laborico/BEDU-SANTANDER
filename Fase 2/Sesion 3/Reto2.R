data <- read.csv("players_stats.csv")

head(data)

#Generar un histograma de los minuntos totales (MIN), de los jugadores y agregar una línea donde se muestre la media
mediaMinutos <- mean(data$MIN)
ggplot(data,aes(MIN))+
  geom_histogram(binwidth = 50, col="black", fill = "blue")+
  geom_vline(xintercept =  mediaMinutos,col = "red")+
  ylab("Frecuencia") +
  xlab("Minutos")

#Generar un histograma de edad (Age) y agregar una línea con la media

#Eliminar NAN
mediaEdad <-mean(na.omit(data$Age))

ggplot(data,aes(Age))+
  geom_histogram(binwidth = 1, col="black", fill = "blue")+
  geom_vline(xintercept =  mediaEdad ,col = "red")+
  ylab("Frecuencia") +
  xlab("Edad")

#Hacer un scatterplot de las variables Weight y Height y observar la correlacón
#que existe entre ambas variables (1 sola gráfica)

graf <- ggplot(data,  aes(Weight, Height)) + geom_point()

#Utiliza la función which.max para saber quién es el jugador más alto, una vez 
#hecho esto, presenta los resultados en una leyenda que diga "El jugador más 
#alto es: Name, con una altura de: Height". Las unidades de altura deben ser 
#en metros.

Alto <- which.max(data$Height)
paste("El jugador más alto es:", data$Name[Alto], " con una altura de: ", data$Height[Alto]/100, " m.")

#Utiliza la función which.min para saber quién es el jugador más bajito, una vez 
#hecho esto, presenta los resultados en una leyenda que diga "El jugador más 
#bajito es: Name, con una altura de: Height". Las unidades de altura deben ser 
#en metros.

Bajo <- which.min(data$Height)
paste("El jugador más bajo es:", data$Name[Bajo], " con una altura de: ", data$Height[Bajo]/100, " m.")

#¿Cuál es la altura promedio?, representa el resultado en una frase que diga: 
#"La altura promedio es: ALTURA"
Altura <- mean(na.omit(data$Height))
paste("La altura promedio es: ",Altura/100," m")

#Generar un scatterplot donde se representen las Asistencias totales (AST.TOV) 
#vs Puntos (PTS), además has un face wrap con la posición (Pos).
data %>% ggplot( aes(AST.TOV, PTS )) +
  geom_point() + 
  facet_wrap("Pos")
