library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
MechaCar_linear <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar_mpg)
summary(MechaCar_linear)

Suspension_Coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- Suspension_Coil %>% summarize('Mean' = mean(PSI), 'Median' = median(PSI), 'Variance' = var(PSI), 'SD' = sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize('Mean' = mean(PSI), 'Median' = median(PSI), 'Variance' = var(PSI), 'SD' = sd(PSI))

t.test(Suspension_Coil$PSI, mu=1500)

PSI_1 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot1")
t.test(PSI_1$PSI, mu=1500)
PSI_2 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot2")
t.test(PSI_2$PSI, mu=1500)
PSI_3 <- subset(Suspension_Coil, Manufacturing_Lot == "Lot3")
t.test(PSI_3$PSI, mu=1500)
