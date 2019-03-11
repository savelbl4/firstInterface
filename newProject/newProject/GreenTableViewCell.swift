//
//  GreenTableViewCell.swift
//  newProject
//
//  Created by serge on 10/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class GreenTableViewCell: UITableViewCell {

    @IBOutlet weak var imageOnGreen: UIImageView!
    @IBOutlet weak var labelOnGreen: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
