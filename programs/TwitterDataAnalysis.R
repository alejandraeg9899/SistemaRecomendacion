library(twitteR)
tweets <- userTimeLine("RDataMining",n=3200)

url <- "http://www.rdatamining.com/data/rdmTweets-201306.RData"
download.file(url,destfile = "./data/rdmTweets-201306.RData")

#loas tweets in R
load(file="./data/rdmTweets-201306.RData")
(n.tweet <- length(tweets))


#Convert Tweets a data frame

tweets.df <- twListToDF(tweets)
dim(tweets.df)

for(i in c(1:2,320)){
  cat(paste0("[",i,"] "))
  writeLines(strwarp(tweets.df$test[i], 60))
}