//
//  FriendTableViewCell.swift
//  newProject
//
//  Created by serge on 15/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {

    @IBOutlet weak var friendImage: UIImageView!
    @IBOutlet weak var friendName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
//        закруглили
        friendImage.layer.masksToBounds = true
        friendImage.layer.cornerRadius = 78/2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
