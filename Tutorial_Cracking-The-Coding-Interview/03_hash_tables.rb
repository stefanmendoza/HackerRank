#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 28 October 2016
#
# == Source
# https://www.hackerrank.com/challenges/ctci-ransom-note

m,n = gets.strip.split(' ')
m = m.to_i
n = n.to_i
magazine = gets.strip
magazine = magazine.split(' ')
ransom = gets.strip
ransom = ransom.split(' ')

h = Hash.new

magazine.each do |word|
  if h[word] == nil then
    h[word] = 1
  else
    h[word] = h[word] + 1
  end
end

works = true

ransom.each do |word|
  if h[word] == nil then
    works = false
    break
  else
    h[word] = h[word] - 1
  end

  if h[word] == 0 then
    h.delete(word)
  end
end

if works then
  print 'Yes'
else
  print 'No'
end
