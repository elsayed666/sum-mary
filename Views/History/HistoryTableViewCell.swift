//
//  HistoryTableViewCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//

import UIKit

class HistoryTableViewCell: UITableViewCell {

    @IBOutlet weak var imageApp: UIImageView!
    @IBOutlet weak var titleProject: UILabel!
    @IBOutlet weak var typeProject: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var prezzo: UILabel!
    @IBOutlet weak var posizione: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
