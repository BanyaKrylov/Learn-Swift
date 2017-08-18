//
//  RandomImage.swift
//  Task2
//
//  Created by Иван Крылов on 18.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class RandomImage {
    
    func randomImage() -> Int{
        let unsignedArrayCount = UInt32(imageArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        return Int(unsignedRandomNumber)
    }
}
