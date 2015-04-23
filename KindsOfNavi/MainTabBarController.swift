//
//  MainTabBarController.swift
//  KindsOfNavi
//
//  Created by Macbook Pro on 15/4/21.
//  Copyright (c) 2015年 xxtao. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        
//        var item0 = self.tabBar.items![0] as! UITabBarItem
//        var item1 = self.tabBar.items![1] as! UITabBarItem
//        var item2 = self.tabBar.items![2] as! UITabBarItem
    }
    
    func tabBarController(tabBarController: UITabBarController, shouldSelectViewController viewController: UIViewController) -> Bool {
        var view2 = tabBarController.viewControllers![1] as! UIViewController
        var bNeedLogin = (!DataModel.inst.loggedIn && viewController == view2)
        
        if bNeedLogin {
            var mqueue = dispatch_get_main_queue()
            dispatch_async(mqueue) {
                let login = self.storyboard!.instantiateViewControllerWithIdentifier("LoginView") as! UIViewController
                self.presentViewController(login, animated: true, completion: nil)
            }
        }
        
        return !bNeedLogin
    }
}
