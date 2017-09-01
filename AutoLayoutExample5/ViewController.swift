//
//  ViewController.swift
//  AutoLayoutExample5
//
//  Created by Amy on 31/08/17.
//  Copyright © 2017 Amy Martika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let orangeView = UIView()
    let purpleView = UIView()
    let blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        orangeView.backgroundColor = UIColor(red: 255/255.0, green: 148/255.0, blue: 0/255.0, alpha: 1.0)
        view.addSubview(orangeView)
        
        
        purpleView.backgroundColor = UIColor(red: 204/255.0, green: 102/255.0, blue: 255/255.0, alpha: 1.0)
        view.addSubview(purpleView)
        
        blueView.backgroundColor = UIColor(red: 102/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1.0)
        view.addSubview(blueView)
    }
    
    override func viewWillLayoutSubviews() {
        setupOrangeViewConstraints()
        setupPurpleViewConstraints()
        setupBlueViewConstraints()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupOrangeViewConstraints() {
        orangeView.translatesAutoresizingMaskIntoConstraints = false
        
        orangeView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        orangeView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -50.0)
        orangeView.heightAnchor.constraint(equalToConstant: 57.0)
        orangeView.widthAnchor.constraint(equalToConstant: 200.0)
        
        NSLayoutConstraint.activate([
            orangeView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orangeView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -50.0),
            orangeView.heightAnchor.constraint(equalToConstant: 57.0),
            orangeView.widthAnchor.constraint(equalToConstant: 200.0)
            ])
    }
    
    func setupPurpleViewConstraints() {
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        
        purpleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0)
        purpleView.bottomAnchor.constraint(equalTo: orangeView.topAnchor, constant: -8.0)
        purpleView.trailingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: -8.0)
        purpleView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0)
        
        NSLayoutConstraint.activate([
            purpleView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8.0),
            purpleView.bottomAnchor.constraint(equalTo: orangeView.topAnchor, constant: -8.0),
            purpleView.trailingAnchor.constraint(equalTo: blueView.leadingAnchor, constant: -8.0),
            purpleView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0)])
    }
    
    func setupBlueViewConstraints() {
        
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        blueView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0)
        blueView.bottomAnchor.constraint(equalTo: orangeView.topAnchor, constant: -8.0)
        blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0)
        blueView.widthAnchor.constraint(equalTo: purpleView.widthAnchor)
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: self.topLayoutGuide.bottomAnchor, constant: 8.0),
            blueView.bottomAnchor.constraint(equalTo: orangeView.topAnchor, constant: -8.0),
            blueView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8.0),
            blueView.widthAnchor.constraint(equalTo: purpleView.widthAnchor)])
    }

}
