//
//  DescriptionTableCell.swift
//  weatherClientSwift
//
//  Created by Maxim on 06/08/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

import UIKit

class DescriptionTableCell: UITableViewCell {

    @IBOutlet weak var descName: UILabel!
    @IBOutlet weak var fullDiscr: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
