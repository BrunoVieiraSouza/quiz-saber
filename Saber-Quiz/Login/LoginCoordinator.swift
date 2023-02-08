//
//  LoginCoordinator.swift
//  Saber-Quiz
//
//  Created by Bruno Vieira Souza on 08/02/23.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        self.navigationController.pushViewController(viewController, animated: true)
    }
}
