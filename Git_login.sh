# Central Repo
#http

https://github.com/Gangulaprathapreddy/December-2023.git
# SSH
git@github.com:Gangulaprathapreddy/December-2023.git

# create a new repository on the command line
echo "# December-2023" >> README.md
  git init
  git add README.md
  git commit -m "first commit"
  git branch -M main
  git remote add origin https://github.com/Gangulaprathapreddy/December-2023.git
  git push -u origin main


#  push an existing repository from the command line
  git remote add origin https://github.com/Gangulaprathapreddy/December-2023.git
  git branch -M main
  git push -u origin main

#Token 
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

#   To set your global username/email configuration:


# Set your username:
git config --global user.name "FIRST_NAME LAST_NAME"

# Set your email address:
git config --global user.email "MY_NAME@example.com"

# # To set repository-specific username/email configuration:
# From the command line, change into the repository directory.

# Set your username:
git config user.name "FIRST_NAME LAST_NAME"

# Set your email address:
git config user.email "MY_NAME@example.com"

# Verify your configuration by displaying your configuration file:
cat .git/config
