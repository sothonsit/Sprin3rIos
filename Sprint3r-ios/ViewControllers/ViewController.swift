//
//  ViewController.swift
//  Sprint3r-ios
//
//  Created by Jester No'Future on 7/29/17.
//  Copyright © 2017 Jester No'Future. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftOperandTextField: UITextField!
    @IBOutlet weak var rightOperandTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func calulateButtonClicked(_ sender: UIButton) {
        let leftOperand = self.leftOperandTextField.text ?? "0"
        let rightOperand = self.rightOperandTextField.text ?? "0"
        let left = Int(leftOperand) ?? 0
        let right = Int(rightOperand) ?? 0
        
        self.resultLabel.text = String(left + right)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

