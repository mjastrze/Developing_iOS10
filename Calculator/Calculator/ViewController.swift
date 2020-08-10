//
//  ViewController.swift
//  Calculator
//
//  Created by Maciej Jastrzębski on 8/9/20.
//  Copyright © 2020 SKY.NET. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDislay = display.text!
            display.text = textCurrentlyInDislay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    private var brain = CalculatorBrain()
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let mathSymbol = sender.currentTitle {
            brain.performOperation(mathSymbol)
        }
        
        if let result = brain.result {
            displayValue = result
        }
    }
}
