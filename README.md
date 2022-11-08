# MechaCar_Statistical_Analysis
## Overview



### Resources
- Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: Gitbash 2.37.1.windows.1, R 4.2.1, RStudio 2022.07.2, dplyr 1.0.10

## Results
### Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_1_regression.jpg)

In this linear model, the "vehicle_length" and "ground_clearance" variables contributed a non-random amount of variance to the "mpg" values in the dataset. This is the case because their individual p-values are less than .05, at 2.60e^-12 and 5.21e^-08, respectively.

The slope of the model is not zero, but is positive. This is because the coefficients of the model are overall positive. The only non-intercept negative coefficient is for the "AWD" variable, and it is out-weighed by the positive coefficients of the other variables. We can also see that the adjusted R-squared value for the model is positive, at 0.6825.

This model does predict mpg of MechaCar prototypes effectively. The p-value of the model as a whole is 5.35e^-11, far below the p<.05 threshold for signifcance.

## Summary