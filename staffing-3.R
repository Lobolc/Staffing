## Inteligencia de Datos/Miguel López Cruz
## staffing
# rm(list=ls())

## week1.sa "Week one - staff allocation"
## weeks.sa "Staff allocation for k-weeks"

##usage:

## week1.sa(td.domingo=NA,T1.domingo=NA, T2.domingo=NA , T3.domingo=NA)
## weeks.sa(n)

## Example:

## weeks.staff(10)

setwd("/Users/miguellopez-cruz/repositorios_clonados/shift-scheduling")

week1.sa  <-  function(td.domingo=NA, T1.domingo=NA, T2.domingo=NA , T3.domingo=NA){
    print("Turno 3 del último domingo")
    print(T3.domingo)
a  <- T3.domingo
N  <-  47
x  <- 1:N

df.d  <-  data.frame(
    "ID" = x,
    "No.Dias"= 0)

## Seleccion de Lunes
conditional  <-  sum(length(td.domingo), length(T1.domingo), length(T2.domingo), length(T3.domingo), na.rm = TRUE) 
    
x.unsorted  <-  x #sample(x)

if(conditional == N){
x.unsorted <-  x.unsorted[c(
        which(x.unsorted%in%td.domingo),
        which(x.unsorted%in%T1.domingo ),
        which(x.unsorted%in%T2.domingo ),
        which(x.unsorted%in%T3.domingo))]
    }

turno.1  <- x.unsorted[1:14]
turno.1 <- sample(turno.1)
turno.2  <- x.unsorted[15:28]
turno.2 <- sample(turno.2)
turno.3  <- x.unsorted[29:40]
turno.3 <- sample(turno.3)
descansan  <-  x.unsorted[41:length(x)]
descansan <- sample(descansan)
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.lu  <- 
data.frame(
    "Lunes:07:00-15:00" =   paste("Monitorista",turno.1,sep="_"),
    "Lunes:15:00-23:00" =   paste("Monitorista",turno.2,sep="_"),
    "Lunes:23:00-07:00" = c(paste("Monitorista",turno.3,sep="_"),NA,NA),
    "Lunes:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.lu  <- descansan
    
## Seleccion de Martes

x.unsorted <- c(descansan, turno.1, turno.2, turno.3)
turno.1  <- x.unsorted[1:14]
turno.2  <- x.unsorted[15:28]
turno.3  <- x.unsorted[29:40]
descansan  <-  x.unsorted[41:length(x)]
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.ma  <- 
data.frame(
    "Martes:07:00-15:00" =   paste("Monitorista",turno.1,sep="_"),
    "Martes:15:00-23:00" =   paste("Monitorista",turno.2,sep="_"),
    "Martes:23:00-07:00" = c(paste("Monitorista",turno.3,sep="_"),NA,NA),
    "Martes:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.ma  <- descansan
## Seleccion de Miércoles


x.unsorted <- c(descansan, turno.1, turno.2, turno.3)
turno.1  <- x.unsorted[1:14]
turno.2  <- x.unsorted[15:28]
turno.3  <- x.unsorted[29:40]
descansan  <-  x.unsorted[41:length(x)]
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.mi  <- 
data.frame(
    "Miércoles:07:00-15:00" =   paste("Monitorista",turno.1,sep="_"),
    "Miércoles:15:00-23:00" =   paste("Monitorista",turno.2,sep="_"),
    "Miércoles:23:00-07:00" = c(paste("Monitorista",turno.3,sep="_"),NA,NA),
    "Miércoles:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.mi  <- descansan


## Seleccion de Jueves


x.unsorted <- c(descansan, turno.1, turno.2, turno.3)
turno.1  <- x.unsorted[1:14]
turno.2  <- x.unsorted[15:28]
turno.3  <- x.unsorted[29:40]
descansan  <-  x.unsorted[41:length(x)]
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.ju  <- 
data.frame(
    "Jueves:07:00-15:00" =   paste("Monitorista",turno.1,sep="_"),
    "Jueves:15:00-23:00" =   paste("Monitorista",turno.2,sep="_"),
    "Jueves:23:00-07:00" = c(paste("Monitorista",turno.3,sep="_"),NA,NA),
    "Jueves:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.ju  <- descansan

## Seleccion de Viernes

x.unsorted <- c(descansan, turno.1, turno.2, turno.3)
turno.1  <- x.unsorted[1:14]
turno.2  <- x.unsorted[15:28]
turno.3  <- x.unsorted[29:40]
descansan  <-  x.unsorted[41:length(x)]
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.vi  <- 
data.frame(
    "Viernes:07:00-15:00" =   paste("Monitorista",turno.1,sep="_"),
    "Viernes:15:00-23:00" =   paste("Monitorista",turno.2,sep="_"),
    "Viernes:23:00-07:00" = c(paste("Monitorista",turno.3,sep="_"),NA,NA),
    "Viernes:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.vi  <- descansan

## Seleccion de Sábado


x.unsorted <- c(descansan, turno.1, turno.2, turno.3)
turno.1  <- x.unsorted[1:14]
turno.2  <- x.unsorted[15:28]
turno.3  <- x.unsorted[29:40]
descansan  <-  x.unsorted[41:length(x)]
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.sa  <- 
data.frame(
    "Sábado:07:00-15:00" =   paste("Monitorista",turno.1, sep="_"),
    "Sábado:15:00-23:00" =   paste("Monitorista",turno.2, sep="_"),
    "Sábado:23:00-07:00" = c(paste("Monitorista",turno.3, sep="_"),NA,NA),
    "Sábado:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.sa  <- descansan

## Selección Domingo
pre.descansan  <- df.d[df.d$No.Dias %in% 6,]$ID
x  <- df.d[df.d$No.Dias < 6,]$ID
ifelse(length(x) < (14+14+12), print("Tenemos un Problema"), print("Todo O.K."))
x.unsorted  <- sample(x)
turno.1  <- x.unsorted[1:14]
turno.2  <- x.unsorted[15:28]
turno.3  <- x.unsorted[29:40]
descansan  <- c( x.unsorted[41:length(x)],pre.descansan)
df.d$No.Dias  <-  ifelse(df.d$ID%in% c(turno.1,turno.2,turno.3), df.d$No.Dias + 1, df.d$No.Dias)

t.do  <- 
data.frame(
    "Domingo:07:00-15:00" =   paste("Monitorista",turno.1,sep="_"),
    "Domingo:15:00-23:00" =   paste("Monitorista",turno.2,sep="_"),
    "Domingo:23:00-07:00" = c(paste("Monitorista",turno.3,sep="_"),NA,NA),
    "Domingo:descansan" = c(paste("Monitorista",descansan,sep="_"),rep(NA,7)),
    check.names = F)

td.domingo  <- descansan
    
T3.domingo  <- turno.3
T1.domingo  <- turno.1
T2.domingo  <- turno.2
    
t.semana  <- 
    cbind(
        t.lu,t.ma,t.mi,t.ju,t.vi,t.sa,t.do)


    out  <- list(
        "descanso.inicial"=a,
        "T1.domingo"=T1.domingo,
        "T2.domingo"=T2.domingo,
        "T3.domingo"=T3.domingo,
        "td.domingo"=td.domingo,
        "t.semana" = t.semana,
        "t.dias" = df.d
    )

    
## print(t.semana)
## print(df.d)
## print(reset.domingo)
T1.domingo  <<- turno.1
T2.domingo  <<- turno.2
T3.domingo  <<- turno.3
td.domingo  <<- descansan
## t.semana <<- t.semana
    return(out)

}




weeks.sa  <-  function(n){
LL  <-  list()
    for (i in 1:n){
print(i)
        
        if( i == 1){
            XX  <-  week1.sa()
            
         LL[[paste("S",i,sep="")]]  <- XX$t.semana
td.domingo <- XX$td.domingo
T1.domingo <- XX$T1.domingo
T2.domingo <- XX$T2.domingo
T3.domingo <- XX$T3.domingo
        }
        else{

                XX <-  week1.sa(td.domingo, T1.domingo, T2.domingo, T3.domingo)
                LL[[paste("S",i,sep="")]]  <- XX$t.semana
td.domingo <- XX$td.domingo
T1.domingo <- XX$T1.domingo
T2.domingo <- XX$T2.domingo
T3.domingo <- XX$T3.domingo
            }
    }

return(LL)

}

