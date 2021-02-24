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
