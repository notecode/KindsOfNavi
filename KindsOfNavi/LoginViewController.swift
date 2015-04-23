//
//  LoginViewController.swift
//  KindsOfNavi
//
//  Created by Macbook Pro on 15/4/22.
//  Copyright (c) 2015年 xxtao. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onLogin() {
        DataModel.inst.loggedIn = true
        
        var main = self.presentingViewController as! UITabBarController
        main.selectedIndex = 1

        onCancel("")
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
