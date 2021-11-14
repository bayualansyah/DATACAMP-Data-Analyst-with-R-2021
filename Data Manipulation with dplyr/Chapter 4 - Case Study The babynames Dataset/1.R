# Filtering and arranging for one year
# 
# The dplyr verbs you've learned are useful for exploring data. For instance, you could find out the most common names in a particular year.


# Instructions
# Filter for only the year 1990.
# Sort the table in descending order of the number of babies born.


babynames %>%
  # Filter for the year 1990
  filter(year == 1990) %>%
  # Sort the number column in descending order 
  arrange(desc(number))