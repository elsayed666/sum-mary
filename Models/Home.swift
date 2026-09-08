//
//  Home.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 26/06/2026.
//

import Foundation
import UIKit

struct HomeResponse {
    let statistics: [Statistic]
}

struct Statistic {
    let id: Int
    let icon: String
    let value: String
    let title: String
    let badge: String?
    let iconColor: UIColor
    let valueColor: UIColor
    let badgeBackgroundColor: UIColor
    let badgeTextColor: UIColor
    

}
