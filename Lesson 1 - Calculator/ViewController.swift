//
//  ViewController.swift
//  Lesson 1 - Calculator
//
//  Created by Феликс on 29.09.2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func plus(_ sender: Any) {
        guard let firstNumber = Int(firstNumber.text!), let secondNumber = Int(
            secondNumber.text!) else {
            result.text = "Введите 2 числа"
            return
        }
        
        result.text = "\(firstNumber + secondNumber)"
    }
    
    @IBAction func minus(_ sender: Any) {
        guard let firstNumber = Int(firstNumber.text!), let secondNumber = Int(
            secondNumber.text!) else {
            result.text = "Введите 2 числа"
            return
        }
        
        result.text = "\(firstNumber - secondNumber)"
    }

    @IBAction func devide(_ sender: Any) {
        guard let firstNumber = Int(firstNumber.text!), let secondNumber = Int(
            secondNumber.text!) else {
            result.text = "Введите 2 числа"
            return
        }
        
        if secondNumber == 0 {
            result.text = "На ноль делить нельзя!"
            return
        }
            // исправление ошибки, происходил сложение, а не деление 
        result.text = "\(firstNumber / secondNumber)"
    }
    
    @IBAction func multiply(_ sender: Any) {
        guard let firstNumber = Int(firstNumber.text!), let secondNumber = Int(
            secondNumber.text!) else {
            result.text = "Введите 2 числа"
            return
        }
        
        result.text = "\(firstNumber * secondNumber)"
    }
    
    
    
}

