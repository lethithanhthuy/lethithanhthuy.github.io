#! /bin/bash
#
# build.sh
# Copyright (C) 2015 truong-d <truong-d@ahclab08>
#
# Distributed under terms of the MIT license.
#

grunt >/tmp/grunt.log 2>&1 &
while true; do
git remote update
status=`git status`
if [[ $status =~ "is behind" ]]; then
   git pull && git add --all . &&  git commit -m "Update site" &&  git push origin source && sleep 20 && grunt deploy
fi
sleep 30
done
