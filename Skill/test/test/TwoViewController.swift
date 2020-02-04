//
//  TwoViewController.swift
//  test
//
//  Created by Ivan Krylov on 04.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    var repeatLabelOne = "Выбран зеленый"
    override func viewDidLoad() {
        super.viewDidLoad()
        labelTwo.text = repeatLabelOne
    }

    @IBOutlet weak var labelTwo: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TwoOneViewController, segue.identifier == "ShowTwoOne" {
            vc.repeatLabel = labelTwo.text!
            vc.delegate = self
        }
    }
}

extension TwoViewController: TwoOneControllerDelegate {
    func setLabelTwo(_ label: String) {
        labelTwo.text = label
    }
}
