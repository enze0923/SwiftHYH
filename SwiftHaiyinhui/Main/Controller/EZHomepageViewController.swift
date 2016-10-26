//
//  HomepageViewController.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/10/26.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

class EZHomepageViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.clear
        self.title = "首页"
        
        self.navigationController?.navigationBar.backgroundColor = UIColor(red:0.0/255.0,green:157.0/255.0,blue:237.0/255.0,alpha:1.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
