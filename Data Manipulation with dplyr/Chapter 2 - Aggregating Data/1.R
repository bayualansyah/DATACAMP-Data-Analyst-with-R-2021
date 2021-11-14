# Counting by region
# 
# The counties dataset contains columns for region, state, population, and the number of citizens, which we selected and saved as the counties_selected table. In this exercise, you'll focus on the region column.
# 
#   counties_selected <- counties %>%
#     select
    
    
# Instructions
# Use count() to find the number of counties in each region, using a second argument to sort in descending order.


# Use count to find the number of counties in each region
counties_selected %>%
  count(region, sort = TRUE)