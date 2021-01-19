#Carga el data set BD_Altura_Alunos.csv
data <- read.csv("BD_Altura_Alunos.csv", sep = ";")

head(data)

#Realiza el histograma con la función hist(), nativa de R
hist(data$Altura, 
     main = "Histograma Alturas",
     breaks = seq(140,200,5),
     xlab = "Alturas",
     ylab = "Frecuencia")

#Ahora realiza el histograma con la función ggplot. (Recuerda que debes instalar el paquete ggplot2)
data %>%
  ggplot() + 
  aes(data$Altura) +
  geom_histogram(binwidth = 5,, col="black", fill = "red") + 
  ggtitle("Histograma de Alturas") +
  ylab("Frecuencia") +
  xlab("Alturas")
