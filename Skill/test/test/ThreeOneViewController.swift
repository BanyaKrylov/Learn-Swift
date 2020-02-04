//
//  ThreeOneViewController.swift
//  test
//
//  Created by Ivan Krylov on 04.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

protocol ThreeOneControllerDelegate {
    func setBackgroundColor(_ color: UIColor)
}
class ThreeOneViewController: UIViewController {
    
    var colorBackground = UIColor() {
        didSet {
            baskgroundContainer.backgroundColor = colorBackground
        }
    }
    
    var delegate: ThreeOneControllerDelegate?
   
    @IBOutlet var baskgroundContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if let vc = segue.destination as? ThreeViewController, segue.identifier == "EditBackgroundThreeOne" {
                vc.delegate = self
            }
        }
    
    @IBAction func greenButtonContainer(_ sender: Any) {
        delegate?.setBackgroundColor(UIColor.green)
    }
    @IBAction func yellowButtonContainer(_ sender: Any) {
        delegate?.setBackgroundColor(UIColor.yellow)
    }
    @IBAction func purpleButtonContainer(_ sender: Any) {
        delegate?.setBackgroundColor(UIColor.purple)
    }
}
extension ThreeOneViewController: ThreeControllerDelegate {
    func setBackgroundColor(_ color: UIColor) {
        baskgroundContainer.backgroundColor = color
    }
}
