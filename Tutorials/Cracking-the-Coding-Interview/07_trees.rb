""" Node is defined as
class node:
    def __init__(self, data):
        self.data = data
        self.left = None
        self.right = None
"""

def check_subtree(root):
    left = True
    right = True

    if root.left != None:
        if root.left.data >= root.data:
            left = False
        else:
            left = check_subtree(root.left)
    if root.right != None:
        if root.right.data <= root.data:
            right = False
        else:
            right = check_subtree(root.right)

    return (left and right)

def check_binary_search_tree_(root):
    if root == None:
        return True
    else:
        return check_subtree(root)
