//
//  ViewController.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/10/25.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array1 = NSMutableArray()
        let array2 = NSMutableArray()
        
        array1.add(array2)
        array2.add(array1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

