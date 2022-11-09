library(dplyr)

MechaCar_mpg_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_table)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg_table))

Suspension_Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

total_summary <- Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

t.test(Suspension_Coil_table$PSI, mu=1500)
t.test(x=(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot1", select = PSI)), mu=1500)
t.test(x=(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot2", select = PSI)), mu=1500)
t.test(x=(subset(Suspension_Coil_table, Manufacturing_Lot == "Lot3", select = PSI)), mu=1500)