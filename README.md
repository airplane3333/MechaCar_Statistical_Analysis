# MechaCar_Statistical_Analysis
---
## Purpose: 
---
Using R and RStudio to import data from text or excel file and use statistical functions 
that calculate many different statistical tests.   

## Analysis
---
### Linear Regression to Predict MPG
---
After loading the data set into RStudio, I then used multiple linear regression to validate
if the dataset could predict the miles per gallon for MechaCar new prototype.  The linear
regression used vehicle length, vehicle weight, spoiler angle, ground clearance and 
transmission type

Vehicle length and ground clearance are the variables/coefficients that provide a non-random 
amount of variance to the mpg values in the dataset.

The data shows that the slope of the line is not zero.  Using the r-Squared value of 0.71 that 
the data has a high percentage of fitting the model fits the model.  The higher the value the greater 
the data can be used to predict MPG of the vehicle. 

![Linear Regression](/images/lm_summary.png)

### Summary Statistics on Suspension Coils
---
Using R to find the mean, median, variance and Standard deviation for manufacturing of MechaCar 
suspension coils.  

![Summary Suspension Coil](/images/suspension_coil.png)

When the data is examined together, the variance is within limits of MechaCar specifications.  
However, when you look at the different lot number you can see that lot 3 is not within specifications 
because the variance is outside the 100 lbs/inch limit.  

![Summary of Suspension Coil by Lot#](/images/summary_by_lot.png)



### T-test on suspension Coils
---
When using a T-Test, there is little statistical difference in the data, it's not until you examine
the production lots individually do we find a statistical difference with the p-value less than the 
0.05 of statistical acceptance outside of random chance. 

![T-Test Summary](/images/summary_t.test.png)

The P-Value for Lot1 is 1

![T-Test Lot Number 1](/images/t-test_lot1.PNG)

The P-Value for Lot2 is 0.61

![T-Test Lot Number 2](/images/t-test_lot2.PNG)

The P-Value for Lot3 is 0.04 meaning that the data is normally distributed and 
is less than the significance level of 0.05 and therefore supports the null hypothesis that there is 
something more than just random chance.
 

![T-Test Lot Number 1](/images/t-test_lot3.png)

### Study Design: MechaCar vs Competition
---

Description:  When shopping for a new or used vehicle, the decision is concluded with the value the 
car has as compared to other similar vehicle in the market.  The value would be calculated based on the
cars price as compared to other manufactures with the same standard options available.

Ho = MechaCar price of vehicle as compared to similar car from manufactures is 10% less.  

Ha = MechaCar price of vehicle as compared to similar cars from other manufactures is the same.  
 
The test that would be used is a t-test where you compare the mean with the population of cars.  The data needed is 
a sample of the population of cars made with the same options. 





