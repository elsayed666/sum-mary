//
//  HomeViewModel.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 26/06/2026.
//

import Foundation
import UIKit

final class HomeViewModel {
    let response = HomeResponse(
        statistics: [
            Statistic(
                id: 1,
                icon: "folder.fill",
                value: "24",
                title: "Total Projects",
                badge: "+12%",
                iconColor: .appPrimary,
                valueColor: .appPrimary,
                badgeBackgroundColor: .lightPurple,
                badgeTextColor: .appPrimary
                      ),
            Statistic(
                id: 2,
                icon: "eurosign.square.fill",
                value: "€42k",
                title: "Revenue Est.",
                badge: nil,
                iconColor: .revenueColor,
                valueColor: .revenueColor,
                badgeBackgroundColor: .clear,
                badgeTextColor: .clear
                      ),
            Statistic(
                id: 3,
                icon: "doc.text.fill",
                value: "8",
                title: "Active Quotes",
                badge: "Active",
                iconColor: .appPrimary,
                valueColor: .appPrimary,
                badgeBackgroundColor: .lightPurple,
                badgeTextColor: .appPrimary
            ),
            Statistic(
                id: 4,
                icon: "chart.line.uptrend.xyaxis",
                value: "82%",
                title: "Conversion Rate",
                badge: nil,
                iconColor: .appText,
                valueColor: .appText,
                badgeBackgroundColor: .clear,
                badgeTextColor: .clear
            )
        ])

}
