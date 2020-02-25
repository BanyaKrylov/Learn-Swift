//
//  UserDeafultsVC.swift
//  Homework 14
//
//  Created by Ivan Krylov on 25.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class UserDeafultsVC: UIViewController {
    
    @IBAction func nameLabel(_ sender: UITextField) {
        UserDefaultsPers.shared.userName = sender.text
    }
    @IBAction func surnameLabel(_ sender: UITextField) {
        UserDefaultsPers.shared.userSurname = sender.text
    }
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surnameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaultsPers.shared.userName != nil {
            nameTextField.text! = UserDefaultsPers.shared.userName!
        }
        if UserDefaultsPers.shared.userSurname != nil {
            surnameTextField.text! = UserDefaultsPers.shared.userSurname!
        }
    }
    
}
