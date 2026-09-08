    //
//  ActivityConfigureCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 06/07/2026.
//

import UIKit

extension ActivityTableViewCell {

    func configure(with activity: Activity, isLast: Bool = false) {

        titleLabel.text = activity.title

        DateLabel.text = activity.date

        PersonLavoroLabel.text = activity.author

        circleView.layer.cornerRadius = 6

        circleView.backgroundColor = .appPrimary

        lineView.backgroundColor = .systemGray4
    }

}
