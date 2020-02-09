//
//  TwoTaskViewController.swift
//  Homework 9
//
//  Created by Ivan Krylov on 06.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class TwoTaskViewController: UIViewController {

    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func leftButton(_ sender: Any) {
        leftLabel.text! += "Label left"
    }
    @IBAction func rightLabel(_ sender: Any) {
        rightLabel.text! += "Label right"
    }
    @IBAction func cleanButton(_ sender: Any) {
        leftLabel.text! = "Left"
        rightLabel.text! = "Right"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
