## title: make-shots-data
## description: This is a dataset about the shots.
## inputs: 
## outputs: 

setwd("/Users/catherinesong/Desktop/workout01/code")
curry <- read.csv(file ="/Users/catherinesong/Desktop/workout01/data/stephen-curry.csv",stringsAsFactors = FALSE)
andre <- read.csv(file= "/Users/catherinesong/Desktop/workout01/data/andre-iguodala.csv", stringsAsFactors = FALSE)
draymond <- read.csv(file= "/Users/catherinesong/Desktop/workout01/data/draymond-green.csv", stringsAsFactors = FALSE)
kevin <- read.csv(file= "/Users/catherinesong/Desktop/workout01/data/kevin-durant.csv", stringsAsFactors = FALSE)
klay <- read.csv(file= "/Users/catherinesong/Desktop/workout01/data/klay-thompson.csv", stringsAsFactors = FALSE)

curry$name <- c("Stephen Curry")
andre$name <- c("Andre Iguodala")
draymond$name <- c("Graymond Green")
kevin$name <- c("Kevin Durant")
klay$name <- c("Klay Thompson")


kevin$shot_made_flag[kevin$shot_made_flag=="n"] <- c("shot_no")
kevin$shot_made_flag[kevin$shot_made_flag=="y"] <- c("shot_yes")
klay$shot_made_flag[klay$shot_made_flag=="n"] <- c("shot_no")
klay$shot_made_flag[klay$shot_made_flag=="y"] <- c("shot_yes")
andre$shot_made_flag[andre$shot_made_flag=="n"] <- c("shot_no")
andre$shot_made_flag[andre$shot_made_flag=="y"] <- c("shot_yes")
curry$shot_made_flag[curry$shot_made_flag=="n"] <- c("shot_no")
curry$shot_made_flag[curry$shot_made_flag=="y"] <- c("shot_yes")
draymond$shot_made_flag[draymond$shot_made_flag=="n"] <- c("shot_no")
draymond$shot_made_flag[draymond$shot_made_flag=="y"] <- c("shot_yes")



curry$minute <- 12*curry$period - curry$minutes_remaining
andre$minute <- 12*andre$period - andre$minutes_remaining
draymond$minute <- 12*draymond$period - draymond$minutes_remaining
klay$minute <- 12*klay$period - klay$minutes_remaining
kevin$minute <- 12*kevin$period - kevin$minutes_remaining

sink(file = "../output/andre-iguodala-summary.txt")
summary(andre)
sink()

sink(file = "../output/stephen-curry-summary.txt")
summary(curry)
sink()

sink(file = "../output/draymond-green-summary.txt")
summary(draymond)
sink()

sink(file = "../output/klay-thompson-summary.txt")
summary(klay)
sink()

sink(file = "../output/kevin-durant-summary.txt")
summary(kevin)
sink()

shots_data <- rbind(andre,draymond,kevin,klay,curry)

sink(file = "../data/shots-data.csv")
rbind(andre,draymond,kevin,klay,curry)
sink()

sink(file = "../output/shots-data-summary.txt")
summary(shots_data)
sink()











