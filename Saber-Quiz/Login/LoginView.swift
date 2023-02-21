//
//  LoginView.swift
//  Saber-Quiz
//
//  Created by Bruno Vieira Souza on 21/02/23.
//

import Foundation
import UIKit

final class LoginView: ViewDefault {
    
    var scrollPostionDefault: CGPoint?
    
    lazy var emailField = LabelTextDefault(labelText: "email",
                                           placeholder: "email",
                                           font: UIFont.systemFont(ofSize: 14.0),
                                           keyboardType: .emailAddress,
                                           returnKeyType: .next)
    
    override func setupVisualElements() {
        super.setupVisualElements()
        self.scrollPostionDefault = self.scrollView.contentOffset
        setupFieldEmail()
    }
    
    private func setupFieldEmail() {
        contentView.addSubview(emailField)
        //emailField.textField.delegate = self
        
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 64),
            emailField.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 12),
            emailField.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),
        ])
    }
}
