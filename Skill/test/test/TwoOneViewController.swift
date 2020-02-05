//
//  TwoOneViewController.swift
//  test
//
//  Created by Ivan Krylov on 04.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

protocol TwoOneControllerDelegate {
    func setLabelTwo(_ label: String)
}

class TwoOneViewController: UIViewController {

    var repeatLabel = ""
    var delegate: TwoOneControllerDelegate?
    
    @IBOutlet weak var labelTwoOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwoOne.text = repeatLabel
    }

    @IBAction func redButton(_ sender: Any) {
        delegate?.setLabelTwo("Выбран красный")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func blueButton(_ sender: Any) {
        delegate?.setLabelTwo("Выбран синий")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func greenButton(_ sender: Any) {
        delegate?.setLabelTwo("Выбран зеленый")
        dismiss(animated: true, completion: nil)
    }
}
