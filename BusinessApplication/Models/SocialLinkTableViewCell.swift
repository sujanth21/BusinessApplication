//
//  SocialLinkTableViewCell.swift
//  BusinessApplication
//
//  Created by Sujanth Sebamalaithasan on 19/9/17.
//  Copyright © 2017 Sujanth Sebamalaithasan. All rights reserved.
//

import UIKit

class SocialLinkTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
