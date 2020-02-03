//
//  ViewController.swift
//  Homework 6.6.1
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

    @IBOutlet weak var nameTextField: UITextField!
    
    var text: [String] = []
    var totalString = ""
    
    @IBAction func valueToLabel(_ sender: Any) {
        text.insert("\(nameTextField.text!) ", at: 0)
        for i in text  {
            totalString += i
        }
        label.text! = totalString
    }
}

