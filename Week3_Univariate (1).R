library(ggplot2)
devtools::install_github("cran/mosaicData" , force = TRUE)
data(Marriage, package = "mosaicData")
head(data)

# plot the distribution of race
ggplot(Marriage, aes(x = race)) +
  geom_bar()
setwd(choose.dir())
getwd()
data=read.csv("university_rank2.csv")
ggplot(data, aes(x = IS_RANKED)) +
  geom_bar()
# plot the distribution of race with modified colors and labels
ggplot(Marriage, aes(x = race)) +
  geom_bar(fill = "cornflowerblue",
           color="black") +
  labs(x = "Race",
       y = "Frequency",
       title = "Participants by race")
ggplot(data, aes(x = V_DISPLAY_SCORE)) +
  geom_bar(fill = "cornflowerblue",
           color="black") +
  labs(x = "Race",
       y = "Frequency",
       title = "Universities by score")


# plot the distribution as percentages
ggplot(Marriage,
       aes(x = race,
           y = ..count.. / sum(..count..))) +
  geom_bar() +
  labs(x = "Race",
       y = "Percent",
       title = "Participants by race") +
  scale_y_continuous(labels = scales::percent)

# plot the distribution as percentages
ggplot(data,
       aes(x = V_DISPLAY_SCORE,
           y = ..count.. / sum(..count..))) +
  geom_bar() +
  labs(x = "Score",
       y = "Percent",
       title = "Universities by score") +
  scale_y_continuous(labels = scales::percent)
