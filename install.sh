#!/bin/sh

# Make sure ~/bin exists.
mkdir -p "$HOME/bin"

# Load submodules
sm () {
  git submodule init && git submodule update
}
sm
(
  cd gitmarks_2 && git checkout tlevine && sm 
)

# Put things in ~/bin.
ln -s ~/opt/pdf2svg/pdf2svg.sh ~/bin/pdf2svg
ln -s ~/opt/spark/spark ~/bin/spark
ln -s ~/opt/urchin/urchin ~/bin/urchin

# Things to do
echo 'Source ~/opt/nvm/nvm.sh in your profile.'
echo 'Put your gitmarks_2 configuration in ~/gitmarks2.py.'
