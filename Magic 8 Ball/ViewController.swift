//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Interface Builder Outlets (IB Outlets):
    @IBOutlet weak var ball8ImageView: UIImageView!
    
    // Global constants:
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]

    // Interface Builder Actions (IB Actions):
    @IBAction func buttonAsk(_ sender: UIButton) {
        ball8ImageView.image = ballArray.randomElement()
    }
    
}

