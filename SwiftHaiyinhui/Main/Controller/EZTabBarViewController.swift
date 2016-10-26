//
//  EZTabBarViewController.swift
//  SwiftHaiyinhui
//
//  Created by HaiyinEnze on 2016/10/26.
//  Copyright © 2016年 ENZE. All rights reserved.
//

import UIKit

class EZTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewControllers()
        
    }
    
    override class func initialize() {
        let tabBar = UITabBar.appearance()
        tabBar.tintColor = UIColor(red:111/255.0, green: 111/255.0, blue: 111/255.0, alpha: 1.0)
    }
    

    func addChildViewController(_ childController: UIViewController, title: String, imageName: String, selectedImageName: String) {
        childController.tabBarItem.image = UIImage(named:imageName);
        childController.tabBarItem.selectedImage = UIImage(named:selectedImageName)
        childController.title = title
        
        let navi = EZNavigationController(rootViewController: childController)
        
        addChildViewController(navi)
    }
    
    fileprivate func addChildViewControllers(){
        addChildViewController(EZHomepageViewController(), title: "首页", imageName: "icon_tabbar_home", selectedImageName: "icon_tabbar_home_selected")
        addChildViewController(EZInvestViewController(), title: "投资", imageName: "icon_tabbar_invest", selectedImageName: "icon_tabbar_invest_selected")
        addChildViewController(EZAccountCenterViewController(), title: "账户", imageName: "icon_tabbar_home", selectedImageName: "icon_tabbar_home_selected")
        addChildViewController(EZMoreViewController(), title: "更多", imageName: "icon_tabbar_more", selectedImageName: "icon_tabbar_more_selected")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
