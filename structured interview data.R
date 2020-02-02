library(textreadr)
library(dplyr)
library(dplyr)
library(stringr)
library(tidytext)


setwd("~/Documents/Hult/Dual Degree/Module B/Text analytics/Class 1")
MBA <- read_document(file="testdocument.txt")


a <- 25 #how many observations to you have
b <- 6 #how many variables do you have
my_df <- as.data.frame(matrix(nrow=a, ncol=b))

for(z in 1:b){
  for(i in 1:a){
    my_df[i,z]<- MBA[i*b+z-b]
  }#closing z loop
}#closing i loop



# Extract question 1 in the a dataframe and delete "you said"
Q1_txt <- my_df$V1
Q1_txt <- substr(Q1_txt, start=10 , stop = 10000)
Q1_df <- data_frame(line=1:a, text=Q1_txt)
print(Q1_df)

# Extract question 2 in the a dataframe and delete "you said"
Q2_txt <- my_df$V2
Q2_txt <- substr(Q2_txt, start=10 , stop = 10000)
Q2_df <- data_frame(line=1:a, text=Q2_txt)
print(Q2_df)

# Extract question 3 in the a dataframe and delete "you said"
Q3_txt <- my_df$V3
Q3_txt <- substr(Q3_txt, start=10 , stop = 10000)
Q3_df <- data_frame(line=1:a, text=Q3_txt)
print(Q3_df)

# Extract question 4 in the a dataframe and delete "you said"
Q4_txt <- my_df$V4
Q4_txt <- substr(Q4_txt, start=10 , stop = 10000)
Q4_df <- data_frame(line=1:a, text=Q4_txt)
print(Q4_df)

# Extract question 5 in the a dataframe and delete "you said"
Q5_txt <- my_df$V5
Q5_txt <- substr(Q5_txt, start=10 , stop = 10000)
Q5_df <- data_frame(line=1:a, text=Q5_txt)
print(Q5_df)

# Extract question 6 in the a dataframe and delete "you said"
Q6_txt <- my_df$V6
Q6_txt <- substr(Q6_txt, start=10 , stop = 10000)
Q6_df <- data_frame(line=1:a, text=Q6_txt)
print(Q6_df)


# Tokenize question 1, remove stop words, and count
Q1_struc <- Q1_df %>%
  unnest_tokens(word, text) %>%
  count(word, sort=TRUE)
print(Q1_struc)

# Tokenize question 2, remove stop words, and count
Q2_struc <- Q2_df %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>% #here's where we remove tokens
  count(word, sort=TRUE)
print(Q2_struc)

# Tokenize question 3, remove stop words, and count
Q3_struc <- Q3_df %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>% #here's where we remove tokens
  count(word, sort=TRUE)
print(Q3_struc)

# Tokenize question 4, remove stop words, and count
Q4_struc <- Q4_df %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>% #here's where we remove tokens
  count(word, sort=TRUE)
print(Q4_struc)

# Tokenize question 5, remove stop words, and count
Q5_struc <- Q5_df %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>% #here's where we remove tokens
  count(word, sort=TRUE)
print(Q5_struc)

# Tokenize question 6, remove stop words, and count
Q6_struc <- Q6_df %>%
  unnest_tokens(word, text) %>%
  anti_join(stop_words) %>% #here's where we remove tokens
  count(word, sort=TRUE)
print(Q6_struc)
