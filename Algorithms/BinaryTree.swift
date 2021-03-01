//
//  BinaryTree.swift
//  Algorithms
//
//  Created by Victoria Kravets on 19.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}


func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool { // рекурсивный метод
    if let p = p, let q = q {
        if p.val == q.val {
           return (isSameTree(p.left, q.left) && isSameTree(p.right, q.right) )
       } else {
           return false
       }
    } else {
        return p == nil && q == nil
    }
}

func isSymmetric(_ root: TreeNode?) -> Bool { // рекурсивный метод
    if let root = root, let p = root.left, let q = root.right {
        if p.val == q.val {
           return (isSymmetric(p.left, q.right) && isSymmetric(p.right, q.left) )
       } else {
           return false
       }
    } else {
        return root != nil && (root?.left == nil && root?.right == nil)
    }
}

func isSymmetric(_ p: TreeNode?, _ q: TreeNode?) -> Bool { // рекурсивный метод
    if let p = p, let q = q {
        if p.val == q.val {
           return (isSymmetric(p.left, q.right) && isSymmetric(p.right, q.left))
       } else {
           return false
       }
    } else {
        return p == nil && q == nil
    }
}
func maxDepth(_ root: TreeNode?) -> Int {
    if let root = root {
        var result = 1
         result += maxDepthNodes(root)
        return result
    } else {
        return 0
    }
}

func maxDepthNodes(_ root: TreeNode?) -> Int {
    var leftDepth = 0
    var rightDepth = 0
    if let root = root {
        
        if let left = root.left {
            leftDepth += 1
            leftDepth += maxDepthNodes(left)
        }
        if let right = root.right {
            rightDepth += 1
            rightDepth += maxDepthNodes(right)
        }   
    } else {
        return 0
    }
    return leftDepth >= rightDepth ? leftDepth : rightDepth
}

func isValidBST(_ root: TreeNode?) -> Bool {
    var resultLeft = false
    var resultRight = false
    if let root = root {
        if let left = root.left {
            if left.val < root.val  {
                resultLeft = isValidBST(left)
            }
        } else {
            resultLeft = true
        }

        if let right = root.right {
            if right.val > root.val {
                resultRight = isValidBST(right)
            }
        } else {
             resultRight = true
        }

        return (root.left == nil && root.right == nil) || (resultLeft && resultRight)
    }
    return false
}

func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
   return nil
}


