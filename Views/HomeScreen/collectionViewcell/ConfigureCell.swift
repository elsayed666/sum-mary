//
//  ConfigureCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 26/06/2026.
//

import UIKit

extension HomeCollectionViewCell {
    func configure(with statistic: Statistic) {
        
        iconImageView.image = UIImage(systemName: statistic.icon)
        iconImageView.tintColor = statistic.iconColor

        valueLabel.text = statistic.value
        valueLabel.textColor = statistic.valueColor

        titleLabel.text = statistic.title

        badgeLabel.text = statistic.badge
        badgeLabel.isHidden = statistic.badge == nil
        badgeLabel.backgroundColor = statistic.badgeBackgroundColor
        badgeLabel.textColor = statistic.badgeTextColor
    }

}
extension HomeCollectionViewCell {
    func setupUI() {
        backgroundColor = .clear
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 16
        contentView.layer.masksToBounds = true

        layer.cornerRadius = 16
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.12
        layer.shadowRadius = 8
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.masksToBounds = false

        valueLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)

        titleLabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        titleLabel.textColor = .gray

        badgeLabel.layer.cornerRadius = 6
        badgeLabel.clipsToBounds = true
        badgeLabel.backgroundColor = .lightPurple
        badgeLabel.textColor = .appPrimary
    }
}
