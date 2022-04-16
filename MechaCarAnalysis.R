library(dplyr)

# Read in MechaCar_mpg csv
Mecha_Car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# generate multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_Car) 

# summary of multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=Mecha_Car)) 

# Read in Suspension_Coil csv
Suspension_Data <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#create summary table for PSI
total_summary <- Suspension_Data %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') 

#create summary table for grouped by the Lot Number
lot_summary <- Suspension_Data %>%  group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns


# t-test PSI across all manufacturing lots 
t.test(Suspension_Data$PSI, mu=1500)

# t-test PSI for each manufacturing lot 
lot1 <- subset(Suspension_Data, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Data, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Data, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)
