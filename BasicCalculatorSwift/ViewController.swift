	//
//  ViewController.swift
//  BasicCalculatorSwift
//
//  Created by ahmetburakozturk on 2.04.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputFirst: UITextField!
    
    @IBOutlet weak var inputSecond: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var firstValue : Double?
    var secondValue : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumButtonDidTap(_ sender: Any) {
        if let firstInput : Double = Double(inputFirst.text!) {
                    firstValue = firstInput
                    if let secondInput : Double = Double(inputSecond.text!) {
                        secondValue = secondInput
                    } else {
                        resultLabel.text = "Please enter a valid input!"
                    }
                } else {
                    resultLabel.text = "Please enter a valid input!"
                }
                if firstValue != nil && secondValue != nil {
                    resultLabel.text = "Result: " + String(firstValue! + secondValue!)
                }
    }
    
    @IBAction func decriseButtonDidTap(_ sender: Any) {
        if let firstInput : Double = Double(inputFirst.text!) {
                   firstValue = firstInput
                   if let secondInput : Double = Double(inputSecond.text!) {
                       secondValue = secondInput
                   } else {
                       resultLabel.text = "Please enter a valid input!"
                   }
               } else {
                   resultLabel.text = "Please enter a valid input!"
               }
               if firstValue != nil && secondValue != nil {
                   resultLabel.text = "Result: " + String(firstValue! - secondValue!)
               }
    }
    
    @IBAction func multiplyButtonDidTap(_ sender: Any) {
        if let firstInput : Double = Double(inputFirst.text!) {
                    firstValue = firstInput
                    if let secondInput : Double = Double(inputSecond.text!) {
                        secondValue = secondInput
                    } else {
                        resultLabel.text = "Please enter a valid input!"
                    }
                } else {
                    resultLabel.text = "Please enter a valid input!"
                }
                if firstValue != nil && secondValue != nil && (firstValue != 0 || secondValue != 0){
                    resultLabel.text = "Result: " + String(firstValue! * secondValue!)
                } else {
                    resultLabel.text = "Invalid Operation!"
                }
    }
    
    @IBAction func devineButtonDidTap(_ sender: Any) {
        if let firstInput : Double = Double(inputFirst.text!) {
                    firstValue = firstInput
                    if let secondInput : Double = Double(inputSecond.text!) {
                        secondValue = secondInput
                    } else {
                        resultLabel.text = "Please enter a valid input!"
                    }
                } else {
                    resultLabel.text = "Please enter a valid input!"
                }
                if firstValue != nil && secondValue != nil  &&  secondValue != 0{
                    resultLabel.text = "Result: " + String(firstValue! / secondValue!)
                } else {
                    resultLabel.text = "Invalid Operation!"
                }

    }
}

