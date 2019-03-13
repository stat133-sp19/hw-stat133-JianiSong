## title: make-shots-data
## description: using ggplot to create pdf and png of players shotting information.
## inputs: Using court_image as the background and each players' csv data frame as our data
## outputs: Generating the pdfs and png of different players shots information. I got one pdf for each player and one png/pdf for five members in the same page. 

library(ggplot2)
library(jpeg)
library(grid)
court_file <- "../images/nba-court.jpg"
court_image <- rasterGrob(
  readJPEG(court_file),width = unit(1,"npc"),height = unit(1, "npc"))



pdf(file = "../images/andre-iguodala-shot-chart.pdf")
ggplot(data =  andre)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Andre Iguodala")+ theme_minimal()
dev.off()


pdf(file = "../images/stephen-curry-chart.pdf")
ggplot(data = curry)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: Stephen Curry")+ theme_minimal()
dev.off()

pdf(file = "../images/klay-thompson-chart.pdf")
ggplot(data = klay)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: klay thompson")+ theme_minimal()
dev.off()


pdf(file = "../images/draymond-green-chart.pdf")
ggplot(data = draymond)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: draymond green")+ theme_minimal()
dev.off()


pdf(file = "../images/kevin-durant-chart.pdf")
ggplot(data = kevin)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("Shot Chart: kevin durant")+ theme_minimal()
dev.off()

pdf(file = "../images/gsw-shot-charts.pdf", width = 8, height = 7)
ggplot(data = shots_data)+
annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("gsw shot charts")+ theme_minimal()+
facet_wrap(~name)
dev.off()

png(file = "../images/gsw-shot-charts.png", width = 8, height=7, units = "in", res = 1200)
ggplot(data = shots_data)+
  annotation_custom(court_image, -250, 250, -50, 420)+
  geom_point(aes(x = x, y = y, color =  shot_made_flag))+
  ylim(-50,420)+
  ggtitle("gsw shot charts")+ theme_minimal()+
facet_wrap(~name)
dev.off()
