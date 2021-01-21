//
//  ViewController.swift
//  simpleAppProject
//
//  Created by admin on 21.01.2021.
//

import UIKit

class ViewController: UIViewController {

    let emailTextField: UITextField = {
        let e = UITextField()
        e.placeholder = "Email"
        e.textColor = .black
        e.backgroundColor = .white
        e.borderStyle = .roundedRect
        return e
    }()
    
    let passwordTextField: UITextField = {
        let p = UITextField()
        p.placeholder = "Password"
        p.textColor = .black
        p.backgroundColor = .white
        p.borderStyle = .roundedRect
        return p
    }()
    
    let loginButton: UIButton = {
        let l = UIButton(type: .system)
        l.setTitleColor(.black, for: .normal)
        l.setTitle("LogIn", for: .normal)
       
        l.layer.cornerRadius = 3
        return l
    }()
    
    let haveAccountButton: UIButton = {
        let h = UIButton(type: .system)
        h.backgroundColor = .white
        let attributedTitle = NSAttributedString(string: "Don't have account?", attributes: [NSAttributedString.Key.foregroundColor :UIColor.white])
        h.setAttributedTitle(attributedTitle, for: .normal)
        return h
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        
        setupTextFieldComponents()
        setupLoginButton()
    }
    
    fileprivate func setupTextFieldComponents() {
        setupEmailField()
        setupPasswordField()
    }
    
    fileprivate func setupEmailField() {
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 300).isActive = true
        emailTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24).isActive = true
        emailTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    fileprivate func setupPasswordField() {
        view.addSubview(passwordTextField)
        
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8).isActive = true
        passwordTextField.leftAnchor.constraint(equalTo: emailTextField.leftAnchor, constant: 0).isActive = true
        passwordTextField.rightAnchor.constraint(equalTo: emailTextField.rightAnchor, constant: 0).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
    fileprivate func setupLoginButton() {
        view.addSubview(loginButton)
        
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 8).isActive = true
        loginButton.leftAnchor.constraint(equalTo: passwordTextField.leftAnchor, constant: 150).isActive = true
        loginButton.rightAnchor.constraint(equalTo: passwordTextField.rightAnchor, constant: 150)
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    fileprivate func setupHaveAccountButton() {
        view.addSubview(haveAccountButton)
        
        haveAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        haveAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8).isActive = true
        haveAccountButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12
        ).isActive = true
        haveAccountButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -12).isActive = true
        haveAccountButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
    }
}

