# Selecting columns
# 
# Select the following four columns from the counties variable:
#   
#   state
#   county
#   population
#   poverty
#   
# You don't need to save the result to a variable.


# Instructions
# Select the columns listed from the counties variable.


counties %>%
  # Select the columns
  select(state, county, population, poverty)