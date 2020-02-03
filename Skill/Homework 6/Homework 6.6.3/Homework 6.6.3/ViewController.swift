//
//  ViewController.swift
//  Homework 6.6.3
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

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var numberOne: UITextField!
    @IBOutlet weak var operatorForCalc: UITextField!
    @IBOutlet weak var numberTwo: UITextField!
    @IBAction func calculationButton(_ sender: Any) {
        let operators: Optional = (plus: "+", minus: "-", division: "/", multiple: "*")
        if Int(numberOne.text!) != nil && Int(numberTwo.text!) != nil && operators != nil{
            switch operatorForCalc.text! {
            case operators!.plus:
                resultLabel.text = String(Int(numberOne.text!)! + Int(numberTwo.text!)!)
            case operators!.minus:
                resultLabel.text = String(Int(numberOne.text!)! - Int(numberTwo.text!)!)
            case operators!.division:
                resultLabel.text = String(Double(Int(numberOne.text!)!) / Double(Int(numberTwo.text!)!))
            case operators!.multiple:
                resultLabel.text = String(Int(numberOne.text!)! * Int(numberTwo.text!)!)
            default:
                resultLabel.text = "Некорректные данные"
            }
        } else {
            resultLabel.text = "Некорректные данные"
        }
    }
}

