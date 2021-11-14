# Selecting a county from each region
# 
# Previously, you used the walk column, which offers a percentage of people in each county that walk to work, to add a new column and count to find the total number of people who walk to work in each county.
# 
# Now, you're interested in finding the county within each region with the highest percentage of citizens who walk to work.
# 
#   counties_selected <- counties %>%
#     select(region, state, county, metro, population, walk)
    
    
# Instructions
# Find the county in each region with the highest percentage of citizens who walk to work.


counties_selected %>%
  # Group by region
  group_by(region) %>%
  # Find the greatest number of citizens who walk to work
  top_n(1, walk)