# Using transmute
# 
# As you learned in the video, the transmute verb allows you to control which variables you keep, which variables you calculate, and which variables you drop.


# Instructions
# Keep only the state, county, and population columns, and add a new column, density, that contains the population per land_area.
# Filter for only counties with a population greater than one million.
# Sort the table in ascending order of density.


counties %>%
  # Keep the state, county, and populations columns, and add a density column
  transmute(state, county, population, density = population/land_area) %>%
  # Filter for counties with a population greater than one million 
  filter(population >= 1000000) %>%
  # Sort density in ascending order 
  arrange(density)