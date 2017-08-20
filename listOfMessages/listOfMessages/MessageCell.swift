//
//  MessageCell.swift
//  listOfMessages
//
//  Created by Иван Крылов on 20.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
