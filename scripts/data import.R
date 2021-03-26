#-------- packages --------
library(tidyverse)
library(tidylog)
library(readxl)
library(ggthemes)

#-------- data and directory --------
directory <- paste0(here::here(), "/data")
setwd(directory)

data <- read_xlsx("egg boxing.xlsx")

#-------- analysis --------
data %>%
  ggplot(aes(x = score)) +
  geom_histogram() +
  theme_light()
