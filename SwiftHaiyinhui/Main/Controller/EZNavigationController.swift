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
        
        navBar.setBackgroundImage(UIImage.image(withColor:UIColor(red:70.0/255.0, green:157.0/255.0, blue:237.0/255.0, alpha:1.0),size:CGSize(width:100,height:64)), for: UIBarMetrics.default)
        navBar.autoresizingMask = [UIViewAutoresizing.flexibleHeight,UIViewAutoresizing.flexibleWidth];
        navBar.titleTextAttributes = [NSFontAttributeName:UIFont.systemFont(ofSize: 17.0),NSForegroundColorAttributeName:UIColor.white]
        
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
