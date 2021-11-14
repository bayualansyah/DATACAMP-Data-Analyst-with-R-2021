# Visualizing the normalized change in popularity
# 
# You picked a few names and calculated each of them as a fraction of their peak. This is a type of "normalizing" a name, where you're focused on the relative change within each name rather than the overall popularity of the name.
# 
# In this exercise, you'll visualize the normalized popularity of each name. Your work from the previous exercise, names_normalized, has been provided for you.
# 
#   names_normalized <- babynames %>%
#     group_by(name) %>%
#     mutate(name_total = sum(number),
#            name_max = max(number)) %>%
#     ungroup() %>%
#     mutate(fraction_max = number / name_max)

  
# Instructions
# Filter the names_normalized table to limit it to the three names Steven, Thomas, and Matthew.
# Create a line plot to visualize fraction_max over time, colored by name.


names_filtered <- names_normalized %>%
  # Filter for the names Steven, Thomas, and Matthew
  filter(name %in% c('Steven','Thomas','Matthew'))

# Visualize these names over time
ggplot(names_filtered, aes(x = year, y = fraction_max, color = name)) +
  geom_line()
