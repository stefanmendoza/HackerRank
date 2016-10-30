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
