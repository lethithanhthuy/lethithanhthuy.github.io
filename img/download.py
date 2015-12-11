#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © 2015 truong-d <truong-d@dellxps>
#
# Distributed under terms of the MIT license.

"""

"""
import codecs
import urllib
import time

curr_date = time.strftime("%Y_%m_%d")
for line in codecs.open('download.txt', 'r', 'utf-8'):
    line = line.strip()
    if not line:
        continue
    parts = line.split()
    name = parts[-1]
    url = ' '.join(parts[:-1])
	
    filetype = "jpg"
    if "jpg" in url[-4:]:
        filetype = "jpg"
    elif "png" in url[-4:]:
        filetype = "png"
		
    print('Downloading ' + url)
    urllib.urlretrieve(url, curr_date + "_" + name + "." + filetype)
    x = raw_input("Enter to exit")