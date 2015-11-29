#! /bin/sh
#
# run.sh
# Copyright (C) 2015 truong-d <truong-d@dellxps>
#
# Distributed under terms of the MIT license.
#

# curl -sL https://deb.nodesource.com/setup_0.12 | sudo bash -
# sudo apt-get install nodejs zip jekyll libjs-lodash  node-lodash  graphicsmagick
# sudo npm install -g grunt-cli
# npm install
# if above commands do not contain npm -> apt-get install npm

# to build on local: change destination: _site in _config.yml because grunt has problem with
# underscore

# run local
# 1. grunt
# 2. jekyll serve

# deploy
#grunt deploy

git add --all .
git commit -m "Add new product"
git push
grunt deploy
