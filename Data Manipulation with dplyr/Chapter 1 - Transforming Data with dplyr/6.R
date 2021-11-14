# Calculating the percentage of women in a county
# 
# The dataset includes columns for the total number (not percentage) of men and women in each county. You could use this, along with the population variable, to compute the fraction of men (or women) within each county.
# 
# In this exercise, you'll select the relevant columns yourself.


# Instructions
# Select the columns state, county, population, men, and women.
# Add a new variable called proportion_women with the fraction of the county's population made up of women.


counties_selected <- counties %>%
  # Select the columns state, county, population, men, and women
  select(state, county, population, men, women)

counties_selected %>%
  # Calculate proportion_women as the fraction of the population made up of women
  mutate(proportion_women = women / population )