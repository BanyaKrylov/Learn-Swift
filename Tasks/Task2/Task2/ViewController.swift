//
//  ViewController.swift
//  Task2
//
//  Created by Иван Крылов on 18.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomImage = RandomImage()
    @IBAction func clickButton(_ sender: UIButton) {
        sender.setBackgroundImage(randomImage.randomImage(), for: .normal)
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

