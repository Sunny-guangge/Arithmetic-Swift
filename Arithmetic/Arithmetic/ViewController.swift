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
        
        bubbleSort();
        selectSort();
        
        self.view.backgroundColor = UIColor.red
    }

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
}

