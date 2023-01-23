//
//  ViewController.swift
//  VocalTextEdit
//
//  Created by Adam Palmer on 23/01/2023.
//

import Cocoa

class ViewController: NSViewController {
    
    let speechSynthesizer = NSSpeechSynthesizer()
    
    @IBOutlet var textView: NSTextView!
    
    var contents: String? {
        get {
            return textView.string
        }
        set {
            textView.string = newValue!
        }
    }
    
    @IBAction func speakButtonPressed(_ sender: NSButton) {
        let contents = textView.string

        if !contents.isEmpty {
            speechSynthesizer.startSpeaking(contents)
        } else {
            speechSynthesizer.startSpeaking("The document is empty")
        }
    }
    
    @IBAction func stopButtonPressed(_ sender: NSButton) {
        speechSynthesizer.stopSpeaking()
    }

}

