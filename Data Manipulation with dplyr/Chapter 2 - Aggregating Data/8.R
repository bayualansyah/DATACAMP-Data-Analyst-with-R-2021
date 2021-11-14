# Finding the highest-income state in each region
# 
# You've been learning to combine multiple dplyr verbs together. Here, you'll combine group_by(), summarize(), and top_n() to find the state in each region with the highest income.
# 
# When you group by multiple columns and then summarize, it's important to remember that the summarize "peels off" one of the groups, but leaves the rest on. For example, if you group_by(X, Y) then summarize, the result will still be grouped by X.
# 
#   counties_selected <- counties %>%
#     select(region, state, county, population, income)
    
    
# Instructions
# Calculate the average income (as average_income) of counties within each region and state (notice the group_by() has already been done for you).
# Find the highest income state in each region.


counties_selected %>%
  group_by(region, state) %>%
  # Calculate average income
  summarize(average_income = mean(income)) %>%
  # Find the highest income state in each region
  top_n(1,average_income)