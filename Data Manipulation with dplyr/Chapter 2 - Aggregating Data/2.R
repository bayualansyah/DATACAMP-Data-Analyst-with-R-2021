# Counting citizens by state
# 
# You can weigh your count by particular variables rather than finding the number of counties. In this case, you'll find the number of citizens in each state.
# 
#   counties_selected <- counties %>%
#     select(county, region, state, population, citizens)
    
    
# Instructions
# Count the number of counties in each state, weighted based on the citizens column, and sorted in descending order.


# Find number of counties per state, weighted by citizens, sorted in descending order
counties_selected %>%
  select(county, region, state, population, citizens) %>%
  count(state, wt = citizens, sort = TRUE)