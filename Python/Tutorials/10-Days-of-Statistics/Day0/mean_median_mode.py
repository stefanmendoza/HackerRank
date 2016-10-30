# Day 0 - Mean, Median & Mode
#
# Author: Stefan Mendoza
# Date Created: 27 October 2016
# Source: https://www.hackerrank.com/challenges/s10-basic-statistics

from math import ceil, floor
import sys

values = list(map(int, sys.stdin.readlines()[1].split(' ')))

# Mean
print('{0:.1f}'.format(sum(values)/len(values)))

# Median
values.sort()

if len(values) % 2 != 0:
    print('{0:.1f}'.format(values[len(values)/2]))
else:
    first_median_value = int(floor(len(values)/2)) - 1
    second_median_value = int(ceil(len(values)/2))
    print('{0:.1f}'.format((values[first_median_value] + values[second_median_value])/2.0))

# Mode
modes = [(x, values.count(x)) for x in values if values.count(x) > 1]

if len(modes) == 0:
    print(min(values))
else:
    print(modes[0][0])
