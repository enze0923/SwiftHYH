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
        //let tabBar = UITabBar.appearance()
    }
    
    func addChildViewControllers(){
        addChildViewController(EZHomepageViewController(), title: "首页", imageName: "icon_tabbar_home", selectedImageName: "icon_tabbar_home_selected")
        addChildViewController(EZInvestViewController.init(), title: "投资", imageName: "icon_tabbar_invest", selectedImageName: "icon_tabbar_invest_selected")
        addChildViewController(EZAccountCenterViewController.init(), title: "账户", imageName: "icon_tabbar_home", selectedImageName: "icon_tabbar_home_selected")
        addChildViewController(EZMoreViewController.init(), title: "更多", imageName: "icon_tabbar_more", selectedImageName: "icon_tabbar_more_selected")
    }
    

    func addChildViewController(_ childController: UIViewController, title: String, imageName: String, selectedImageName: String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImageName)
        childController.title = title
        let nav = EZNavigationController(rootViewController: childController)
        addChildViewController(nav)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
