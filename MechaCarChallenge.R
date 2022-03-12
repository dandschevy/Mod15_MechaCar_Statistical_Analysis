#Deliverable 1

#import dependencies
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read.csv("MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

#Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
)

#Deliverable 2
#Import file
#Import and read in the csv file as a dataframe
Suspension_coil <- read.csv("Suspension_coil.csv", check.names = F, stringsAsFactors = F)

#An RScript is written to create a total summary dataframe that has the mean, median, variance, and standard deviation of the PSI for all manufacturing lots (10 pt)
Total_summ <- Suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = "keep")