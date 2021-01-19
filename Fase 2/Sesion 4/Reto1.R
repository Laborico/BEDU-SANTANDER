library(ggplot2)
library(reshape2)
#Distribución binomial
#Consideremos un experimento binomial con n = 35 pruebas idénticas e 
#independientes, en donde la probabilidad de éxito en cada prueba es p = 0.51. 
#Encuentre lo siguiente:

#La probabilidad de observar exactamente 10 éxitos
dbinom(x = 10, size = 35, prob = 0.51)

#La probabilidad de observar 10 o más exitos
pbinom(q = 9, size = 35, prob = 0.51,lower.tail = FALSE)

#El cuantil de orden 0.5
qbinom(p = 0.5, size = 35, prob = 0.51)

#Genere una muestra aleatoria de tamaño 1000 de esta distribución, construya 
#una tabla de frecuencias relativas con los resultados y realice el gráfico de 
#barras de los resultados que muestre las frecuencias relativas.
set.seed(4857)
muestra <- rbinom(n = 1000, size = 35, prob = 0.51)

(df1 <- as.data.frame(table(muestra)/length(muestra)))

valg <- as.character(df1$muestra)
(valg <- as.numeric(valg))

(v1 <- round(sapply(valg, dbinom, size = 35, p = 0.51), 3))

(df2 <- cbind(df1, v1))
(names(df2) <- c("Exitos", "FR", "Prob"))

(df2 <- melt(df2))

ggplot(df2, aes(x = Exitos, y = value, fill = variable)) + 
  geom_bar (stat="identity", position = "dodge")


#Distribución normal
#Considere una variable aleatoria normal con media 110 y desviación estándar 7. 
x <- seq(80, 140, 0.1)
y <- dnorm(x, mean = 110, sd = 7)
#Realice lo siguiente:

#Grafique la función de densidad de probabilidad
data <- data.frame(x, y)
ggplot(data, aes(x, y)) + geom_line()

#Encuentre la probabilidad de que la v.a. sea mayor o igual a 140
pnorm(q = 139, mean = 110, sd = 7,lower.tail = FALSE)

#Encuentre el cuantil de orden 0.95
qnorm(p = 0.95, mean = 110, sd = 7)

#Genere una muestra aleatoria de tamaño 1000 y realice el histograma de 
#frecuencias relativas para esta muestra
set.seed(7563)
muestra <- rnorm(n = 1000, mean = 110, sd = 7)
mdf <- as.data.frame(muestra)

#Histograma
ggplot(mdf, aes(muestra)) + 
  geom_histogram(colour = 'red', 
                 fill = 'blue',
                 alpha = 0.3, 
                 binwidth = 3) + 
  geom_density(aes(y = 3*..count..))+
  geom_vline(xintercept = mean(mdf$muestra), linetype="dashed", color = "black") + 
  ggtitle('Histograma para la muestra normal') + 
  labs(x = 'Valores obtenidos', y = 'Frecuencia')+
  theme_dark() +
  theme(plot.title = element_text(hjust = 0.5, size = 16))  
