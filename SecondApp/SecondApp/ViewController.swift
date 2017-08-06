//
//  ViewController.swift
//  SecondApp
//
//  Created by Иван Крылов on 06.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var firstImageView: UIImageView!

    @IBAction func changeImage(_ sender: Any) {
        if firstImageView.image == #imageLiteral(resourceName: "eric1") {
            firstImageView.image = #imageLiteral(resourceName: "Eric_cartman")
        } else {
            firstImageView.image = #imageLiteral(resourceName: "eric1")
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

