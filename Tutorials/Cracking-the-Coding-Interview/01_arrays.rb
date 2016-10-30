#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 27 October 2016
#
# == Source
# https://www.hackerrank.com/challenges/ctci-array-left-rotation

# Given an array of  integers and a number, , perform  left rotations on the array.
# Then print the updated array as a single line of space-separated integers.

n,k = gets.strip.split(' ')
n = n.to_i
k = k.to_i
a = gets.strip
a = a.split(' ').map(&:to_i)

if a.length > 1
  # Skip the sequence of rotations that would result in the same array
  if k > n
    rotations = k % n
  end

  # a.shift removes the first element from the array and returns it
  # a.push then pushes this element onto the back of the array
  for i in 1..k
      a.push(a.shift)
  end
end

puts a.join(" ")
