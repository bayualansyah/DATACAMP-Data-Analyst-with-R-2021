# Renaming a column as part of a select
# 
# rename() isn't the only way you can choose a new name for a column; you can also choose a name as part of a select().


# Instructions
# Select the columns state, county, and poverty from the counties dataset; in the same step, rename the poverty column to poverty_rate.


counties %>%
  # Select state, county, and poverty as poverty_rate
  select(state, county, poverty_rate = poverty)