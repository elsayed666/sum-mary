    //
//  HistoryViewmodel.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//

import Foundation

final class StoricoClientViewModel {
    let history = MockData.history
}
enum MockData {

    static let history = [

        History(
            image: "apps.iphone.badge.plus",
            projectName: "Ristorante App",
            projectType: "Mobile App",
            date: "30 Jun 2026",
            price: "€3500",
            status: "Completed",
            iconColor: .revenueColor
        ),

        History(
            image: "globe",
            projectName: "Company Website",
            projectType: "Website",
            date: "15 Jun 2026",
            price: "€1800",
            status: "Pending",
            iconColor: .appPrimary
        )

    ]

}
