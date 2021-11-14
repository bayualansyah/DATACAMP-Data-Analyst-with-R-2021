# Choosing among the four verbs
# 
# In this chapter you've learned about the four verbs: select, mutate, transmute, and rename. Here, you'll choose the appropriate verb for each situation. You won't need to change anything inside the parentheses.


# Instructions
# Choose the right verb for changing the name of the unemployment column to unemployment_rate
# Choose the right verb for keeping only the columns state, county, and the ones containing poverty.
# Calculate a new column called fraction_women with the fraction of the population made up of women, without dropping any columns.
# Keep only three columns: the state, county, and employed / population, which you'll call employment_rate.


# Change the name of the unemployment column
counties %>%
  rename(unemployment_rate = unemployment)

# Keep the state and county columns, and the columns containing poverty
counties %>%
  select(state, county, contains("poverty"))

# Calculate the fraction_women column without dropping the other columns
counties %>%
  mutate(fraction_women = women / population)

# Keep only the state, county, and employment_rate columns
counties %>%
  transmute(state, county, employment_rate = employed / population)