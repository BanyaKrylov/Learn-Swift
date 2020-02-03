//
//  ViewController.swift
//  Homework 6.6.2
//
//  Created by Ivan Krylov on 03.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var numTextField: UITextField!
    
    @IBAction func powCalculation(_ sender: Any) {
        if Int(numTextField.text!) != nil {
            label.text = String(pow(Double(Int(numTextField.text!)!), 2))
        } else {
            label.text = "Введите целое число в строку"
        }
    }
}


