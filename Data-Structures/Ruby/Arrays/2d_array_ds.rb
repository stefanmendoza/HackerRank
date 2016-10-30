#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 30 October 2016
#
# == Source
# https://www.hackerrank.com/challenges/2d-array

# Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

# Array values can be negative, so if the maximum sum if ever < 0, this wouldn't change if initialized to 0
maximum_sum = nil

for row in 0..3
    for col in 1..4
        hourglass_top = arr[row][col - 1] + arr[row][col] + arr[row][col + 1]
        hourglass_mid = arr[row + 1][col]
        hourglass_bot = arr[row + 2][col - 1] + arr[row + 2][col] + arr[row + 2][col + 1]

        sum = hourglass_top + hourglass_mid + hourglass_bot

        if maximum_sum == nil
            maximum_sum = sum
        elsif sum > maximum_sum
            maximum_sum = sum
        end
    end
end

puts maximum_sum
