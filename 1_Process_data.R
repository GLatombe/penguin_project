library(tidyverse)

penguin.dat <- read.table("data/penguin_data.txt",header=TRUE)
head(penguin.dat)
lm(flipper_length_mm~body_mass_g,data=penguin.dat)

ggplot(penguin.dat, aes(x = flipper_length_mm, y = body_mass_g, colour = species)) +
  geom_point() +
  stat_smooth(method = "lm")   

ggsave("figs/1_flipper_bodymass_regression.png") 

penguins_female <- subset(penguin.dat, sex == "female")

write_tsv(penguins_female, "results/1_penguin_female_only.txt")
