#Almacenalo en un data frame que se llame amazon.best
amazon.best <-read.csv("https://raw.githubusercontent.com/beduExpert/Programacion-con-R-Santander/master/Sesion-01/Data/bestsellers%20with%20categories.csv")

#Calcula el data frame transpuesto, asígnale el nombre de tAmazon y conviértelo en un data frame
tAmazon <- data.frame(t(amazon.best))

#Usa el nombre de los libros como el nombre de las columnas
colnames(tAmazon) <- tAmazon[1,]
row.names(tAmazon)

#¿Cúal es el libro de menor y mayor precio?
which.max(tAmazon["Price",])
which.min(tAmazon["Price",])
