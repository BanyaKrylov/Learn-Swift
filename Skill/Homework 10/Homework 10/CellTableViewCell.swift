//
//  CellTableViewCell.swift
//  Homework 10
//
//  Created by Ivan Krylov on 10.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameTwoLabel: UILabel!
    @IBOutlet weak var switcher: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
