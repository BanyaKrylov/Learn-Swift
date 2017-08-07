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
    
    @IBAction func redButton(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        labelWithText.text = "Label с текстом"
    }
    
    @IBAction func greenButton(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 0.09260075366, green: 1, blue: 0, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        labelWithText.text = "Label с текстом"
    }
    
    @IBAction func blueButton(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 0, green: 0.1164794731, blue: 1, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        labelWithText.text = "Label с текстом"
    }
    
    @IBAction func redText(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)
        labelWithText.text = "Red label"
    }
    
    @IBAction func greenText(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 0.09260075366, green: 1, blue: 0, alpha: 1)
        labelWithText.text = "Green label"
    }
    
    @IBAction func blueText(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 0, green: 0.1164794731, blue: 1, alpha: 1)
        labelWithText.text = "Blue label"
    }
    
    @IBAction func defaultSettings(_ sender: Any) {
        labelWithText.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        labelWithText.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        labelWithText.text = "Label с текстом"
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

