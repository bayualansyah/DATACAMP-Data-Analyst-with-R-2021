# Finding the year each name is most common
# 
# In an earlier video, you learned how to filter for a particular name to determine the frequency of that name over time. Now, you're going to explore which year each name was the most common.
# 
# To do this, you'll be combining the grouped mutate approach with a top_n.


# Instructions 1/2
# First, calculate the total number of people born in that year in this dataset as year_total.
# Next, use year_total to calculate the fraction of people born in each year that have each name.

# Calculate the fraction of people born each year with the same name
babynames %>%
  group_by(year) %>%
  mutate(year_total = sum(number)) %>%
  ungroup() %>%
  mutate(fraction = number/year_total)


# Instructions 2/2
# Now use your newly calculated fraction column, in combination with top_n(), to identify the year each name is most common.

# Calculate the fraction of people born each year with the same name
babynames %>%
  group_by(year) %>%
  mutate(year_total = sum(number)) %>%
  ungroup() %>%
  mutate(fraction = number / year_total) %>%
  # Find the year each name is most common
  group_by(name) %>%
  top_n(1, fraction)