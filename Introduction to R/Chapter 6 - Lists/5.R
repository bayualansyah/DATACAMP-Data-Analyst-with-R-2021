# Creating a new list for another movie
# 
# You found reviews of another, more recent, Jack Nicholson movie: The Departed!
#   
#   Scores	Comments
#   4.6	    I would watch it again
#   5	      Amazing!
#   4.8	    I liked it
#   5	      One of the best movies
#   4.2	    Fascinating plot
# 
# It would be useful to collect together all the pieces of information about the movie, like the title, actors, and reviews into a single variable. Since these pieces of data are different shapes, it is natural to combine them in a list variable.
# 
# movie_title, containing the title of the movie, and movie_actors, containing the names of some of the actors in the movie, are available in your workspace.


# Instructions
# Create two vectors, called scores and comments, that contain the information from the reviews shown in the table.
# Find the average of the scores vector and save it as avg_review.
# Combine the scores and comments vectors into a data frame called reviews_df.
# Create a list, called departed_list, that contains the movie_title, movie_actors, reviews data frame as reviews_df, and the average review score as avg_review, and print it out.


# Use the table from the exercise to define the comments and scores vectors
scores <- c(4.6, 5, 4.8, 5, 4.2)
comments <- c("I would watch it again", "Amazing!", "I liked it", "One of the best movies", "Fascinating plot") 

# Save the average of the scores vector as avg_review  
avg_review <- mean(scores) 

# Combine scores and comments into the reviews_df data frame
reviews_df <- data.frame(scores, comments)

# Create and print out a list, called departed_list
departed_list <- list(movie_title, movie_actors, review_df, avg_review)
departed_list