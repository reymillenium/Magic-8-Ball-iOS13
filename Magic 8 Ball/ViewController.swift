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

    // It gest executed when the view loads (after the first show up)
    override func viewDidLoad() {
        super.viewDidLoad()
                        
    }
    
    // Interface Builder Actions (IB Actions):
    @IBAction func buttonAsk(_ sender: UIButton) {
        // Generates an animation that shows an array of images in a loop, during 1 second
        self.ball8ImageView.animationImages = ballArray
        self.ball8ImageView.animationDuration = 1.0
        self.ball8ImageView.animationRepeatCount = 1
        self.ball8ImageView.startAnimating()
        // Shows a random image from the array of images
        ball8ImageView.image = ballArray.randomElement()
    }
    
//    extension UIViewController {
//        func centerComponent(_ component: AnyObject) {
//            let customView = component as! UIView
//            customView.center.x = self.view.frame.midX
//            customView.center.y = self.view.frame.midY
//        }
//    }
    
}
