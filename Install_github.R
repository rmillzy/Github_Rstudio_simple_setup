# Load required packages
install.packages(c("usethis", "gitcreds", "gh"))

# Load libraries
library(usethis)
library(gitcreds)
library(gh)

# Set the git user name and user email
use_git_config(user.name = "rmillzy", user.email = "ryan.mills@dairynz.co.nz")

# Prompt the user to create an ssh token
credentials::ssh_setup_github()

# Prompt user to create github token
usethis::create_github_token()

# User should copy and paste in PAT token in console
# after running this command
gitcreds::gitcreds_set()