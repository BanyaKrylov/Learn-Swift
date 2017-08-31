//
//  TaskCellTableViewCell.swift
//  ListApp
//
//  Created by Иван Крылов on 26.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class TaskCellTableViewCell: UITableViewCell {

    @IBOutlet weak var numberOfDays: UILabel!
    @IBOutlet weak var themeOfDays: UILabel!
    @IBOutlet weak var switcherOfDays: UISwitch!
    @IBOutlet weak var csaleOfDays: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
