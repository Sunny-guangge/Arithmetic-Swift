//
//  TreeNode.swift
//  Arithmetic
//
//  Created by wangshuaiguang on 2021/5/22.
//

import UIKit

class TreeNode: NSObject {
    public var value : Int;
    public var left : TreeNode?;
    public var right : TreeNode?;
    
    public init(val:Int) {
        self.value = val;
    }
    //遍历  不用递归   深度优先遍历
    func bianli(tree:TreeNode!) -> Void {
        if tree == nil {
            return;
        }
        var data : [Int] = [Int]();
        var stack : [TreeNode] = [TreeNode]();
        stack .append(tree);
        while !stack.isEmpty {
            let node : TreeNode = stack.last!;
            data.append(node.value);
            if node.right != nil {
                stack.append(node.right!);
            }
            if node.left != nil {
                stack.append(node.left!);
            }
        }
        
        
    }
}
