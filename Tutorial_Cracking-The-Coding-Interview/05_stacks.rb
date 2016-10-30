#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 26 October 2016
#
# == Source
#
# Given strings of brackets, determine whether each sequence of brackets is balanced.
# If a string is balanced, print YES on a new line; otherwise, print NO on a new line.

brackets = Hash.new
brackets['{'] = '}'
brackets['['] = ']'
brackets['('] = ')'

t = gets.strip.to_i
for a0 in (0..t-1)
  expression = gets.strip
  if expression.length() % 2 != 0
    puts 'NO'
  else
    stack = []

    valid = true

    expression = expression.split('')

    expression.each do |bracket|
      if brackets[bracket].nil?
        if stack.empty? || brackets[stack.pop()] != bracket
          valid = false
          break
        end
      else
        stack.push(bracket)
      end
    end

    if !stack.empty?
      valid = false
    end

    if valid
      puts 'YES'
    else
      puts 'NO'
    end
  end
end
