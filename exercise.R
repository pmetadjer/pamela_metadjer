library(dplyr)
fish_data <- read.csv("dimensions.csv")
fish_data_cat <- fish_data %>% 
  #if length is greater than 2, return "big", if not, return "small".
  mutate(length_cat = ifelse(length > 3, "big", "small"))

