//
//  ViewController.swift
//  Arithmetic
//
//  Created by 王帅广 on 19/5/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        bubbleSort();
//        selectSort();
        
        let l1 = ListNode(2);
        l1.next = ListNode(4);
        l1.next?.next = ListNode(6);
        
        let l2 = ListNode(4);
        l2.next = ListNode(5);
        l2.next?.next = ListNode(2);
        
        
        let result = ListNode.addTwoNum(l1: l1, l2: l2);
        
        let reverse = ListNode.transfer(l: l1);
        
        
        
        self.view.backgroundColor = UIColor.red
        
//        var array:[Int] = [4,2,7,8,5,1,9,6,3];
//        quickSort(a: &array, low: 0, high: array.count-1);
        
//        jishuoushu(a: &array, low: 0, high: array.count - 1);
//
//        print(array);
        
        let global = DispatchQueue.global();
        let serial = DispatchQueue.init(label: "自定义队列");
        global.async {
            print(001112222233);
            print(Thread.current);
            
            serial.async {
                print(222222222);
                print(Thread.current)
            }
            
            serial.sync {
                sleep(3);
                print(11111111);
                print(Thread.current);
            }
        }
        global.sync {
            print(333333333);
            print(Thread.current);
            
            serial.sync {
                sleep(3);
                print(44444444);
                print(Thread.current);
            }
        }
    }
    //冒泡排序
    func bubbleSort() -> Void {
        var array:[Int32] = [4,2,7,8,5,1,9,6,3];
        for index in (1..<array.count).reversed() {
            print(index);
            for j in 0..<index {
                if array[j] > array[j+1] {
                    let tmp:Int32 = array[j];
                    array[j] = array[j+1];
                    array[j+1] = tmp;
                    
                }
            }
        }
        print(array);
    }
    //选择排序
    func selectSort() -> Void {
        var array:[Int32] = [4,2,7,8,5,1,9,6,3];
        for i in (1..<array.count).reversed() {
            var max:Int = 0;
            for j in 1..<i+1 {
                if array[j] > array[max] {
                    max = j;
                }
            }
            let tmp:Int32 = array[i];
            array[i] = array[max];
            array[max] = tmp;
        }
        print(array)
    }
    //快速排序
    func quickSort(a :inout [Int],low : Int,high:Int) -> Void {
        if low >= high {
            return;
        }
        let key:Int = a[low];
        var i : Int = low;
        var j : Int = high;
        
        while i < j {
            while key < a[j] {
                j -= 1;
            }
            a[i] = a[j];
            while key > a[i] {
                i += 1;
            }
            a[j] = a[i];
        }
        a[i] = key;
        quickSort(a: &a, low: low, high: i-1);
        quickSort(a: &a, low: i+1, high: high);
    }
    
    //左边奇数 右边偶数
    func jishuoushu(a : inout [Int],low:Int,high:Int) -> Void {
        if low > high {
            return;
        }
        var l:Int = low;
        var h:Int = high;
        while l < h {
            while a[l] % 2 == 1 {
                l += 1;
            }
            while a[h] % 2 == 0 {
                h -= 1;
            }
            let tmp : Int = a[l];
            a[l] = a[h];
            a[h] = tmp;
            l += 1;
            h -= 1;
        }
    }
    
    //连续子数组的最大和
    func maxSum(array : inout [Int]) -> Void {
        var max:Int = array[0];
        for i in 1...array.count-1 {
            
            
            
        }
    }
}

