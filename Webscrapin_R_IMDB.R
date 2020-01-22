library(rvest)
library(tidyverse)

Webpage <- read_html("https://www.imdb.com/search/title/?count=100&release_date=2016,2016&title_type=feature")

rank_data_html <- html_nodes(Webpage, '.text-primary')

rank_data <- html_text(rank_data_html)

head(rank_data)

rank_data <- as.numeric(rank_data)
head(rank_data)

tital_data_html <- html_nodes(Webpage, '.lister-item-header a')
tital_data <- html_text(tital_data_html)
head(tital_data)

description_data_html <- html_nodes(Webpage ,'.ratings-bar+ .text-muted')

description_data <- html_text(description_data_html)
head(description_data)

runtime_data_html <- html_nodes(Webpage,'.text-muted .runtime')

runtime_data <- html_text(runtime_data_html)
head(runtime_data)

runtime_data<- gsub("min" ,"", runtime_data)
head(runtime_data)


genre_data_html <- html_nodes(Webpage,'.genre')

genre_data <- html_text(genre_data_html)

head(genre_data)

genre_data <- gsub("\n" ,"", genre_data)

genre_data <- gsub(" ", "" , genre_data)

genre_data <- gsub(",.*" , "", genre_data)

genre_data<- as.factor(genre_data)

head(genre_data)

rating_data_html <- html_nodes(Webpage, '.ratings-imdb-rating strong')

rating_data <- html_text(rating_data_html)

head(rating_data)

rating_data <- as.numeric(rating_data)
head(rating_data)

votes_data_html <- html_nodes(Webpage,'.sort-num_votes-visible span:nth-child(2)')

votes_data <- html_text(votes_data_html)
head(votes_data)

votes_data<-gsub(",","",votes_data)

votes_data <- as.numeric(votes_data)
head(votes_data)


directors_data_html <- html_nodes(Webpage, '.text-muted+ p a:nth-child(1)')

directors_data <- html_text(directors_data_html)

head(directors_data)

directors_data <- as.factor(directors_data)

actors_data_html <- html_nodes(Webpage, '.lister-item-content .ghost+ a')

actors_data <- html_text(actors_data_html)
head(actors_data)

actors_data <- as.factor(actors_data)

head(actors_data)

metascore_data_html <- html_nodes(Webpage, '.metascore')

metascore_data <- html_text(metascore_data_html)

head(metascore_data)

metascore_data <- gsub(" ", "", metascore_data)
length(metascore_data)

for(i  in c(44,85)) {
  a <- metascore_data[1:(i-1)] 
  
  b <- metascore_data[i:length(metascore_data)]
  
  metascore_data <- append(a,list("NA"))
  
  metascore_data <- append(metascore_data,b)
}

metascore_data <- as.numeric(metascore_data) 

length(metascore_data)

summary(metascore_data)





movies_df = data.frame(Rank = rank_data , Title = tital_data,
            
            Description = description_data , RunTime = runtime_data ,
            
            Genre = genre_data , Rating = rating_data ,
            
            Metastore = metascore_data , Votes = votes_data,
            
            Director = directors_data , Actor = actors_data)

str(movies_df)

library(ggplot2)

qplot(data = movies_df , RunTime, fill= Genre , bins = 30)

ggplot(movies_df, aes(x= RunTime, y = Rating))+
  geom_point(aes(size = Votes, col = Genre))


ggplot(movies_df, aes(x= RunTime , y = Rating))+
  geom_point(aes(size = Votes, col = Genre))

boxplot(movies_df$Rating, movies_df$Votes)


