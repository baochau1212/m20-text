# Exercise-1
# Developed from: http://tidytextmining.com/
install.packages("janeaustenr")
install.packages("tidytext")

# Set up (install packages that you don't have)
library(janeaustenr)
library(tidytext)
library(dplyr)
library(stringr)
library(ggplot2)

# Load booksinto a dataframe using the austen_books() function
books <- austen_books()

# How many books are in the dataset?
number.of.book <- length(unique(books$book))

# Which book has the most lines?
most.lines <- books %>%
  group_by(book) %>%
  summarise(book.most.lines = n()) %>%
  filter(book.most.lines == max(book.most.lines)) %>%
  select(book)


# Use the unnest_tokens function to generate the full list of words
full.list <- books %>%
  unnest_tokens(word, text) 

# Which words are most common (regardless of which book them come from)?
most.common <- full.list %>% 
  group_by(word) %>%
  sum
  

# Remove stop words by performing an anti_join with the stop_words dataframe


# Which non stop-words are most common?


# Use ggplot to make a horizontal bar chart of the word frequencies of non-stop words

