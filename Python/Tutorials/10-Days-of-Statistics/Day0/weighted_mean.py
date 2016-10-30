# Day 0 - Weighted Mean
#
# Author: Stefan Mendoza
# Date Created: 27 October 2016
# Source: https://www.hackerrank.com/challenges/s10-weighted-mean

from math import ceil, floor
import sys

stdin = sys.stdin.readlines()
x = list(map(int, stdin[1].strip().split(' ')))
w = list(map(int, stdin[2].strip().split(' ')))

print('{0:.1f}'.format(sum([a * b for (a,b) in zip(x,w)]) / sum(w)))
