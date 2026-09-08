//
//  ProjectPlatform.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
import UIKit
enum ProjectPlatform: CaseIterable {

    case website
    case android
    case ios


    var title: String {
        switch self {
        case .website:
            return "Website"
        case .android:
            return "Android"
        case .ios:
            return "iOS"
        }
    }


    var icon: String {
        switch self {
        case .website:
            return "globe"
        case .android:
            return "iphone"
        case .ios:
            return "apple.logo"
        }
    }
    var iconColor: UIColor {
        switch self {
        case .website:
            return .systemBlue
        case .android:
            return .systemGreen
        case .ios:
            return .systemIndigo
        }
    }
    var badge: String {
        switch self {
        case .website:
            return "Browser"
        case .android:
            return "Google Play"
        case .ios:
            return "App Store"
        }
    }
}
