//
//  TeamTableViewCell.swift
//  UF2Project01
//
//  Created by Toni Gutiérrez Sánchez  on 04/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblTeamName: UILabel!
    @IBOutlet weak var lblCountry: UILabel!
    @IBOutlet weak var lblManager: UILabel!
    @IBOutlet weak var imgTeam: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
