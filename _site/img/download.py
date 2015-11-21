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

for line in codecs.open('download.txt', 'r', 'utf-8'):
    line = line.strip()
    if not line:
        continue
    parts = line.split()
    name = parts[-1]
    url = ' '.join(parts[:-1])
    print('Downloading ' + url)
    urllib.urlretrieve(url, name)
