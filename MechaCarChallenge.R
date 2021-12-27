mpg = read.csv('data/MechaCar_mpg.csv')
head(mpg)
library(dplyr)

#multiple liner regression 
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mpg))


#liner regression model of qsec and hp
lm(mpg ~ vehicle_length,mpg) #create linear model
summary(lm(mpg ~ vehicle_length,mpg))

library(tidyverse)

#plotting the vehicle_length and mpg
model <- lm(mpg ~ vehicle_length,mpg) #create linear model
yvals <- model$coefficients['vehicle_length']*mpg$vehicle_length +
  model$coefficients['(Intercept)'] #determine y-axis values from linear model
plt <- ggplot(mpg,aes(x=vehicle_length,y=mpg)) #import dataset into ggplot2
plt + geom_point() + geom_line(aes(y=yvals), color = "red") #plot scatter and linear model

suspension_coil = read.csv('data/Suspension_coil.csv')
head(suspension_coil)

#summary table for the data
total_summary = suspension_coil %>% summarise(mean=mean(PSI), median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#summary table by lot#
summary_lot = suspension_coil %>% group_by(Manufacturing_Lot) %>% summarise(mean=mean(PSI), median=median(PSI), Variance=var(PSI), SD=sd(PSI))


#t-test of suspension coils.
summary_t.test = t.test(suspension_coil$PSI, mu=1500)

#t-test by lot number
lot1 = t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500, conf.level=.99)
lot2 = t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500, conf.level = .99)
lot3 = t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500, conf.level = .99)
