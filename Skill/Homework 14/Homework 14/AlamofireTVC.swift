//
//  AlamofireTCV.swift
//  Homework 14
//
//  Created by Ivan Krylov on 27.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class AlamofireTVC: UITableViewCell {
    
    @IBOutlet weak var dateCell: UILabel!
    @IBOutlet weak var tempCell: UILabel!
    @IBOutlet weak var conditionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
