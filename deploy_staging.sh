# this script is intended for staging use only
# it is not meant to replace a full CI/CD
# the goal is to make sure staging is always up to date
#
cd ~/web/deployScript

if [[ `git status -uno` ]]; then
  echo "changes"
  git pull --rebase 
  # {{insert build step here}}
else
  echo "no changes"
fi
