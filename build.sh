#! /bin/bash
#
# build.sh
# Copyright (C) 2015 truong-d <truong-d@ahclab08>
#
# Distributed under terms of the MIT license.
#

grunt >/tmp/grunt.log 2>&1 &
while 1; do
git remote update
status=`git status`
if [[ $status =~ "is behind" ]]; then
   git pull
   sleep 30
   ./run.sh
fi
sleep 30
done
