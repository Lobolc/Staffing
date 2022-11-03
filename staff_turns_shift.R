## Scheduling Version 2
## Miguel López Cruz

## usage:
## ml.scheduling.days(data.set=df.d, k=2,
##                    teams= c(jefes.pool, turno.1.pool, turno.2.pool, turno.3.pool),
##                    t.size = c(1,13,13,12),
##                    s.shifts = c(1,3,3,2))

## Example:
## x <- 1:50
## df.d  <-  data.frame(
##     "ID" = x,
##     "Nivel" = c(rep("JT",4),rep("Monitor",length(x)-4)),
##     "No.Dias"= 0,
##     "C.Descanso"=0)
## df.d$ID2  <- ifelse(df.d$ID%in%c(1:4),paste(df.d$Nivel,df.d$ID,sep="-"),
##                     paste(df.d$Nivel,df.d$ID -4 ,sep="-"))


## JT  <- df.d[df.d$Nivel%in%"JT",]$ID2
## MT  <- df.d[df.d$Nivel%in%"Monitor",]$ID2


## jefes.pool  <- JT 
## turno.1.pool  <- MT[1:16]
## turno.2.pool  <- MT[17:32]
## turno.3.pool  <- MT[33:46]

## ml.scheduling.days(k=2)


shift <- function(x, lag) {
    n <- length(x)
    if(lag %% n ==0){
        new <- x
    }
    else{
        
        new <- c(x[-c(1:(lag%%n))],x[1:(lag%%n)])
    }
    
    return(new)
}


ml.scheduling.days  <- function(
                           data.set=df.d,
                           k = 1,
                           teams= c(jefes.pool, turno.1.pool, turno.2.pool, turno.3.pool),
                           t.size = c(1,13,13,12),
                           s.shifts = c(1,3,3,2)
                           )
{

    for(i in 1:k){
    day  <-  ifelse(i%%7 ==1, "Mon",
             ifelse(i%%7 ==2, "Tue",
             ifelse(i%%7 ==3, "Wed",
             ifelse(i%%7 ==4, "Thu",
             ifelse(i%%7 ==5, "Fri",
             ifelse(i%%7 ==6, "Sat",
             ifelse(i%%7 ==0, "Sun", "Error")))))))

if (i ==1){
  jefes.pool  <- jefes.pool
turno.1.pool  <- turno.1.pool
turno.2.pool  <- turno.2.pool
turno.3.pool  <- turno.3.pool

  Op.jefe  <-     Op.jefe  
  Op.Mon.1  <-    Op.Mon.1 
  Op.Mon.2  <-    Op.Mon.2 
  Op.Mon.3  <-    Op.Mon.3 

}
else{
  jefes.pool  <- shift(jefes.pool,s.shifts[1])
turno.1.pool  <- shift(turno.1.pool,s.shifts[2])
turno.2.pool  <- shift(turno.2.pool,s.shifts[3])
turno.3.pool  <- shift(turno.3.pool,s.shifts[4])

  Op.jefe  <-     shift(Op.jefe  ,-1)
  Op.Mon.1  <-    shift(Op.Mon.1 ,-3)
  Op.Mon.2  <-    shift(Op.Mon.2 ,-3)
  Op.Mon.3  <-    shift(Op.Mon.3 ,-2)

}
    
turno.1  <- turno.1.pool[1:t.size[2]]
turno.2  <- turno.2.pool[1:t.size[3]]
turno.3  <- turno.3.pool[1:t.size[4]]

descansa.1  <- turno.1.pool[(t.size[2]+1):length(turno.1.pool)]
descansa.2  <- turno.2.pool[(t.size[3]+1):length(turno.2.pool)]
descansa.3  <- turno.3.pool[(t.size[4]+1):length(turno.3.pool)]

df.d$No.Dias  <-  ifelse(df.d$ID2%in% c(turno.1,turno.2,turno.3,jefes.pool[1:3]), df.d$No.Dias + 1, df.d$No.Dias)
df.d$C.Descanso  <-  ifelse(df.d$ID2%in%c(descansa.1,descansa.2,descansa.3,jefes.pool[4]), df.d$C.Descanso + 1, df.d$C.Descanso)

varname  <- paste(day,ceiling(i/7),sep=".")
df.d[[varname]]  <- ifelse(
        df.d$ID2%in%c(jefes.pool[1],turno.1), "T1.07:00-16:00",
ifelse(        df.d$ID2%in%c(jefes.pool[2],turno.2), "T2.13:00-22:00",
ifelse(        df.d$ID2%in%c(jefes.pool[3],turno.3), "T3.22:00-07:00",
ifelse(        df.d$ID2%in%c(jefes.pool[4],descansa.1, descansa.2, descansa.3),
       "Descanso","Error"))))

    if(i%%7==0){
        df.d[df.d$Nivel%in%"Altas",varname]  <- "Descanso"
df.d$C.Descanso  <-  ifelse(df.d$Nivel%in%"Altas", df.d$C.Descanso + 1, df.d$C.Descanso)
    } else {
        df.d[df.d$Nivel%in%"Altas",varname]  <- "TA.09:00-18:00"
    df.d$No.Dias  <-  ifelse(df.d$Nivel%in%"Altas", df.d$No.Dias + 1, df.d$No.Dias)
    
    }

varname2  <- paste(day,"Op",ceiling(i/7),sep=".")
if(i%%7==0){
    df.d[[varname2]]  <- c(Op.jefe,Op.Mon.1,Op.Mon.2,Op.Mon.3, "NA")
} else {
    df.d[[varname2]]  <- c(Op.jefe,Op.Mon.1,Op.Mon.2,Op.Mon.3, "ALTAS")
    }
}
    

return(df.d)
    }
    

                    


