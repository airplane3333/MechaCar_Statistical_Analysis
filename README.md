# MechaCar_Statistical_Analysis
---
## Purpose
---


## Analysis
---

### Linear Regression to Predict MPG
---
AFter loading the data set into RStudio, I then used multiple linear regression to validate
if the dataset could predict the miles per gallen for MechaCar new prototype.  The linear
regreesion used used vehical length, vehicle weight, spoiler angle, ground clearance and 
transmition type

Vehicle length and ground clearance are the variables/coefficients that provide a non-random 
amount of variance to the mpg values in the dataset.

The data shows that the slope of the line is not zero.  Using the r-Squared valie of 0.71 that 
the data has a high percentage of fitting the model fits the model.  The higer the value the greater 
the data can be used to predict MPG of the vehicle. 

![Linear Regression](/images/lm_summary.png)

### Summary Statistices on Suspension Coils
---
Using R to find the mean, median, variance and Standard deviation for manufacturing of MechaCar 
suspension coils.  

![Summary Suspension Coil](/images/suspension_coil.png)

When the data is examined together, the variance is within limits of MechaCar specifications.  However, when
you look at the different lot number you can see that lot 3 is not within specifications because the 
variance is out side the 100 lbs/inch limit.  

![Summary of Suspension Coil by Lot#](/images/summary_by_lot.png)



### T-test on suspension Coils
---
When using a T-Test, there is little statistical difference in the data, it's not until you examan
the production lots individually do we find a statistical difference with the p-value less than the 
0.05 of statistical acceptance outside of radom chance. 
![T-Test Summarys](/images/summary_t.test.png)

P-Value is 1
![T-Test Lot Number 1](/images/t-test_lot1.PNG)
P-Value is 0.61
![T-Test Lot Number 2](/images/t-test_lot2.PNG)
Here is lot 3 we find that the p-value is less than 0.05% meaning that XXX
![T-Test Lot Number 1](/images/t-test_lot3.png)

### Study Design: MechaCar vs Competition
---

 




