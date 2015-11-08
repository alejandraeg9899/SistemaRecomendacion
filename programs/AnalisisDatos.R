# Analisis preeliminar de los datos de inmobiliarias

casas <- read.csv("DAtaset.csv",header=TRUE)

casas_estado <- casas$Estado == 'Usado'
casas_usadas <- casas$Inmueble == 'Casa'
filtro = casas_estado && casas_usadas
casas_solocasas <- casas[casas_usadas]
casas_filtrada_Estado <- casas[casas_estado,]

hist(casas_filtrada_Estado$Precio,
     breaks=8,
     xlab="Precio de Propiedades",
     ylab="Total",main="Distribucion de Propiedades por Precio")
plot(casas_filtrada_Estado$Estado,casas_filtrada_Estado$Precio)

?histvariance <- function (x) sum((x-mean(x))^2)/(length(x)-1)
variance(casas_filtrada_Estado$Precio)
var(casas_filtrada_Estado$Precio)


#Clasificador de Casas segun la eleccion
CasasCompletas <- read.csv("DataSet1.csv",header=TRUE)
View(CasasCompletas)
#casasClasificar <- CasasCompletas[,c(1,4,5,7,8,9)]
#View(casasClasificar)
CasasCompletas$Tipo <- factor(CasasCompletas$Inmueble,
                              levels=c("Casa","Departamento","Oficinas","Local","Terreno","Bodega"),
                              labels=c("Casa","Departamento","Oficinas","Local","Terreno","Bodega"))
CasasCompletas$Estado <- factor(CasasCompletas$Estado,
                                levels=c("Nuevo","Usado","No Aplicable","En construccion","Remodelado"), 
                                labels=c("Nuevo","Usado","T", "PC","RM"))
CasasCompletas$Oferta <-factor(CasasCompletas$Oferta,
                               levels=c("renta","venta"),
                               labels=c("renta","venta"))
CasasCompletas$Inmueble <- factor(CasasCompletas$Inmueble,
                                  levels = c("Casas","Departamento", "Habitacion", "Oficina","Local","Terreno","Edificio"))


round(prop.table(table(CasasCompletas$Estado))*100,digits = 1)

normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

CasasNorm <- as.data.frame(lapply(CasasCompletas[c(3,5,6)],normalize))

# Clasificacion por KNN

Casas_train <- CasasNorm[1:200,]
Casas_prop <- CasasNorm[201:284,]
Casas_train_labels <- CasasCompletas[1:200,1]
Casas_test_labels <- CasasCompletas[201:284,1]
library('class')
library('gmodels')

Casas_test_pred <- knn(train=Casas_train,test=Casas_prop,
<<<<<<< HEAD
                       cl=Casas_train_labels,k = 6)
=======
                       cl=Casas_train_labels,k = 5)
>>>>>>> origin/master
Casas_test_pred

CrossTable(x = Casas_test_labels, y = Casas_test_pred, prop.chisq = FALSE)
