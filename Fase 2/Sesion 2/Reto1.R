library(DescTools)

set.seed(134)
x <- round(rnorm(1000, 175, 6), 1)

#Calcule, la media, mediana y moda de los valores
media <- mean(x)
mediana <- median(x)
moda <- Mode(x)

#Obtenga los deciles de los números en
deciles <- quantile(x, seq(0.1,0.9, by = 0.1))

#Encuentre la rango intercuartílico, la desviación estándar y varianza muestral
RangoIntercuartilico <- IQR(x)
DesviacionEstandar <- sd(x)
Varianza <- var(x)
