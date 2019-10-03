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
    
    var targetNumber = Int.random(in: 1...100)
    
    
    
    @IBOutlet weak var submittedGuess: UITextField!
    
    // MARK: Initializers
    
    // MARK: Methods (functions) --- behaviours
    func speak(this feedback:String) {
        let synthesizer = AVSpeechSynthesizer()
        
        // Make an object named 'utterance', which is an instance of the class
        // AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: feedback)
        
        // Speak the message
        synthesizer.speak(utterance)
        // Report the target number to the console for testing purposes
        print ("For testing purposes, the random number made was \(targetNumber)")
        
    }
    
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
        // Report the target number to the console for testing purposes
        print ("For testing purposes, the random number made was \(targetNumber)")
        
        
    }
    
    
    // This function will be used to track the guess.
    @IBAction func checkGuess(_ sender: Any) {
        
        //obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        
        // For testing purposes, what was the guess?
        print ("For testing purposes, the guess made was \(guessNumber)")
        
        // Give the appropriate feedback to the user
        if guessNumber > targetNumber {
            print ("Guess lower next time")
            speak(this: "Guess lower next time")
        }
        else if guessNumber < targetNumber {
            print ("Guess higher next time")
            speak(this: "Guess higher next time")
        } else {
            print ("You are correct!")
            speak(this: "You are correct!")
            
        }
    }
    
    
    @IBAction func newGame(_ sender: Any) {
        print("starting a new game")
        
        targetNumber = Int.random(in: 1...100)
        submittedGuess.text = ""
        speak(this: "I'm thinking of another number, guess what it is")
        print ("For testing purposes, the guess made was \(targetNumber)")
    }
    
}
