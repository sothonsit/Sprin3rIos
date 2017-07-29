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
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: false)
        
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

    @IBAction func nextViewControolerButtonClicked(_ sender: Any) {
        //Get Storyboard from name
        let storyboard = UIStoryboard(name:"CalculatorResult",bundle:nil)
        
        //Get ViewController from storyboard by identity name
//        let vc = storyBoard.instantiateViewController(withIdentifier: "CalculatorResultViewController")
        
        //Get ViewController from storyboard by intialViewController
        let vc = storyboard.instantiateInitialViewController()!
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

