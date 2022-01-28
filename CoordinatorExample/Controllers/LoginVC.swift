//
//  ViewController.swift
//  CoordinatorExample
//
//  Created by ShreeshaRao on 28/01/22.
//

import UIKit

class LoginVC: UIViewController, CoordinatorBoard {
    
    var appCoordinator: AppCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        appCoordinator?.navigateToHomeVC()
    }
    
    @IBAction func signUpPressed(_ sender: UIButton) {
        appCoordinator?.navigateToSignUpVC()
    }
    
    
    @IBAction func forgotPasswordPressed(_ sender: Any) {
        appCoordinator?.navigateToResetPasswordVC()
    }
    
    
}

