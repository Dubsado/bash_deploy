# this script is intended for staging use only
# it is not meant to replace a full CI/CD
# the goal is to make sure staging is always up to date
#
cd ~/web/deployScript

changed=0
git remote update && git status -uno | grep -q 'Your branch is behind' && changed=1
if [ $changed = 1 ]; then
  echo "changes"
  git pull
  # {{insert build step here}}
else
  echo "no changes"
fi
