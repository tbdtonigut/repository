//
//  CyclistTableViewCell.swift
//  UF2Project01
//
//  Created by dam on 11/02/2020.
//  Copyright © 2020 Toni Gutiérrez Sánchez . All rights reserved.
//

import UIKit

class CyclistTableViewCell: UITableViewCell {

    @IBOutlet weak var imgCyclist: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblLeader: UILabel!
    @IBOutlet weak var lblTitleName: UILabel!
    @IBOutlet weak var lblTitleLeader: UILabel!
    @IBOutlet weak var lblTitlePopu: UILabel!
    @IBOutlet weak var lblPopu: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
