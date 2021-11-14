# Using ratios to describe the frequency of a name
# 
# In the video, you learned how to find the difference in the frequency of a baby name between consecutive years. What if instead of finding the difference, you wanted to find the ratio?
#   
# You'll start with the babynames_fraction data already, so that you can consider the popularity of each name within each year.


# Instructions
# Arrange the data in ascending order of name and then year.
# Group by name so that your mutate works within each name.
# Add a column ratio containing the ratio (not difference) of fraction between each year.


babynames_fraction %>%
  # Arrange the data in order of name, then year 
  arrange(name, year) %>%
  # Group the data by name
  group_by(name) %>%
  # Add a ratio column that contains the ratio of fraction between each year 
  mutate(ratio = fraction/lag(fraction))