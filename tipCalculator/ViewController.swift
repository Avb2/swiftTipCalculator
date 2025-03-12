//
//  ViewController.swift
//  tipCalculator
//
//  Created by Alex Bringuel on 3/11/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    @IBAction func fifteenPBtn(_ sender: UIButton) {
        let input = Double(inputTxt.text ?? "0")
        
        let total = (input ?? 0) * 0.15 + (input ?? 0)
        
        outputLabel.text = "Subtotal: $\(String(format: "%.2f", input ?? "0.00"))    Total: $\(String(format: "%.2f", total))"


    }
    
    @IBAction func eighteenPBtn(_ sender: UIButton) {
        let input = Double(inputTxt.text ?? "0")
        
        let total = (input ?? 0) * 0.18 + (input ?? 0)
        
        outputLabel.text = "Subtotal: $\(String(format: "%.2f", input ?? "0.00"))    Total: $\(String(format: "%.2f", total))"
    }
    
    @IBAction func twentyPBtn(_ sender: UIButton) {
        let input = Double(inputTxt.text ?? "0")
        
        let total = (input ?? 0) * 0.2 + (input ?? 0)
        
        outputLabel.text = "Subtotal: $\(String(format: "%.2f", input ?? "0.00"))    Total: $\(String(format: "%.2f", total))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UIGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        inputTxt.clearsOnBeginEditing = true
        
    }
    
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    

    
}

