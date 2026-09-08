//
//  NewClient.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 21/07/2026.
//


import Foundation

struct Client {
    let id: UUID
    var fullName: String
    var companyName: String
    var email: String
    var phone: String
    var projectDescription: String
    var createdAt: Date
    var updatedAt: Date
    var status: ClientStatus
}
enum ClientStatus {
    case draft
    case active
    case archived
}
