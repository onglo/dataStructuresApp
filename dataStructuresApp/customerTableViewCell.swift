//
//  customerTableViewCell.swift
//  dataStructuresApp
//
//  Created by Edouard Long on 13/01/2018.
//  Copyright © 2018 Edouard Long. All rights reserved.
//

import UIKit

class customerTableViewCell: UITableViewCell {

    @IBOutlet weak var customerInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
