//
//  Protocol.swift
//  CoordinatorExample
//
//  Created by ShreeshaRao on 28/01/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController {get set}
    
    func start() 
}

protocol CoordinatorBoard: UIViewController {
    
    static func instanciateFromStoryBoard() -> Self
    
}

extension CoordinatorBoard {
    
    static func instanciateFromStoryBoard() -> Self {
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let id = String(describing: self)
        return storyBoard.instantiateViewController(withIdentifier: id) as! Self
    }
}
