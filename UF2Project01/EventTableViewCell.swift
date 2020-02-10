//
//  EventTableViewCell.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 03/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class EventTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblTitleName: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblTitlePopu: UILabel!
    @IBOutlet weak var lblPopu: UILabel!
    @IBOutlet weak var imgEvent: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
