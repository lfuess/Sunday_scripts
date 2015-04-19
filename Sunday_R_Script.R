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

