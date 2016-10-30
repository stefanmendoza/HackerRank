# Day 1 - Quartiles
#
# Author: Stefan Mendoza
# Date Created: 30 October 2016
# Source: https://www.hackerrank.com/challenges/s10-quartiles

import sys

def find_median(values):
    values.sort()

    midpoint = int(len(values)/2)

    if len(values) % 2 != 0:
        median = values[midpoint]
    else:
        median = int((values[midpoint] + values[midpoint - 1])/2)

    return median

num_of_values = sys.stdin.readline().strip()
values = list(map(int, sys.stdin.readline().strip().split(' ')))

q2 = find_median(values)

midpoint = int(len(values)/2)

q1 = find_median(values[0:midpoint])

print(q1)
print(q2)

if len(values) % 2 != 0:
    q3 = find_median(values[(midpoint + 1):])
    print(q3)
else:
    q3 = find_median(values[(midpoint):])
    print(q3)
