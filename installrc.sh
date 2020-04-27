# KQuickRC Installation Script

# Move this:
mv ./quickrc.sh ~/.quickrc.sh
echo "sh ~/.quickrc.sh" >> ~/.bashrc

# Setup Root Base
if [ $# -lt 0 ]; then
  if [ "$1" = "-rb" ||"$1" = "--root-base"]; then
    # More Scrpit
  else
    # More Script
  fi
else
  # Script Stuff Here
fi
