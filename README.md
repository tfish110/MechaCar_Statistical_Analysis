# MechaCar_Statistical_Analysis
## Overview

For this challenge, a series of statistical tests were conducted about a prototype vehicle, the "MechaCar."

### Resources
- Data: MechaCar_mpg.csv, Suspension_Coil.csv
- Software: Gitbash 2.37.1.windows.1, R 4.2.1, RStudio 2022.07.2, dplyr 1.0.10

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_1_regression.jpg)

In this linear model, the "vehicle_length" and "ground_clearance" variables contributed a non-random amount of variance to the "mpg" values in the dataset. This is the case because their individual p-values are less than .05, at 2.60e^-12 and 5.21e^-08, respectively.

The slope of the model is not zero, but is positive. This is because the coefficients of the model are overall positive. The only non-intercept negative coefficient is for the "AWD" variable, and it is out-weighed by the positive coefficients of the other variables. We can also see that the adjusted R-squared value for the model is positive, at 0.6825.

This model does predict mpg of MechaCar prototypes effectively. The p-value of the model as a whole is 5.35e^-11, far below the p<.05 threshold for signifcance.

## Summary Statistics on Suspension Coils

![Total Suspension Coil Summary Statistics](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_2_total_summary.jpg)

The design specifications for the MechaCar suspension coils require that the variance must not exceed 100 PSI. The total suspension coil summary statistics indicate that overall, this requirement is satisfied with a variance of ~62.29 PSI.

![Suspension Coil Summary Statistics by Manufacturing Lot](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_2_lot_summary.jpg)

However, when examining the three manufacturing lots' summary statistics individually, the variance of Lot 3 does not meet the design specification. Its variance of ~170.29 PSI exceeds the limit of 100 PSI. It seems clear that that the bulk of the variance in the total summary statistics can be attributed to Lot 3, as the variances for Lots 1 and 2 are only ~0.98 PSI and ~7.47 PSI, respectively.

## T-Tests on Suspension Coils

![T-Test for All Suspension Coils](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_total_ttest.jpg)

A t-test for the entire suspension coil dataset shows that the mean PSI of 1498.78 is not significantly different from the assumed population mean of 1500 PSI due to the p-value being 0.06028, which is over the p<.05 threshold for significance.

![T-Test for Lot 1 Suspension Coils](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_Lot1_ttest.jpg)

A t-test for suspension coils in Manufacturing Lot 1 shows that the mean PSI of 1500 is not significantly different from the assumed population mean of 1500 PSI due to the p-value being 1, which is over the p<.05 threshold for significance.

![T-Test for Lot 2 Suspension Coils](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_Lot2_ttest.jpg)

A t-test for suspension coils in Manufacturing Lot 2 shows that the mean PSI of 1500.2 is not significantly different from the assumed population mean of 1500 PSI due to the p-value being 0.6072, which is over the p<.05 threshold for significance.

![T-Test for Lot 3 Suspension Coils](https://github.com/tfish110/MechaCar_Statistical_Analysis/blob/main/Resources/Deliverable_3_Lot3_ttest.jpg)

A t-test for suspension coils in Manufacturing Lot 3 shows that the mean PSI of 1496.14 is significantly different from the assumed population mean of 1500 PSI due to the p-value being 0.04168, which is within the p<.05 threshold for significance. This confirms the assertion in the previous section that the bulk of the variance in the total dataset of suspension coils is accounted for by Lot 3 being the only subset of the data which differs significantly from the target mean of 1500 PSI.

## Study Design: MechaCar vs. Competition

In order to assess how MechaCar might compete with other vehicles on the market, an analysis comparing initial vehicle price and long-term maintenace costs would be an important tool for consumers. They might be more willing to pay a higher initial price for a vehicle if there is some trade-off in maintaining the car for a lower price over time. The data required would be sale prices for vehicles from a variety of different manufacturers, but in the same vehicle class as MechaCar; it would not be helpful to compare costs of compact cars against SUVs, for example. There would also need to be maintenance cost data for those vehicles, perhaps at a number of different points of time since the initial purchase. Since MechaCar is a prototype, its developers would have to base projections of maintenace costs on the expected performance of the specifications of MechaCar's materials and systems.

The two null hypotheses would be that MechaCar's initial price and maintenance costs are not statistically different from their competition. The two alternative hypotheses would be that MechaCar's initial price and maintenance costs would be statistically significantly lower than their competition. In order to test these hypotheses, MechaCar would be considered its own "group," while other vehicles would be the other "group." Conceptualizing the data this way, comparing the means of separate groups, allows for the use of two separate one-way ANOVAs. The first ANOVA would compare initial cost of MechaCar against the mean initial costs of other vehicles. The second ANOVA would compare maintenance costs of MechaCar against the mean maintenance costs of other vehicles. If the null hypothesis comparing initial costs is not rejected, but the null hypothesis comparing maintenance costs is rejected, then the case can be made that MechaCar's value is in its long-term cost savings rather than being a cheap vehicle up-front.