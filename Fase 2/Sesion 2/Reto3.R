library(dplyr)

url1 <- "https://www.football-data.co.uk/mmz4281/1718/D1.csv"
url2 <- "https://www.football-data.co.uk/mmz4281/1819/D1.csv"
url3 <- "https://www.football-data.co.uk/mmz4281/1920/D1.csv"
url4 <- "https://www.football-data.co.uk/mmz4281/2021/D1.csv"

download.file(url = url1, destfile = "1718.csv", mode = "wb")
download.file(url = url2, destfile = "1819.csv", mode = "wb")
download.file(url = url3, destfile = "1920.csv", mode = "wb")
download.file(url = url4, destfile = "2021.csv", mode = "wb")

lista <- lapply(dir(), read.csv)

lista <- lapply(lista, select, Date:FTR)

lista[[3]]<- subset (lista[[3]], select = -Time)
lista[[4]]<- subset (lista[[4]], select = -Time)

data <- do.call(rbind, lista)
head(data)
dim(data)
