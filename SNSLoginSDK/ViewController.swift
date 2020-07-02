//
//  ViewController.swift
//  SNSLoginSDK
//
//  Created by SwiftiCode on 2/7/20.
//  Copyright © 2020 SwiftiCode. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if let token = AccessToken.current,
               !token.isExpired {
               // User is logged in, do work such as go to next view controller.
           }
        
        let loginButton = FBLoginButton()
        loginButton.center = view.center
        view.addSubview(loginButton)
        
        loginButton.permissions = ["public_profile", "email"]
        
    }


}

