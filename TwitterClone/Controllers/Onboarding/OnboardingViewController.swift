//
//  OnboardingViewController.swift
//  TwitterClone
//
//  Created by ROHIT DAS on 22/02/23.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    private let welcomeLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "See whats happening in the world right now."
        label.textColor = .label
        label.font = .systemFont(ofSize: 32, weight : .heavy)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
        
    }()
    
    private let createAccountButton : UIButton = {
        let button =  UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Create account", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 24, weight: .bold)
        button.backgroundColor = UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1)
        button.layer.masksToBounds = true
        button.tintColor = .white
        button.layer.cornerRadius = 30
        return button
        
    }()
    
    private let promptLabel : UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label .text = "Already have an account?"
        label.tintColor = .systemGray
        label.font = .systemFont(ofSize: 14, weight: .regular)
        return label
    }()
    
    private let loginButton : UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Login", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.tintColor = UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(welcomeLabel)
        view.addSubview(createAccountButton)
        view.addSubview(promptLabel)
        view.addSubview(loginButton)
        
        createAccountButton.addTarget(self, action: #selector(didTapCreateAccount), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(didTapLogin), for: .touchUpInside)
       
        
        configureConstraints()
       
    }
    @objc private func didTapLogin(){
        let vc = LoginViewController()
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc private func didTapCreateAccount(){
        let vc = RegisterViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    private func configureConstraints(){
        let welcomeLabelConstraints = [
            
            welcomeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            welcomeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            welcomeLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ]
        let createAccountButtonConstraints = [
            createAccountButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAccountButton.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
            createAccountButton.widthAnchor.constraint(equalTo: welcomeLabel.widthAnchor,constant: -20),
            createAccountButton.heightAnchor.constraint(equalToConstant: 60)
            
        
        ]
        let promptLabelConstraints = [
            promptLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            promptLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -60),
        
        ]
        let loginButtonConstraints = [
            loginButton.centerYAnchor.constraint(equalTo: promptLabel.centerYAnchor),
            loginButton.leadingAnchor.constraint(equalTo: promptLabel.trailingAnchor,constant: 10)
        
        ]
        
        
        NSLayoutConstraint.activate(welcomeLabelConstraints)
        NSLayoutConstraint.activate(createAccountButtonConstraints)
        NSLayoutConstraint.activate(promptLabelConstraints)
        NSLayoutConstraint.activate(loginButtonConstraints)
    }
}
