#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 30 October 2016
#
# == Source
# https://www.hackerrank.com/challenges/ctci-linked-list-cycle

class Node
  attr_accessor :data, :next
  def initialize(data)
    @data = data
    @next = nil
  end
end

def has_cycle(head)
  seen = []
  if head.nil?
    return false
  else
    current = head

    while !current.nil?
      if !seen.index(current).nil?
        return true
      else
        seen.push(current)
        current = current.next
      end
    end

    return false
  end
end

# === Test Case #1

# 3 -> 15 -> 2 -> 4
#      ^          |
#      |----------|

# head = Node.new(3)
# head.next = Node.new(15)
# head.next.next = Node.new(2)
# head.next.next.next = Node.new(4)
# head.next.next.next.next = head.next
# puts has_cycle(head) # should return true

# === Test Case #2

# 3 -> 6 -> 8 -> nil

# head = Node.new(3)
# head.next = Node.new(6)
# head.next.next = Node.new(8)
# puts has_cycle(head) # should return false
