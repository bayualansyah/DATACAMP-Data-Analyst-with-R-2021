# Using summarize, top_n, and count together
# 
# In this chapter, you've learned to use five dplyr verbs related to aggregation: count(), group_by(), summarize(), ungroup(), and top_n(). In this exercise, you'll use all of them to answer a question: In how many states do more people live in metro areas than non-metro areas?
#   
#   Recall that the metro column has one of the two values "Metro" (for high-density city areas) or "Nonmetro" (for suburban and country areas).
# 
#   counties_selected <- counties %>%
#     select(state, metro, population)
  

# Instructions 1/3
# For each combination of state and metro, find the total population as total_pop.

counties_selected %>%
  # Find the total population for each combination of state and metro
  group_by(state, metro) %>%
  summarize(total_pop = sum(population))


# Instructions 2/3
# Extract the most populated row from each state, which will be either Metro or Nonmetro.

counties_selected %>%
  # Find the total population for each combination of state and metro
  group_by(state, metro) %>%
  summarize(total_pop = sum(population)) %>%
  # Extract the most populated row for each state
  top_n(1, total_pop)


# Instructions 3/3
# Ungroup, then count how often Metro or Nonmetro appears to see how many states have more people living in those areas.

counties_selected %>%
  # Find the total population for each combination of state and metro
  group_by(state, metro) %>%
  summarize(total_pop = sum(population)) %>%
  # Extract the most populated row for each state
  top_n(1, total_pop) %>%
  # Count the states with more people in Metro or Nonmetro areas
  ungroup() %>%
  count(metro)
