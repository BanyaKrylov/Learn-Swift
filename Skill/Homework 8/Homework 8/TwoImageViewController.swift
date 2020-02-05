//
//  TwoImageViewController.swift
//  Homework 8
//
//  Created by Ivan Krylov on 05.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class TwoImageViewController: UIViewController {

    let imagesArr = ["anthony-tran-DJGg9tYrDLo-unsplash", "eli-defaria-bAZ4q6PhS9U-unsplash", "eli-defaria-qKXnwCIaULI-unsplash", "houcine-ncib-DEFWenOaWYk-unsplash"]
    
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var oneView: UIView!
    @IBOutlet weak var twoView: UIView!
    @IBOutlet weak var threeView: UIView!
    @IBOutlet weak var fourView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let arrView = [oneView, twoView, threeView, fourView]
        var countImage = 0
        for i in arrView {
            let oneImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 155, height: 204))
            oneImageView.image = UIImage(named: imagesArr[countImage])
            let oneLabel = UILabel(frame: CGRect(x: 0, y: 204, width: 155, height: 30))
            oneLabel.text = "\(imagesArr[countImage])"
            i?.addSubview(oneImageView)
            i?.addSubview(oneLabel)
            countImage += 1
        }
        // Do any additional setup after loading the view.
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
