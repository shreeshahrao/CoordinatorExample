//
//  AppCoordinator.swift
//  CoordinatorExample
//
//  Created by ShreeshaRao on 28/01/22.
//

import Foundation
import UIKit

class AppCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let loginVC = LoginVC.instanciateFromStoryBoard()
        loginVC.appCoordinator = self
        self.navigationController.pushViewController(loginVC, animated: true)
    }
    
    func navigateToResetPasswordVC() {
        let resetPassword = ResetPasswordVC.instanciateFromStoryBoard()
        self.navigationController.pushViewController(resetPassword, animated: true)
    }
    
    func navigateToSignUpVC() {
        let signUp = SignUpVC.instanciateFromStoryBoard()
        self.navigationController.pushViewController(signUp, animated: true)
    }
    
    func navigateToHomeVC() {
        let homeVC = HomeVC.instanciateFromStoryBoard()
        self.navigationController.pushViewController(homeVC, animated: true)
    }
    
    
    
}
