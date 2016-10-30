#!/bin/ruby

##
# == Author
# Stefan Mendoza
#
# == Date Created
# 29 October 2016
#
# == Source
# https://www.hackerrank.com/challenges/ctci-linked-list-cycle

"""
Detect a cycle in a linked list. Note that the head pointer may be 'None' if the list is empty.

A Node is defined as:

class Node(object):
  def __init__(self, data = None, next_node = None):
    self.data = data
    self.next = next_node
"""

def has_cycle(head):
  seen = set()
  if head == None:
    return False
  else:
    current = head

    while current != None:
      if current in seen:
        return True
      else:
        seen.add(current)
        current = current.next

        return False
