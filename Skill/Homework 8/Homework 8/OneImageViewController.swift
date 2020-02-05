//
//  OneImageViewController.swift
//  Homework 8
//
//  Created by Ivan Krylov on 05.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class OneImageViewController: UIViewController {

    @IBOutlet weak var images: UIImageView!
    let imagesArr = ["anthony-tran-DJGg9tYrDLo-unsplash", "eli-defaria-bAZ4q6PhS9U-unsplash", "eli-defaria-qKXnwCIaULI-unsplash", "houcine-ncib-DEFWenOaWYk-unsplash", "jose-ros-photo-fokBcnpzIdc-unsplash", "joshua-rawson-harris-c_ulitHAGLY-unsplash", "joshua-rawson-harris-UwpXT7pZMXY-unsplash", "maarten-van-den-heuvel-bB51b45Aa7Q-unsplash", "sharon-mccutcheon-qVlkIAEKgKQ-unsplash", "stavrialena-gontzou-4P4YoLqrInM-unsplash"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images.image = UIImage(named: imagesArr[0])

        // Do any additional setup after loading the view.
    }
    var imagesCount = 0
    @IBAction func nextButton(_ sender: Any) {
        imagesCount += 1
        images.image = UIImage(named: imagesArr[imagesCount % imagesArr.count])
        
    }
    @IBAction func backButton(_ sender: Any) {
        if imagesCount > 0 {
            imagesCount -= 1
            images.image = UIImage(named: imagesArr[imagesCount % imagesArr.count])
        } else {
            imagesCount = imagesArr.endIndex
            imagesCount -= 1
            images.image = UIImage(named: imagesArr[imagesCount % imagesArr.count])
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
