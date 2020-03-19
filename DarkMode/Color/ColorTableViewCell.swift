//
//  ColorTableViewCell.swift
//  DarkMode
//
//  Created by dan wang on 2020/3/15.
//  Copyright © 2020 dan wang. All rights reserved.
//

import UIKit

class ColorTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
