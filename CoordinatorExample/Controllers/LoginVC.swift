//
//  ViewController.swift
//  CoordinatorExample
//
//  Created by ShreeshaRao on 28/01/22.
//

import UIKit

class LoginVC: UIViewController, CoordinatorBoard {
    
    @IBOutlet weak var userNameLabel: UITextField!
    
    @IBOutlet weak var passwordLabel: UITextField!
    
    var appCoordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        if self.userNameLabel.text != "" {
            self.appCoordinator?.navigateToHomeVC(userName: userNameLabel.text!)
            self.userNameLabel.text = ""
    }
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        self.appCoordinator?.navigateToSignUpVC()
    }
    
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        self.appCoordinator?.navigateToResetPasswordVC()
    }
    
    
}

