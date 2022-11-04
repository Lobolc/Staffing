rm(list=ls())
source("/Users/miguellopez-cruz/repositorios_clonados/shift-scheduling/staff_turns_shift.R")

## jefes  <- rep("JT",4)
## monitores  <- rep("Monitor",52)
## niveles  <- rep("Altas",1)

## df.d  <-  data.frame(
##     "ID" = 1:(length(jefes)+length(monitores)+length(niveles)),
##     "Nivel" = c(jefes,monitores,niveles),
##     "No.Dias"= 0,
##     "C.Descanso"=0,
##     "ID2" = c( paste(jefes,1:length(jefes),sep="-"),
##               paste(monitores,1:length(monitores),sep="-"),
##               paste(niveles,1:length(niveles),sep="-"))
##     )


## jefes.pool    <- paste("JT",1:length(jefes),sep="-")
## turno.1.pool  <- paste("Monitor",1:18,sep="-")
## turno.2.pool  <- paste("Monitor",19:36,sep="-")
## turno.3.pool  <- paste("Monitor",37:52,sep="-")

##     Op.jefe  <-  c(rep("J-M",3),NA)
##     Op.Mon.1  <-  c(paste("E",1:9,sep="-"),paste("N",1:6,sep="-"),rep(NA,3))
##     Op.Mon.2  <-  c(paste("E",1:9,sep="-"),paste("N",1:6,sep="-"),rep(NA,3))
##     Op.Mon.3  <-  c(paste("E",1:8,sep="-"),paste("N",1:6,sep="-"),NA,NA)



df2  <-  read.csv("/Users/miguellopez-cruz/repositorios_clonados/shift-scheduling/Lista_DEMO.csv")
NAMESMON  <- df2$Nombre.a.mostrar[1:52]

jefes  <- c(
    "Jefe 1 IGNACIO PEREZ PEREZ",
    "Jefe 2 LUIS HERNANDEZ PEREZ",
    "Jefe 3 JOSE PEREZ LEON",
    "Jefe 4 JESUS GUTIERREZ RUIZ")
monitores  <- NAMESMON
niveles  <- rep("Altas",1)


df.d  <-  data.frame(
    "ID" = 1:(length(jefes)+length(monitores)+length(niveles)),
    "Nivel" = c(jefes,monitores,niveles),
    "No.Dias"= 0,
    "C.Descanso"=0,
    "ID2" = c( jefes,
              monitores,
              "ALATAS 1 BEATRIZ ORTIZ MENA")
    )

x <- 1:52
x.1 <- sample(x, 18, replace = FALSE)
x <- x[!x %in% x.1]
x.2 <- sample(x, 18, replace = FALSE)
x.3 <- x[!x %in% x.2]

jefes.pool    <- sample(jefes)
turno.1.pool  <- sample(monitores[x.1])
turno.2.pool  <- sample(monitores[x.2])
turno.3.pool  <- sample(monitores[x.3])

    Op.jefe  <-  c(rep("J-M",3),NA)
    Op.Mon.1  <-  c(paste("E",1:9,sep="-"),paste("N",1:6,sep="-"),rep(NA,3))
    Op.Mon.2  <-  c(paste("E",1:9,sep="-"),paste("N",1:6,sep="-"),rep(NA,3))
    Op.Mon.3  <-  c(paste("E",1:8,sep="-"),paste("N",1:6,sep="-"),NA,NA)


XX  <- ml.scheduling.days(k=49,t.size=c(1,15,15,14))
write.csv(XX, file = "XXout.csv")

