# Summarizing by state
# 
# Another interesting column is land_area, which shows the land area in square miles. Here, you'll summarize both population and land area by state, with the purpose of finding the density (in people per square miles).
# 
#   counties_selected <- counties %>%
#     select(state, county, population, land_area)


# Instructions 1/2
# Group the data by state, and summarize to create the columns total_area (with total area in square miles) and total_population (with total population).

counties_selected %>%
  # Group by state 
  group_by(state) %>%
  # Find the total area and population
  summarize(total_area = sum(land_area),
            total_population = sum(population))


# Instructions 2/2
# Add a density column with the people per square mile, then arrange in descending order.

counties_selected %>%
  group_by(state) %>%
  summarize(total_area = sum(land_area),
            total_population = sum(population)) %>%
  # Add a density column
  mutate(density = total_population/total_area) %>%
  # Sort by density in descending order
  arrange(desc(density))