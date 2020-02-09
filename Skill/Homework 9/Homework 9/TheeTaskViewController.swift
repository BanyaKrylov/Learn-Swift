//
//  TheeTaskViewController.swift
//  Homework 9
//
//  Created by Ivan Krylov on 06.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class TheeTaskViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    @IBOutlet weak var pressButton: UIButton!
    var countPressButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeButton(_ sender: Any) {
        countPressButton += 1
        
        if countPressButton % 2 == 0 {
            heightConstraint.constant = 20
        } else if countPressButton % 3 == 0 {
        heightConstraint.constant += 121
        view.layoutIfNeeded()
        } else {
            heightConstraint.constant += 21
            view.layoutIfNeeded()
        }
        
        if countPressButton == 4 {
            countPressButton = 0
        }
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
