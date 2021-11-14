# Summarizing
# 
# The summarize() verb is very useful for collapsing a large dataset into a single observation.
# 
#   counties_selected <- counties %>%
#     select(county, population, income, unemployment)
  
  
# Instructions
# Summarize the counties dataset to find the following columns: min_population (with the smallest population), max_unemployment (with the maximum unemployment), and average_income (with the mean of the income variable).


counties_selected %>%
  # Summarize to find minimum population, maximum unemployment, and average income
  summarize(min_population = min(population),
            max_unemployment = max(unemployment),
            average_income = mean(income))

