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
