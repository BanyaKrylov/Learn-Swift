//
//  AlamofireTVC.swift
//  Weather
//
//  Created by Ivan Krylov on 02.03.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class AlamofireTVC: UITableViewCell {
    
    @IBOutlet weak var dateCell: UILabel!
    @IBOutlet weak var tempCell: UILabel!
    @IBOutlet weak var cityCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
