//
//  ViewController.swift
//  AppTasks1
//
//  Created by Иван Крылов on 07.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//
//задание 3
//Создать проект, в котором будет Label с текстом и несколько кнопок с надписями "красный", "синий" и так далее
//По нажатию на эти кнопки задний фон лейбла должен меняться на указанный цвет

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelWithText: UILabel!
    
    @IBAction func allButtons(_ sender: UIButton) {
        labelWithText.backgroundColor = sender.backgroundColor
        labelWithText.text = sender.titleLabel?.text
        labelWithText.textColor = sender.titleLabel?.textColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

