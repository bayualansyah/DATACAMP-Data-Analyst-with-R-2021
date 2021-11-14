# Renaming a column after count
# 
# The rename() verb is often useful for changing the name of a column that comes out of another verb, such as count(). In this exercise, you'll rename the n column from count() (which you learned about in Chapter 2) to something more descriptive.


# Instructions 1/2
# Use count() to determine how many counties are in each state.

counties %>%
  # Count the number of counties in each state
  count(state)


# Instructions 2/2
# Notice the n column in the output; use rename() to rename that to num_counties.

counties %>%
  # Count the number of counties in each state
  count(state) %>%
  # Rename the n column to num_counties
  rename(num_counties = n)