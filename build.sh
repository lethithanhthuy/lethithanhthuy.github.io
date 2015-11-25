#! /bin/bash
#
# build.sh
# Copyright (C) 2015 truong-d <truong-d@ahclab08>
#
# Distributed under terms of the MIT license.
#

grunt >/tmp/grunt.log 2>&1 &
while true; do
   git pull && sleep 20 && git add --all . &&  git commit -m "Update site" &&  git push origin source && grunt deploy
sleep 30
done
