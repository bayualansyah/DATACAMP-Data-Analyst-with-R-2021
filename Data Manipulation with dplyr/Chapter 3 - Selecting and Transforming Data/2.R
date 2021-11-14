# Select helpers
# 
# In the video you learned about the select helper starts_with(). Another select helper is ends_with(), which finds the columns that end with a particular string.


# Instructions
# Select the columns state, county, population, and all those that end with work.
# Filter just for the counties where at least 50% of the population is engaged in public work.


counties %>%
  # Select the state, county, population, and those ending with "work"
  select(state, county, population, ends_with('work')) %>%
  # Filter for counties that have at least 50% of people engaged in public work
  filter(public_work >= 50)