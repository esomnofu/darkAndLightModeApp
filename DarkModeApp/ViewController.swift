//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Malik on 22/01/2020.
//  Copyright © 2020 MrOfu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let avatarImage : UIImageView = {
       let imgV = UIImageView()
        imgV.image = #imageLiteral(resourceName: "avatar_one")
        imgV.clipsToBounds = true
       return imgV
    }()
    
    let usernameLabel : UILabel = {
       let label = UILabel()
        label.text = "Enter your username"
        label.textColor = UIColor.label
       return label
    }()

    let passwordLabel : UILabel = {
        let label = UILabel()
        label.text = "Enter your password"
        label.textColor = UIColor.label
        return label
     }()
    
    let usernameTextField : UITextField = {
       let tf = UITextField()
       tf.placeholder = "John Doe"
       tf.borderStyle = .roundedRect
       tf.textColor = UIColor.label
       tf.text = "John"
       return tf
    }()
    
    let passwordTextField : UITextField = {
         let tf = UITextField()
         tf.placeholder = "**************"
         tf.borderStyle = .roundedRect
         tf.textColor = UIColor.label
         tf.text = "Wick"
         return tf
    }()
    
    let loginButton : UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Login Account", for: .normal)
        btn.tintColor = UIColor.label
        btn.backgroundColor = UIColor(named: "mintGold")
        btn.layer.cornerRadius = 5
        btn.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        return btn
    }()
    
    
    @objc func handleLogin(){
        let profileViewController = ProfileViewController()
        let navController = UINavigationController(rootViewController: profileViewController)
        self.present(navController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        view.backgroundColor = UIColor.systemBackground
        setupUIElements()
            //add noty observer
//            NotificationCenter.default.addObserver(self, selector: #selector(refreshAppMode), name: .refreshApp, object: nil)
        }
        
//        @objc func refreshAppMode(){
//            overrideUserInterfaceStyle = (THEME_MODE ? .dark : .light)
//        }
    
    func setupUIElements() {
        let imageWidth : CGFloat = 200
        
        view.addSubview(avatarImage)
        avatarImage.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 50, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: imageWidth, width: imageWidth)
        avatarImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        avatarImage.layer.cornerRadius = imageWidth/2
        
        view.addSubview(usernameLabel)
        usernameLabel.anchor(top: avatarImage.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 30, paddingBottom: 0, paddingRight: 0, height: 40, width: 0)
        
        view.addSubview(usernameTextField)
        usernameTextField.anchor(top: usernameLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 30, paddingBottom: 0, paddingRight: 30, height: 50, width: 0)
        
        view.addSubview(passwordLabel)
        passwordLabel.anchor(top: usernameTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: nil, paddingTop: 20, paddingLeft: 30, paddingBottom: 0, paddingRight: 0, height: 40, width: 0)
        
        view.addSubview(passwordTextField)
        passwordTextField.anchor(top: passwordLabel.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 5, paddingLeft: 30, paddingBottom: 0, paddingRight: 30, height: 50, width: 0)
        
        view.addSubview(loginButton)
        loginButton.anchor(top: passwordTextField.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 30, paddingLeft: 50, paddingBottom: 0, paddingRight: 50, height: 50, width: 0)
    }


}
