//
//  Client.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 04/07/2026.
//

import Foundation

struct ClientDetails {
    let header: ClientHeader
    let progress: ProgressCard
    let estimate: Estimate
    let activities: [Activity]
}

struct ClientHeader {
    let clientName: String
    let companyName: String
    let subtitle: String
}

struct ProgressCard {
    enum Status {
        case inProgress

        var title: String {
            switch self {
            case .inProgress:
                return "In Progress"
            }
        }
    }

    let projectName: String
    let remainingDays: String
    let progress: Double
    let version: String
    let status: Status
}

struct Estimate {
    let subtotal: String
}

struct Activity {
    let title: String
    let date: String
    let author: String
}
