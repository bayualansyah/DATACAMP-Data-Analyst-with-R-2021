# Filtering for conditions
# 
# You use the filter() verb to get only observations that match a particular condition, or match multiple conditions.


# Instructions 1/2
# Find only the counties that have a population above one million (1000000).


counties_selected <- counties %>%
  select(state, county, population)

counties_selected %>%
  # Filter for counties with a population above 1000000
  filter(population > 1000000)


# Instructions 2/2
# Find only the counties in the state of California that also have a population above one million (1000000).


counties_selected <- counties %>%
  select(state, county, population)

counties_selected %>%
  # Filter for counties with a population above 1000000
  filter(state == "California" & population > 1000000)