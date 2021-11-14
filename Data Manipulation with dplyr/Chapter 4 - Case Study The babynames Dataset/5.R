# Adding the total and maximum for each name
# 
# In the video, you learned how you could group by the year and use mutate() to add a total for that year.
# 
# In these exercises, you'll learn to normalize by a different, but also interesting metric: you'll divide each name by the maximum for that name. This means that every name will peak at 1.
# 
# Once you add new columns, the result will still be grouped by name. This splits it into 48,000 groups, which actually makes later steps like mutates slower.


# Instructions 1/2
# Use a grouped mutate to add two columns:
#   name_total, with the sum of the number of babies born with that name in the entire dataset.
  # name_max, with the maximum number of babies born in any year.

babynames %>%
  # Add columns name_total and name_max for each name
  group_by(name) %>%
  mutate(name_total = sum(number),
         name_max = max(number))

# Instructions 2/2
# Add another step to ungroup the table.
# Add a column called fraction_max containing the number in the year divided by name_max.

babynames %>%
  # Add columns name_total and name_max for each name
  group_by(name) %>%
  mutate(name_total = sum(number),
         name_max = max(number)) %>%
  # Ungroup the table 
  ungroup() %>%
  # Add the fraction_max column containing the number by the name maximum 
  mutate(fraction_max = number/name_max)