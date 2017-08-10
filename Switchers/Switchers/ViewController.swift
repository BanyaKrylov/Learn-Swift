//
//  ViewController.swift
//  Switchers
//
//  Created by Иван Крылов on 09.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result = 0
    var randomTask = 0
    
    @IBOutlet weak var task: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    @IBOutlet weak var switch8: UISwitch!
    @IBOutlet weak var switch16: UISwitch!
    
    // Рандомайзер
    func generateRandomNum(){
        randomTask = Int(arc4random_uniform(32))
    }
    
    // Задание
    func getTasks() {
        task.text = "Set binary number = \(randomTask)"
    }
    
    // Проверка и вывод результата
    func checkResult() {
        if result == randomTask {
            task.text = "You win!"
            result = 0
        } else {
            task.text = "Game over"
            result = 0
        }
    }
    
    // Управление перелкючателями + подсчет промежуточного рузультата
    func switchDriver(sender: UISwitch, switcher: UISwitch, num: Int) {
        if sender.isOn {
            switcher.onImage = #imageLiteral(resourceName: "switch")
            switcher.setOn(true, animated: true)
            result += num
        } else {
            switcher.offImage = #imageLiteral(resourceName: "switch")
            switcher.setOn(false, animated: true)
            result -= num
        }
    }
    
    @IBAction func startGame(_ sender: UIButton) {
        generateRandomNum()
        getTasks()
        switch1.setOn(false, animated: true)
        switch2.setOn(false, animated: true)
        switch4.setOn(false, animated: true)
        switch8.setOn(false, animated: true)
        switch16.setOn(false, animated: true)
    }
    
    @IBAction func stopGame(_ sender: UIButton) {
        checkResult()
    }
    
    @IBAction func switch1(_ sender: UISwitch) {
        switchDriver(sender: sender, switcher: switch1, num: 1)
    }
    
    @IBAction func switch2(_ sender: UISwitch) {
        switchDriver(sender: sender, switcher: switch2, num: 2)
    }
    @IBAction func switch4(_ sender: UISwitch) {
        switchDriver(sender: sender, switcher: switch4, num: 4)
    }
    @IBAction func switch8(_ sender: UISwitch) {
        switchDriver(sender: sender, switcher: switch8, num: 8)
    }
    @IBAction func switch16(_ sender: UISwitch) {switchDriver(sender: sender, switcher: switch16, num: 16)
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


