//
//  TemperatureTableCell.swift
//  weatherClientSwift
//
//  Created by Maxim on 06/08/2018.
//  Copyright © 2018 Maxim. All rights reserved.
//

import UIKit

class TemperatureTableCell: UITableViewCell {
    @IBOutlet weak var temperature: UILabel!
    @IBOutlet weak var maxTemperature: UILabel!
    @IBOutlet weak var minTemperature: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
