//
//  ViewController.swift
//  Saber-Quiz
//
//  Created by Bruno Vieira Souza on 08/02/23.
//

import UIKit

class LoginViewController: UIViewController {
    
    lazy var loginView: LoginView = {
       let view = LoginView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        //self.view.backgroundColor = .green
    }
}
