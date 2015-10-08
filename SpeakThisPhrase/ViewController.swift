//
//  ViewController.swift
//  SpeakThisPhrase
//
//  Created by YG on 10/2/15.
//  Copyright (c) 2015 YuryG. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    @IBOutlet weak var usersText: UITextView!

    //  ViewController Class-Wide Variables
    let mySpeechSynth = AVSpeechSynthesizer()
    
    
    @IBAction func speekThisPressed(sender: UIButton) {

        let myUtterance = AVSpeechUtterance(string: "Yes, lets go.  Great idea.")
        myUtterance.rate = 0.35
        myUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        mySpeechSynth.speakUtterance(myUtterance)
    }
    
    @IBAction func numberButtonPressed(sender: UIButton) {
        if let myString = sender.titleLabel?.text {
            speakThisPhrase(myString)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
        // Basic Speaking Code.
        let myUtterance = AVSpeechUtterance(string: "Hey mate. Let's go walk-about.")
        myUtterance.voice = AVSpeechSynthesisVoice(language: "en-AU")
        mySpeechSynth.speakUtterance(myUtterance)
    }
    
    
    // Pass a String, This Function Speaks it.
    func speakThisPhrase(passedString: String){

        let myUtterance = AVSpeechUtterance(string: passedString)
        myUtterance.rate = 0.35
        myUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        mySpeechSynth.speakUtterance(myUtterance)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

