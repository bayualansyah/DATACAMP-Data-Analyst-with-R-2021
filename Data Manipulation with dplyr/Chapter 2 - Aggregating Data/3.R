# Mutating and counting
# 
# You can combine multiple verbs together to answer increasingly complicated questions of your data. For example: "What are the US states where the most people walk to work?"
# 
# You'll use the walk column, which offers a percentage of people in each county that walk to work, to add a new column and count based on it.
# 
#   counties_selected <- counties %>%
#     select(county, region, state, population, walk)
    
    
# Instructions
# Use mutate() to calculate and add a column called population_walk, containing the total number of people who walk to work in a county.
# Use a (weighted and sorted) count() to find the total number of people who walk to work in each state.


counties_selected %>%
  # Add population_walk containing the total number of people who walk to work 
  mutate(population_walk = population * walk / 100) %>%
  # Count weighted by the new column, sort in descending order
  count(state, wt = population_walk, sort = TRUE)