//
//  LabelTextDefault.swift
//  Saber-Quiz
//
//  Created by Bruno Vieira Souza on 21/02/23.
//

import Foundation
import UIKit


class LabelTextDefault: UIView {
    //MARK: - Properts
    
    lazy private var label: UILabel = {
       let label = UILabel()
        return label
    }()
    
    lazy var textField = TextFieldDefault(placeholder: "")
    
    init(labelText: String, placeholder: String, isSecureTextEntry: Bool = false) {
        super.init(frame: .zero)
        
        self.label.text = labelText
        self.textField.placeholder = placeholder
        self.textField.isSecureTextEntry = isSecureTextEntry
        
        setupVisualElements()
    }
    
    init(labelText: String, placeholder: String, isSecureTextEntry: Bool = false, returnKeyType: UIReturnKeyType = .default) {
        super.init(frame: .zero)
        
        self.label.text = labelText
        self.textField.placeholder = placeholder
        self.textField.isSecureTextEntry = isSecureTextEntry
        self.textField.returnKeyType = returnKeyType
        
        setupVisualElements()
    }
    
    init(labelText: String, placeholder: String, font: UIFont, keyboardType: UIKeyboardType, returnKeyType: UIReturnKeyType) {
        super.init(frame: .zero)

        self.label.text = labelText
        self.textField.placeholder = placeholder
        self.textField.font = font
        self.textField.keyboardType = keyboardType
        self.textField.returnKeyType = returnKeyType
        
        if keyboardType == .emailAddress {
            self.textField.autocapitalizationType = .none
        }
        
        setupVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupVisualElements() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(label)
        self.addSubview(textField)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 0.0),
            label.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            label.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8.0),
            textField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0.0),
            textField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0.0),
            
            self.bottomAnchor.constraint(equalTo: textField.bottomAnchor)
        ])
    }
}

