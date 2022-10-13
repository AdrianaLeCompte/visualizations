# Install packages
install.packages("tidyverse")
install.packages("psych")
install.packages("devtools")
library(devtools)
devtools::install_github("an-bui/calecopal")

# load libraries
library(tidyverse)
library(psych)
library(calecopal)
library(readr)

# read in your data
penguins <- read_csv("penguins.csv")

# basic scatterplot with geom_point
ggplot(data = penguins)+
  geom_point(aes(x = flipper_length_mm, y = body_mass_g))

# set color by species
ggplot(data = penguins)+
  geom_point(aes(x = flipper_length_mm, y = body_mass_g, color = species))+
  scale_color_manual(values = cal_palette("lake"))


