//
//  ProfileViewController.swift
//  DarkModeApp
//
//  Created by Malik on 23/01/2020.
//  Copyright © 2020 MrOfu. All rights reserved.
//

import UIKit

class ProfileViewController : UIViewController {

    let avatarImage : UIImageView = {
       let imgV = UIImageView()
        imgV.image = #imageLiteral(resourceName: "johnWick")
        imgV.clipsToBounds = true
       return imgV
    }()
    
    let fullnameLabel : UILabel = {
       let label = UILabel()
        label.text = "Agent Name: Jonathan Wick"
        label.textColor = UIColor.label
       return label
    }()
    
    let roleLabel : UILabel = {
       let label = UILabel()
        label.text = "Agent Status: Retired"
        label.textColor = UIColor.label
       return label
    }()
    
    let chapterLabel : UILabel = {
       let label = UILabel()
        label.text = "Movie Chapter: Chapter 3 (III)"
        label.textColor = UIColor.label
       return label
    }()
    
    let switchText : UILabel = {
        let label = UILabel()
        label.text = "Switch Your Career Mode: "
        label.textColor = UIColor.label
        return label
    }()
    
//    let modeSwitcherBtn : UISwitch = {
//       let switchBtn = UISwitch()
//       switchBtn.isOn = false
//       switchBtn.addTarget(self, action: #selector(handleSwitchMode), for: .valueChanged)
//       return switchBtn
//    }()
    
    @objc func handleSwitchMode(){
//        THEME_MODE = !THEME_MODE
//        NotificationCenter.default.post(name: .refreshApp, object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground
        setupUIElements()
        navigationItem.titleView = navbarTitle(title: "My Profile")
        colorNavigationBar(navigationController: self.navigationController)
        
        //add noty observer
//        NotificationCenter.default.addObserver(self, selector: #selector(refreshAppMode), name: .refreshApp, object: nil)
    }
    
//    @objc func refreshAppMode(){
//        overrideUserInterfaceStyle = (THEME_MODE ? .dark : .light)
//    }
    
    func setupUIElements() {
        
        let imageWidth : CGFloat = 250
        
        view.addSubview(avatarImage)
        avatarImage.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: imageWidth, width: imageWidth)
        avatarImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        avatarImage.layer.cornerRadius = imageWidth/2
        
        view.addSubview(fullnameLabel)
        fullnameLabel.anchor(top: avatarImage.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 30, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 40, width: 0)
        fullnameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(roleLabel)
        roleLabel.anchor(top: fullnameLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 40, width: 0)
        (roleLabel).centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(chapterLabel)
        chapterLabel.anchor(top: roleLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 40, width: 0)
        chapterLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(switchText)
        switchText.anchor(top: chapterLabel.bottomAnchor, left: nil, bottom: nil, right: nil, paddingTop: 15, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, height: 40, width: 0)
        switchText.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        view.addSubview(modeSwitcherBtn)
//        modeSwitcherBtn.anchor(top: nil, left: switchText.rightAnchor, bottom: nil, right: nil, paddingTop: 0, paddingLeft: 10, paddingBottom: 0, paddingRight: 0, height: 50, width: 50)
//        modeSwitcherBtn.centerYAnchor.constraint(equalTo: switchText.centerYAnchor, constant: 10).isActive = true
    }
    
}
