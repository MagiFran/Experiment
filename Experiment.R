# Load the ToothGrowth dataset
data(ToothGrowth)

# Perform a two-sided t-test
t.test(x = ToothGrowth$len, alternative = "two.sided" , mu = 18)

# Perform a t-test
ToothGrowth_ttest <- t.test(len ~ supp, data = ToothGrowth)

# Load broom
library(broom)

# Tidy the t-test model object
tidy(ToothGrowth_ttest)

# Load dplyr
library(dplyr)

# Group by supp, dose, then examine how many observations in ToothGrowth 
#   there are by those groups
ToothGrowth %>% 
  group_by(supp,dose) %>% 
  summarise(
    n=n(),
    len = mean(len, na.rm = TRUE))

library(ggplot2)



  