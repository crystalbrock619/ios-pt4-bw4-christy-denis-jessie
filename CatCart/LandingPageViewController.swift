//
//  LandingPageViewController.swift
//  CatCart
//
//  Created by Jessie Ann Griffin on 6/17/20.
//  Copyright © 2020 CatCartCo. All rights reserved.
//

import UIKit

class LandingPageViewController: UIViewController {

    @IBOutlet weak var toLoginScreenButton: UIButton!
    @IBOutlet weak var toCreateAccountScreen: UIButton!

    var userController: UserController?
    var currentUser: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        if currentUser != nil {
            self.dismiss(animated: true, completion: nil)
        }
    }

    @IBAction func showLogin() {
        let loginVC = UserLoginViewController.newLogin()
        self.present(loginVC, animated: true)
    }
}
