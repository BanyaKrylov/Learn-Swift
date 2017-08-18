//
//  ViewController.swift
//  Task2
//
//  Created by Иван Крылов on 18.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let imageArray = [#imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "2")]
    func randomImage() -> Int{
        let unsignedArrayCount = UInt32(imageArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        return Int(unsignedRandomNumber)
    }
    @IBAction func clickButton(_ sender: UIButton) {
        sender.setBackgroundImage(imageArray[randomImage()], for: .normal)
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

