#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 29 October 2016
#
# == Source
# https://www.hackerrank.com/challenges/ctci-queue-using-two-stacks

lines = $stdin.gets

queue = []
$stdin.each do |line|
  input = line.strip().split(' ')

  if input[0] == '1' then
    queue.push(input[1])
  elsif input[0] == '2' then
    queue.slice!(0)
  else
    puts queue[0]
  end
end
