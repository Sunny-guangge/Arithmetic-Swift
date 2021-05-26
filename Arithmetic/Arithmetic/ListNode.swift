//
//  ListNode.swift
//  Arithmetic
//
//  Created by wangshuaiguang on 2021/5/24.
//

import UIKit

class ListNode: NSObject {
    var value:Int;
    var next:ListNode?;
    
    init(value:Int) {
        self.value = value;
        self.next = nil;
    }
    
    //倒数第K个元素  两个快慢指针  快指针先走K步  然后慢指针和快指针一起走  他俩之间一直差距k  当快指针到头的时候  就是要求的倒数第k个元素
    func daoshu(listNode:ListNode,k:Int) -> ListNode {
        var backNode:ListNode = listNode;
        var behindNode:ListNode = listNode;
        var back:Int = k;
        while backNode.next != nil && back > 0 {
            backNode = backNode.next!;
            back -= 1;
        }
        while backNode.next != nil {
            backNode = backNode.next!;
            behindNode = behindNode.next!;
        }
        return behindNode;
    }
    
    //链表反转
    
}
