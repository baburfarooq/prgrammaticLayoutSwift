//
//  ViewController.swift
//  prgrammaticLayoutSwift
//
//  Created by Babur Farooq on 5/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    let background = UIView()
    let label = UILabel()
    let textview = UITextView()
    let button = UIButton()
    let checkMarkImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.init(red: 179/255, green: 27/255, blue: 27/255, alpha: 1)
        
        views()
        constraints()
    }
    
    func views(){
        
        //White BackGround
        background.backgroundColor = .white
        background.translatesAutoresizingMaskIntoConstraints = false
        background.layer.cornerRadius = 30
        view.addSubview(background)
        
        // Title Label
        label.text = "Check In"
        label.font = UIFont.systemFont(ofSize: 48)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        
        // Text View
        textview.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
        textview.font = UIFont.systemFont(ofSize: 16)
        textview.backgroundColor = .white
        textview.textColor = .black
        textview.textAlignment = .center
        textview.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textview)
        
        // Button
        button.backgroundColor = UIColor.init(red: 59/255, green: 102/255, blue: 139/255, alpha: 1)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Press Here",for: .normal)
        button.layer.cornerRadius = 20
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        view.addSubview(button)
        
        // Check Mark Image
        checkMarkImage.isHidden = true
        checkMarkImage.image = UIImage(named: "pxArt")
        checkMarkImage.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(checkMarkImage)
    }
    
    func constraints() {
        
        //White BackGround constraints
        
        NSLayoutConstraint.activate([
            background.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            background.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 27),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27)
        ])
        
        // Title Label Constraints
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: background.topAnchor, constant: 20),
            label.centerXAnchor.constraint(equalTo: background.centerXAnchor)
        ])
        
        // Text View constraints
        NSLayoutConstraint.activate([
            textview.centerXAnchor.constraint(equalTo: background.centerXAnchor),
            textview.centerYAnchor.constraint(equalTo: background.centerYAnchor),
            textview.widthAnchor.constraint(equalToConstant: 300),
            textview.heightAnchor.constraint(equalToConstant: 125)

        ])
        
        // Button Constraints
        NSLayoutConstraint.activate([
            button.bottomAnchor.constraint(equalTo: background.bottomAnchor, constant: -20),
            button.leadingAnchor.constraint(equalTo: background.leadingAnchor, constant: 70),
            button.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -70),
            button.heightAnchor.constraint(equalToConstant: 46)
        ])
        
        // CheckMark Image Constraints
        NSLayoutConstraint.activate([
            checkMarkImage.topAnchor.constraint(equalTo: background.topAnchor, constant: 20),
            checkMarkImage.trailingAnchor.constraint(equalTo: background.trailingAnchor, constant: -20)

        ])
        
    }
    
    @objc func pressedButton(){
        checkMarkImage.isHidden = false
        textview.backgroundColor = .clear
        background.backgroundColor = UIColor.init(red: 244/255, green: 250/255, blue: 240/255, alpha: 1)
    }
}

