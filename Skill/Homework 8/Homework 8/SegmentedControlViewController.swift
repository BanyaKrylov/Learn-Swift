//
//  SegmentedControlViewController.swift
//  Homework 8
//
//  Created by Ivan Krylov on 05.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class SegmentedControlViewController: UIViewController {

   
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var purpleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greenView.isHidden = false

//        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func undexChange(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            greenView.isHidden = false
            blueView.isHidden = true
            purpleView.isHidden = true
        case 1:
            blueView.isHidden = false
            greenView.isHidden = true
            purpleView.isHidden = true
        case 2:
            purpleView.isHidden = false
            blueView.isHidden = true
            greenView.isHidden = true
            
        default:
            break
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
