//
//  ViewController.swift
//  Switchers
//
//  Created by Иван Крылов on 09.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var result: Int8 = 0
    var randomTask: Int8 = Int8(arc4random_uniform(32))
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var task: UILabel!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    @IBOutlet weak var switch8: UISwitch!
    @IBOutlet weak var switch16: UISwitch!
    
    func getTasks() {
        task.text = "Set num : \(String(randomTask))"
    }
    
    func checkResult() {
        if result == randomTask {
            task.text = "You win!"
        } else {
            task.text = "Game over"
        }
    }
    
    @IBAction func startGame(_ sender: UIButton) {
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
        if sender.isOn {
            switch1.setOn(true, animated: true)
            result += 1
            resultLabel.text = String(result)
        } else {
            switch1.setOn(false, animated: true)
            result -= 1
            resultLabel.text = String(result)
        }
    }
    
    @IBAction func switch2(_ sender: UISwitch) {
        if sender.isOn {
            switch2.setOn(true, animated: true)
            result += 2
            resultLabel.text = String(result)
        } else {
            switch2.setOn(false, animated: true)
            result -= 2
            resultLabel.text = String(result)
        }
    }
    @IBAction func switch4(_ sender: UISwitch) {
        if sender.isOn {
            switch4.setOn(true, animated: true)
            result += 4
            resultLabel.text = String(result)
        } else {
            switch4.setOn(false, animated: true)
            result -= 4
            resultLabel.text = String(result)
        }
    }
    @IBAction func switch8(_ sender: UISwitch) {
        if sender.isOn {
            switch8.setOn(true, animated: true)
            result += 8
            resultLabel.text = String(result)
        } else {
            switch8.setOn(false, animated: true)
            result -= 8
            resultLabel.text = String(result)
        }
    }
    @IBAction func switch16(_ sender: UISwitch) {
        if sender.isOn {
            switch16.setOn(true, animated: true)
            result += 16
            resultLabel.text = String(result)
        } else {
            switch16.setOn(false, animated: true)
            result -= 16
            resultLabel.text = String(result)
        }
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

