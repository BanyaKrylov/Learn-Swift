//
//  RandomImage.swift
//  Task2
//
//  Created by Иван Крылов on 18.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class RandomImage: UIButton {
    
    let imageArray = [#imageLiteral(resourceName: "7"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "8"), #imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "9"), #imageLiteral(resourceName: "5"),#imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "6"), #imageLiteral(resourceName: "2")]
    func randomImage() -> UIImage{
        let unsignedArrayCount = UInt32(imageArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomIndex = Int(unsignedRandomNumber)
        return imageArray[randomIndex]
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
