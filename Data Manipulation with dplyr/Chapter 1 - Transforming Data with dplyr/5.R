# Calculating the number of government employees
# 
# In the video, you used the unemployment variable, which is a percentage, to calculate the number of unemployed people in each county. In this exercise, you'll do the same with another percentage variable: public_work.
# 
# The code provided already selects the state, county, population, and public_work columns.


# Instructions 1/2
# Use mutate() to add a column called public_workers to the dataset, with the number of people employed in public (government) work.

counties_selected <- counties %>%
  select(state, county, population, public_work)

counties_selected %>%
  # Add a new column public_workers with the number of people employed in public work
  mutate(public_workers = population * public_work/100)


# Instructions 2/2
# Sort the new column in descending order.

counties_selected <- counties %>%
  select(state, county, population, public_work)

counties_selected %>%
  mutate(public_workers = public_work * population / 100) %>%
  # Sort in descending order of the public_workers column
  arrange(desc(public_workers))