//
//  TypeProjects.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 11/07/2026.
//
import Foundation
import UIKit

final class MockProjects {
    static func data(
        for platform: ProjectPlatform
    ) -> [ProjectOption] {
        switch platform {
        case .website:
            return [
                ProjectOption(
                    icon: "globe",
                    iconColor: .systemBlue,
                    title: "Sito Aziendale",
                    badge: "Business",
                    description: "Presentazione aziendale professionale.",
                    price: "€800 - €2500",
                    timeline: "1-3 settimane"
                ),
                ProjectOption(
                    icon: "cart",
                    iconColor: .systemPurple,
                    title: "E-Commerce",
                    badge: "Vendita",
                    description: "Negozio online completo.",
                    price: "€2500 - €8000",
                    timeline: "4-8 settimane"
                ),
                ProjectOption(
                    icon: "rectangle",
                    iconColor: .systemOrange,
                    title: "Landing Page",
                    badge: "Marketing",
                    description: "Pagina promozionale.",
                    price: "€500 - €1500",
                    timeline: "1 settimana"
                )
            ]

        case .android:
            return [
                ProjectOption(
                    icon: "iphone",
                    iconColor: .systemGreen,
                    title: "App Aziendale",
                    badge: "Android",
                    description: "Applicazione business(Flutter O react Native).",
                    price: "€3000 - €7000",
                    timeline: "6-10 settimane"
                ),
                ProjectOption(
                    icon: "cart",
                    iconColor: .systemPurple,
                    title: "E-Commerce",
                    badge: "Android",
                    description: "Shopping online.",
                    price: "€5000 - €15000",
                    timeline: "8-16 settimane"
                )

            ]
        case .ios:
            return [
                ProjectOption(
                    icon: "iphone.gen3",
                    iconColor: .systemBlue,
                    title: "App Aziendale",
                    badge: "iOS",
                    description: "Applicazione Swift.",
                    price: "€3500 - €8000",
                    timeline: "6-10 settimane"
                ),
                ProjectOption(
                    icon: "cart",
                    iconColor: .systemPurple,
                    title: "E-Commerce",
                    badge: "iOS",
                    description: "Shopping online.",
                    price: "€6000 - €18000",
                    timeline: "8-18 settimane"
                )
            ]
        }
    }
}

final class PlatformViewModel {


    lazy var platforms: [ProjectPlatform] = {

        return ProjectPlatform.allCases

    }()

}
