//
//  HomeVC.swift
//  CoordinatorExample
//
//  Created by ShreeshaRao on 28/01/22.
//

import UIKit

class HomeVC: UIViewController, CoordinatorBoard {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
