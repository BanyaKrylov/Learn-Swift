//
//  ThreeViewController.swift
//  test
//
//  Created by Ivan Krylov on 04.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

protocol ThreeControllerDelegate {
    func setBackgroundColor(_ color: UIColor)
}
class ThreeViewController: UIViewController {
    
    var colorBackground = UIColor() {
        didSet {
            mainBackground.backgroundColor = colorBackground
        }
    }
    
    var delegate: ThreeControllerDelegate?
    
    @IBOutlet var mainBackground: UIView!
    
    private var threeOneVC: ThreeOneViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThreeOneViewController, segue.identifier == "EditBackgroundThreeOne" {
            threeOneVC = vc
            vc.delegate = self
        }
    }
    
    @IBAction func greenButtonMain(_ sender: Any) {
        threeOneVC?.setBackgroundColor(UIColor.green)
    }
    @IBAction func yellowButtonMain(_ sender: Any) {
        threeOneVC?.setBackgroundColor(UIColor.yellow)
    }
    @IBAction func purpleButtonMain(_ sender: Any) {
        threeOneVC?.setBackgroundColor(UIColor.purple)
    }
}

extension ThreeViewController: ThreeOneControllerDelegate {
    func setBackgroundColor(_ color: UIColor) {
        mainBackground.backgroundColor = color
    }
}
