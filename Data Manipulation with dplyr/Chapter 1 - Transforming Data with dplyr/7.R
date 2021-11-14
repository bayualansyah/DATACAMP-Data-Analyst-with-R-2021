# Select, mutate, filter, and arrange
# 
# In this exercise, you'll put together everything you've learned in this chapter (select(), mutate(), filter() and arrange()), to find the counties with the highest proportion of men.


# Instructions
# Select only the columns state, county, population, men, and women.
# Add a variable proportion_men with the fraction of the county's population made up of men.
# Filter for counties with a population of at least ten thousand (10000).
# Arrange counties in descending order of their proportion of men.


counties %>%
  # Select the five columns 
  select(state, county, population, men, women) %>%
  # Add the proportion_men variable
  mutate(proportion_men = men/population) %>%
  # Filter for population of at least 10,000
  filter(population >= 10000) %>%
  # Arrange proportion of men in descending order 
  arrange(desc(proportion_men))