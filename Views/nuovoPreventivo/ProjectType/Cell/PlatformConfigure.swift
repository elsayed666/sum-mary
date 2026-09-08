//
//  PlatformConfigure.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
import UIKit
extension PlatformTableViewCell {
    func setupUI() {
        
        backgroundColor = .clear
        selectionStyle = .none
        contentView.backgroundColor = .clear
        PlaltformView.backgroundColor = .cardBackground
        PlaltformView.layer.cornerRadius = 18
        PlaltformView.layer.borderWidth = 1
        PlaltformView.clipsToBounds = true
        PlaltformView.layer.borderColor = UIColor.borderColor.cgColor
        layer.shadowColor = UIColor.shadowColor.cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 12
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.masksToBounds = false
        badgeLabel.layer.cornerRadius = 10
        badgeLabel.clipsToBounds = true
        badgeLabel.backgroundColor = UIColor.lightPurple
        badgeLabel.textColor = UIColor.appPrimary
    }
}
