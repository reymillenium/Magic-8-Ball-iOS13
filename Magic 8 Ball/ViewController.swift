//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    // Sound variables:
    var soundFileURLRef: NSURL!
    var player: AVAudioPlayer?
    
    // Interface Builder Outlets (IB Outlets):
    @IBOutlet weak var ball8ImageView: UIImageView!
    
    // Global constants:
    let ballArray = [#imageLiteral(resourceName: "ball1.png"),#imageLiteral(resourceName: "ball2.png"),#imageLiteral(resourceName: "ball3.png"),#imageLiteral(resourceName: "ball4.png"),#imageLiteral(resourceName: "ball5.png")]
    

    // It gest executed when the view loads (after the first show up)
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Prepares the sound:
        let tapSound = Bundle.main.url(forResource: "TinyButtonPush", withExtension: "mp3")
        
        
        
        self.soundFileURLRef = tapSound as NSURL?
                do {
                    player = try AVAudioPlayer(contentsOf: soundFileURLRef as URL)
                } catch _ {
                    player = nil
                }
                player?.delegate = self
                player?.prepareToPlay()
    }
        
    
    // Interface Builder Actions (IB Actions):
    @IBAction func buttonAsk(_ sender: UIButton) {
        // NSLog("started playing")
        // Plays a click sound
        if ((player?.isPlaying) != nil) {
            player?.pause()
            player?.currentTime = 0;
        }
         player?.play()
        
        // Animation that shows an array of images in a loop during 1 second:
        self.ball8ImageView.animationImages = ballArray
        self.ball8ImageView.animationDuration = 1.0
        self.ball8ImageView.animationRepeatCount = 1
        self.ball8ImageView.startAnimating()
        // Shows a random image from the array of images
        ball8ImageView.image = ballArray.randomElement()
    }
}
