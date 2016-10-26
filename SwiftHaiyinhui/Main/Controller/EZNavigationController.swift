//
//  EZNavigationController.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/10/26.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

class EZNavigationController: UINavigationController {

    override class func initialize(){
        super.initialize()
        
        let navBar = UINavigationBar.appearance()
        
        navBar.barTintColor = UIColor.white
        navBar.tintColor   = UIColor.red
        navBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFont(ofSize: 17.0)]
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image:UIImage(named:"lefterbackicon_titlebar_28x28_"), style:.plain, target:self, action:#selector(navigationBack))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    func navigationBack() {
        popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
