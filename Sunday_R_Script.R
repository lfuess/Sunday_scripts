# This is a script to explore the gapminder dataset using R
# Lauren Fuess
# fuess@uta.edu
# 4.18.2015

# install dplyr
# install.packages("dplyr",dependencies = TRUE)

#load dplyr
library("dplyr")

#Read in data as tab-deliminated
gap.in <- read.table("./output//combined_gapMinder.tsv", 
                     sep ="\t", 
                     header = TRUE)

gap.in %>% 
  filter(country == "China") %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

#Challenge
# Calculate the mean population per continent per year for years prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent, year) %>%
  summarize(mean = mean(pop))