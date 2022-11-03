rm(list=ls())
source("staff_turns_shift.R")

jefes  <- rep("JT",4)
monitores  <- rep("Monitor",52)
niveles  <- rep("Altas",1)


df.d  <-  data.frame(
  "ID" = 1:(length(jefes)+length(monitores)+length(niveles)),
  "Nivel" = c(jefes,monitores,niveles),
  "No.Dias"= 0,
  "C.Descanso"=0,
  "ID2" = c( paste(jefes,1:length(jefes),sep="-"),
             paste(monitores,1:length(monitores),sep="-"),
             paste(niveles,1:length(niveles),sep="-"))
)



jefes.pool    <- paste("JT",1:length(jefes),sep="-")
turno.1.pool  <- paste("Monitor",1:18,sep="-")
turno.2.pool  <- paste("Monitor",19:36,sep="-")
turno.3.pool  <- paste("Monitor",37:52,sep="-")

Op.jefe  <-  c(rep("J-M",3),NA)
Op.Mon.1  <-  c(paste("E",1:9,sep="-"),paste("N",1:6,sep="-"),rep(NA,3))
Op.Mon.2  <-  c(paste("E",1:9,sep="-"),paste("N",1:6,sep="-"),rep(NA,3))
Op.Mon.3  <-  c(paste("E",1:8,sep="-"),paste("N",1:6,sep="-"),NA,NA)


XX  <- ml.scheduling.days(k=49,t.size=c(1,15,15,14))
write.csv(XX,"XXout.csv")
