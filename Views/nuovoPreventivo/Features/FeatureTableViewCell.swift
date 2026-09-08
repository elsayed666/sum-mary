//
//  FeatureTableViewCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//

import UIKit

class FeatureTableViewCell: UITableViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var WorkDate: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = .clear
        selectionStyle = .none
        cardView.layer.cornerRadius = 20
        cardView.layer.shadowColor = UIColor.black.cgColor
        cardView.layer.shadowOpacity = 0.08
        cardView.layer.shadowRadius = 8
        cardView.layer.shadowOffset = CGSize(width: 0, height: 4)
       }
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0))
    }

       func configure(feature: FeatureOption) {

           titleLabel.text = feature.title
           descriptionLabel.text = feature.description
           priceLabel.text = "+€\(feature.price)"
           WorkDate.text = "+\(feature.days) days"
           iconImageView.image = UIImage(systemName: feature.icon)
           iconImageView.tintColor = feature.iconColor
           if feature.isSelected {
               cardView.layer.borderWidth = 2
               cardView.layer.borderColor = UIColor.systemIndigo.cgColor
               cardView.backgroundColor = UIColor.systemIndigo.withAlphaComponent(0.08)
           } else {

               cardView.layer.borderWidth = 0
               cardView.layer.borderColor = UIColor.clear.cgColor
               cardView.backgroundColor = .white

           }
       }
}
