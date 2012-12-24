#!/bin/sh

sm () {
  git submodule init && git submodule update
}
ln -s ~/opt/pdf2svg/pdf2svg.sh ~/bin/pdf2svg
ln -s ~/opt/spark/spark ~/bin/spark
ln -s ~/opt/urchin/urchin ~/bin/urchin

sm
(
  cd gitmarks_2 && git checkout tlevine && sm 
)

echo 'Source ~/opt/nvm/nvm.sh in your profile.'
echo 'Put your gitmarks_2 configuration in ~/gitmarks2.py.'
