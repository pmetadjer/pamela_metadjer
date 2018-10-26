#Load libraries
library(dplyr)
library(ggplot2)
library(ggthemes)

#Upload data
fish_data <- read.csv("Gaeta_etal_CLC_data.csv")

#Creation of a new categorie (lengths)
fish_data_cat <- fish_data %>% 
  #if length is greater than 2, return "big", if not, return "small".
  mutate(length_cat = ifelse(length > 300, "big", "small"))
fish_data_cat

# Creating scatterplot of length/size distribution across sampled lakes

ggplot(fish_data_cat, aes(x=scalelength, fill = length_cat)) + 
  geom_histogram(bins = 10)
        
#CLASS NOTES

#Giti ignore makes it automatic and it wont pay attention to them at all 
#Used to keep files out of version control and the internet (messy, shouldn't be public, etc.)

#git folder
#has all the connections and history information 
