# Visualizing names with ggplot2
# 
# The dplyr package is very useful for exploring data, but it's especially useful when combined with other tidyverse packages like ggplot2.


# Instructions 1/2
# Filter for only the names Steven, Thomas, and Matthew, and assign it to an object called selected_names.

selected_names <- babynames %>%
  # Filter for the names Steven, Thomas, and Matthew 
  filter(name %in% c('Steven','Thomas','Matthew'))


# Instructions 2/2
# Visualize those three names as a line plot over time, with each name represented by a different color.

selected_names <- babynames %>%
  # Filter for the names Steven, Thomas, and Matthew 
  filter(name %in% c("Steven", "Thomas", "Matthew"))

# Plot the names using a different color for each name
ggplot(selected_names, aes(x = year, y = number, color = name)) +
  geom_line()