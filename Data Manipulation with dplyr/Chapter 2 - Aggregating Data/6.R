# Summarizing by state and region
# 
# You can group by multiple columns instead of grouping by one. Here, you'll practice aggregating by state and region, and notice how useful it is for performing multiple aggregations in a row.
# 
#   counties_selected <- counties %>%
#     select(region, state, county, population)


# Instructions 1/2
# Summarize to find the total population, as a column called total_pop, in each combination of region and state.

counties_selected %>%
  # Group and summarize to find the total population
  group_by(region, state) %>%
  summarize(total_pop = sum(population))


# Instructions 2/2
# Notice the tibble is still grouped by region; use another summarize() step to calculate two new columns: the average state population in each region (average_pop) and the median state population in each region (median_pop).

counties_selected %>%
  # Group and summarize to find the total population
  group_by(region, state) %>%
  summarize(total_pop = sum(population)) %>%
  # Calculate the average_pop and median_pop columns 
  summarize(average_pop = mean(total_pop),
            median_pop = median(total_pop))
