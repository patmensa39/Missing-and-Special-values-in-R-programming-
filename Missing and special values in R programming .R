# Missing and special values in R programming 
library(tidyverse)
names <- c('ID', 'DBName', 'AKName', 'License', 'FacilityType', 'Address', 
           'City', 'State', 'ZipCode', 'InspectionDate', 'InspectionType', 
           'Results', 'Violations', 'Latitute', 'Longitude', 'Location') 
inspections <- read_csv('http://594442.youcanlearnit.net/inspections.csv', 
                        col_names = names, skip = 1)


##Looking at the summary of the dataset
summary(inspections)

# working on inspections 
inspections %>% filter(is.na(License))

### Unlicensed 
unlicensed <- inspections %>% filter(is.na(License))
view(unlicensed)

### licensed 
licensed <- inspections %>% filter(!is.na(License))
licensed

#Removing all NA values from the datasets
inspections<- na.omit(inspections)
summary(inspections)

### Special character values 
philant <- c(23, 34, 12, 45, 7/0, 0/0)
philant

is.na(philant)
is.nan(philant)
is.finite(philant)
is.infinite(philant)
