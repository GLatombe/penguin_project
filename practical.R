rm(list=ls())
gc()
graphics.off()


library(remotes)
Sys.unsetenv("GITHUB_PAT")
install_github("susjoh/MScIntroGitGithub")
library("MScIntroGitGithub")
learnr::run_tutorial("MSc_Intro_to_Git_and_GitHub", package = "MScIntroGitGithub")
