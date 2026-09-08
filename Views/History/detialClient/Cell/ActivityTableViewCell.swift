//
//  ActivityTableViewCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 05/07/2026.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    
    @IBOutlet weak var circleView: UIView!
    
    @IBOutlet weak var lineView: UIView!

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var PersonLavoroLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
