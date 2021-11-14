# Filtering and arranging
# 
# We're often interested in both filtering and sorting a dataset, to focus on observations of particular interest to you. Here, you'll find counties that are extreme examples of what fraction of the population works in the private sector.


# Instructions
# Filter for counties in the state of Texas that have more than ten thousand people (10000), and sort them in descending order of the percentage of people employed in private work.


counties_selected <- counties %>%
  select(state, county, population, private_work, public_work, self_employed)

# Filter for Texas and more than 10000 people; sort in descending order of private_work
counties_selected %>%
  # Filter for Texas and more than 10000 people
  filter(state == "Texas" & population > 10000) %>%
  # Sort in descending order of private_work
  arrange(desc(private_work))