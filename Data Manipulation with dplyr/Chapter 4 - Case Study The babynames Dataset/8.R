# Biggest jumps in a name
# 
# Previously, you added a ratio column to describe the ratio of the frequency of a baby name between consecutive years to describe the changes in the popularity of a name. Now, you'll look at a subset of that data, called babynames_ratios_filtered, to look further into the names that experienced the biggest jumps in popularity in consecutive years.
# 
#   babynames_ratios_filtered <- babynames_fraction %>%
#                       arrange(name, year) %>%
#                       group_by(name) %>%
#                       mutate(ratio = fraction / lag(fraction)) %>%
#                        filter(fraction >= 0.00001)


# Instructions
# From each name in the data, keep the observation (the year) with the largest ratio; note the data is already grouped by name.
# Sort the ratio column in descending order.
# Filter the babynames_ratios_filtered data further by filtering the fraction column to only display results greater than or equal to 0.001.


babynames_ratios_filtered %>%
  # Extract the largest ratio from each name 
  top_n(1, ratio) %>%
  # Sort the ratio column in descending order 
  arrange(desc(ratio)) %>%
  # Filter for fractions greater than or equal to 0.001
  filter(fraction >= 0.001)