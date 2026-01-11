//
//  GroupTableViewCell.swift
//  newProject
//
//  Created by serge on 17/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class GroupTableViewCell: UITableViewCell {

    @IBOutlet weak var imageOfGroup: UIImageView!
    @IBOutlet weak var nameOfGroup: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageOfGroup.layer.masksToBounds = true
        imageOfGroup.layer.cornerRadius = 78/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
