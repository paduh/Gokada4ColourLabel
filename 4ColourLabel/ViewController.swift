//
//  ViewController.swift
//  4ColourLabel
//
//  Created by Perfect Aduh on 01/03/2018.
//  Copyright © 2018 Perfect Aduh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var screenSize: CGRect!
    var screenWidth: CGFloat!
    var screenHeight: CGFloat!
    
    var blueLabel:UILabel!
    var yellowLabel:UILabel!
    var greenLabel:UILabel!
    var redLabel:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.black
        
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize.width
        screenHeight = screenSize.height
        
        blueLabel = UILabel()
        yellowLabel = UILabel()
        greenLabel = UILabel()
        redLabel = UILabel()
        
        setupLabel()
        setupLabelConstraint()
        
    }
    
    func setupLabel() {
        
        blueLabel.frame = CGRect(x: 0, y: 200, width: (self.screenWidth / 2) - 2, height: (self.screenHeight / 2) - 5)
        blueLabel.textAlignment = .center
        blueLabel.text = "Blue"
        blueLabel.numberOfLines=1
        blueLabel.textColor=UIColor.white
        blueLabel.font=UIFont.systemFont(ofSize: 40)
        blueLabel.backgroundColor=UIColor.blue
        
        
        yellowLabel.frame = CGRect(x: 100, y: 100, width: (self.screenWidth / 2) - 2, height: (self.screenHeight / 2) - 5)
        yellowLabel.textAlignment = .center
        yellowLabel.text = "Yellow"
        yellowLabel.numberOfLines=1
        yellowLabel.textColor=UIColor.white
        yellowLabel.font=UIFont.systemFont(ofSize: 40)
        yellowLabel.backgroundColor=UIColor.yellow
        
        
        greenLabel.frame = CGRect(x: 100, y: 100, width: (self.screenWidth / 2) - 2, height: (self.screenHeight / 2) - 5)
        greenLabel.textAlignment = .center
        greenLabel.text = "Green"
        greenLabel.numberOfLines=1
        greenLabel.textColor=UIColor.white
        greenLabel.font=UIFont.systemFont(ofSize: 40)
        greenLabel.backgroundColor=UIColor.green
        
        
        redLabel.frame = CGRect(x: 100, y: 100, width: (self.screenWidth / 2) - 2, height: (self.screenHeight / 2) - 5)
        redLabel.textAlignment = .center
        redLabel.text = "Red"
        redLabel.numberOfLines=1
        redLabel.textColor=UIColor.white
        redLabel.font=UIFont.systemFont(ofSize: 40)
        redLabel.backgroundColor=UIColor.red
    }
    
    func setupLabelConstraint() {
        self.view.addSubview(blueLabel)
        blueLabel.translatesAutoresizingMaskIntoConstraints = false
        blueLabel.heightAnchor.constraint(equalToConstant: (screenHeight / 2) - 5).isActive = true
        blueLabel.widthAnchor.constraint(equalToConstant: (screenWidth / 2) - 2).isActive = true
        blueLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        blueLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        
        self.view.addSubview(yellowLabel)
        yellowLabel.translatesAutoresizingMaskIntoConstraints = false
        yellowLabel.heightAnchor.constraint(equalToConstant: (screenHeight / 2) - 5).isActive = true
        yellowLabel.widthAnchor.constraint(equalToConstant: (screenWidth / 2) - 2).isActive = true
        yellowLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        yellowLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        
        self.view.addSubview(greenLabel)
        greenLabel.translatesAutoresizingMaskIntoConstraints = false
        greenLabel.heightAnchor.constraint(equalToConstant: (screenHeight / 2) - 5).isActive = true
        greenLabel.widthAnchor.constraint(equalToConstant: (screenWidth / 2) - 2).isActive = true
        greenLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        greenLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 20).isActive = true
        
        self.view.addSubview(redLabel)
        redLabel.translatesAutoresizingMaskIntoConstraints = false
        redLabel.heightAnchor.constraint(equalToConstant: (screenHeight / 2) - 5).isActive = true
        redLabel.widthAnchor.constraint(equalToConstant: (screenWidth / 2) - 2).isActive = true
        redLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        redLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
    }

}
