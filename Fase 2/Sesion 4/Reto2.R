#Genere 1500 muestras de tamaño 67 de la distribución exponencial con parámetro 5
set.seed(1234)
muestra <- sapply(X = rep(67, 1500), FUN = rexp, rate=5)

#Obtenga las 1500 medias correspondientes a cada una de las muestras
media <-apply(muestra, 2, mean)

#Realice el histograma de frecuencias de las 1500 medias
mdf <- as.data.frame(media)

ggplot(mdf, aes(media)) + 
  geom_histogram(colour = 'green', 
                 fill = 'orange',
                 alpha = 0.7) +
  geom_vline(xintercept = mean(media), linetype="dashed", color = "black") + 
  ggtitle('Histograma para las 1500 medias') + 
  labs(x = 'medias', y = 'Frecuencia')+
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5, size = 16)) 

#Encuentre la media muestral y desviación estándar muestral de las 1500 medias
mean(media)
sd(media)

#Compare la media muestral encontrada en el paso anterior con la media real 
#(1/5) de la población de la cual provienen las muestras
mean(media); 1/5

#Compare la desviación estándar muestral encontrada con la desviación estándar 
#real (1/5) de la población de la cual provienen las muestras pero dividida por 
#67 (el tamaño de las muestras)
sd(media);(1/5)/sqrt(67)
