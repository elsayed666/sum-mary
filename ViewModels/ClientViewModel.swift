//
//  ClientViewModel.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 04/07/2026.
//
import Foundation
final class ClientViewModel {
    private(set) var clientData: ClientDetails?
    init(project: History) {
        fetchClientData(project: project)
    }

    private func fetchClientData(project: History) {
        let header = ClientHeader(
            clientName: "Alex",
            companyName: project.projectName,
            subtitle: project.projectType
        )

        let progress = ProgressCard(
            projectName: project.projectName,
            remainingDays: "24 Days Remaining",
            progress: 0.68,
            version: "v1.2.0",
            status: .inProgress
        )

        let estimate = Estimate(
            subtotal: project.price
        )

        let activities = [
            Activity(
                title: "\(project.projectName) Created",
                date: "Today",
                author: "Alex"
            ),
            Activity(
                title: "Project Updated",
                date: "Yesterday",
                author: "System"
            )
        ]

        clientData = ClientDetails(
            header: header,
            progress: progress,
            estimate: estimate,
            activities: activities
        )
    }
}
