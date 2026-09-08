//
//  HomeCollectionViewCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 26/06/2026.
//

import UIKit
class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var badgeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
       }

}
