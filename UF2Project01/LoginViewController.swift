//
//  LoginViewController.swift
//  UF2Practica2
//
//  Created by Professor on 18/12/2019.
//  Copyright © 2019 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn

class LoginViewController: UIViewController {
    

    @IBOutlet weak var loginButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    GIDSignIn.sharedInstance().presentingViewController = self
        // Do any additional setup after loading the view.
    
    NotificationCenter.default.addObserver(self,
                                           selector: #selector(LoginViewController.receiveToggleAuthUINotification(_:)),
                                               name: NSNotification.Name(rawValue: "ToggleAuthUINotification"),
                                             object: nil)
    }
    
    
    @objc func receiveToggleAuthUINotification(_ notification: NSNotification) {
        print(notification.userInfo!)
        let tabController = TabBarController(nibName:String(describing: TabBarController.self), bundle: nil)
        navigationController?.pushViewController(tabController, animated: true)
    }

}
