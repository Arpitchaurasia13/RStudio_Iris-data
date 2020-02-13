head(iris)
install.packages("dplyr")
library(dplyr)
lead(1:10,1)
lead(1:10,2)
lead(1:10,3)
lag(1:10,1)
lag(1:10,2)
sq <- c('Q1','Q2','Q3','Q4')
sv <- c(10000,15000,17000,15000)
sales <- data.frame(sq,sv)
sales
sales$diff <- lead(sales$sv,1)-sales$sv
sales

sales$diff_lag <- sales$sv-lag(sales$sv)
sales
install.packages("tidyverse")
library(dplyr)
starwars %>%
  filter(species=="Driod")

starwars %>% 
  select(name, ends_with("color"))

starwars %>%
  mutate(name, bmi = mass/((height/100)^2)) %>%
  select(name:mass,bmi)

starwars %>%
  arrange(desc(mass))

starwars %>%
  group_by(species) %>%
  summarise(
    n = n(),
    mass = mean(mass, na.rm = TRUE)
  ) %>%
  filter(n > 1)
?lm
