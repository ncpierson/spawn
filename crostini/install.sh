# Don't run as sudo!
if [ "$EUID" -eq 0 ]; then
  echo "Must not run as sudo!"
  exit 1
fi

# Core

sudo apt-get update

./packages/dotfiles.sh

# Personal

./packages/discord.sh
./packages/runelite.sh
./packages/slack.sh

./crostini/packages/steam.sh

# Development

sudo apt-get install \
  git                \
  httpie             \
  imagemagick        \
  sqlite3            \
  wget               \
  -y

./packages/node.sh
./packages/tmux.sh
./packages/yarn.sh
