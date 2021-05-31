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
    
    init(_ value:Int) {
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
    static func transfer(l:ListNode?) -> ListNode? {
        if l == nil {
            return l;
        }
        if l?.next == nil {
            return l;
        }
        let reverseNode = transfer(l: l?.next);
        l?.next?.next = l;
        l?.next = nil;
        return reverseNode;
    }
    
    //链表翻转  非递归
    static func reverse(l:ListNode?) -> ListNode? {
        var newHead:ListNode?;
        var head:ListNode? = l;
        while head != nil {
            let tmp : ListNode? = head?.next;
            head?.next = newHead;
            newHead = head;
            head = tmp;
        }
        return newHead;
    }
    
    //求两个链表的和
    class func addTwoNum(l1:ListNode?,l2:ListNode?) -> ListNode? {
        var result:ListNode?;
        var current:ListNode?;
        var left:ListNode? = l1;
        var right:ListNode? = l2;
        var carry = 0;
        while left != nil || right != nil || carry != 0 {
            let node = ListNode(0);
            if result == nil {
                result = node;
            }else {
                current?.next = node;
            }
            let sum = (left?.value ?? 0) + (right?.value ?? 0) + carry;
            carry = sum / 10;
            node.value = sum % 10;
            left = left?.next;
            right = right?.next;
            current = node;
        }
        return result;
    }
}
