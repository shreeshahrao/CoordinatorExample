//
//  HomeVC.swift
//  CoordinatorExample
//
//  Created by ShreeshaRao on 28/01/22.
//

import UIKit

class HomeVC: UIViewController, CoordinatorBoard {
    
    
    @IBOutlet weak var usrNameLabel: UILabel!
    
    var usrName: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        usrNameLabel.text = usrName
        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
