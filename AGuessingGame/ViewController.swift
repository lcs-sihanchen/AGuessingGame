//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Chen, Sihan on 2019-09-30.
//  Copyright © 2019 Chen, Sihan. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    // MARK: Properties
    
    // MARK: Initializers
    
    // MARK: Methods (functions) --- behaviours
    
    // viewDidLoad runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Make an object named 'synthesizer', which is an instance of the
        // class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        
      
        // Make a string that contains what we want the computer to say
        let message = "I am thinking of a number between 1 and 100. Guess what it is."
        
        
        // Make an object named 'utterance', which is an instance of the class
        // AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        // Speak the message
        synthesizer.speak(utterance)
        
    }


}

