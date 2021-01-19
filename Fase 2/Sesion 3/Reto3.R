library(forecast)
data(AirPassengers)
AP <- AirPassengers

#Realiza la gráfica de la serie de tiempo
tsb <- ts(AP, start = c(1949,01), frequency = 12)
plot(tsb, main = "Serie de tiempo", ylab = "Pasajeros", xlab = "Año")

#Descompón la serie de tiempo en aditiva y multiplicativa y realiza sus gráficas
aditiva <- decompose(tsb, type = "additive")
plot(aditiva)

multi <- decompose(tsb, type = "multiplicative")
plot(multi)

#Realiza la gráfica de la descomposición aditiva con la tendencia y la 
#estacionalidad utilizando el comando lines
plot(aditiva$trend , main  = "Aditiva", ylab = "Tendencia", xlab = "Año")
lines(aditiva$seasonal + tsbd$trend, col = 2, lty = 2, lwd = 2 )

#Realiza la gráfica de la descomposición multiplicativa con la tendencia y la 
#estacionalidad utilizando el comando lines
plot(multi$trend , main  = "Multiplicativa", ylab = "Tendencia", xlab = "Año")
lines(multi$seasonal + tsbd$trend, col = 2, lty = 2, lwd = 2 )
