//
//  SelectProjectConfigure.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
import UIKit
extension SelectProjectTableViewCell {
    func configure(with item: ProjectOption) {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        badgeLabel.text = item.badge
        TimelineLabel.text = item.timeline
        PriceLabel.text = (item.price)
        iconImageView.image = UIImage(systemName: item.icon)
        iconImageView.tintColor = item.iconColor
    }
    func setupUI() {

        backgroundColor = .clear
        selectionStyle = .none
        contentView.backgroundColor = .clear
        cardView.backgroundColor = .cardBackground
        cardView.layer.cornerRadius = 18
        cardView.layer.borderWidth = 1
        cardView.layer.borderColor = UIColor.borderColor.cgColor
        layer.shadowColor = UIColor.shadowColor.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 12
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.masksToBounds = false
        badgeLabel.backgroundColor = .badgeBackground
        badgeLabel.textColor = .badgeText
        badgeLabel.layer.cornerRadius = 10
        badgeLabel.clipsToBounds = true
        titleLabel.textColor = .appText
        descriptionLabel.textColor = .secondaryText
    }
  
}
