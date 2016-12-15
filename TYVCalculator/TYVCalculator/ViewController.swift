//
//  ViewController.swift
//  TYVCalculator
//
//  Created by Юрій on 15.12.16.
//  Copyright © 2016 Yurii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        let currentDisplayText = display.text!
        if userIsInTheMiddleOfTyping {
            display.text = currentDisplayText + digit
        } else {
            display.text = digit
        }
        
        userIsInTheMiddleOfTyping = true
    }

    @IBAction func performOperation(sender: UIButton) {
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "⍴" {
                display.text = String(M_PI)
            }
        }
        
        userIsInTheMiddleOfTyping = false
    }
}

