//
//  OnboardingViewModel.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 17/06/26.
//

import Foundation

final class OnboardingViewModel {

    private(set) var currentPage = 0

    let pages: [OnboardingPage] = [

        OnboardingPage(
            title: "Estimate Your Next Project with Confidence",
            subtitle: "Generate professional project estimates, timelines and complexity analysis in minutes.",
            accuracyText: "98% Precise",
            timelineText: "3-4 Months",
            complexityText: "High"
        ),

        OnboardingPage(
            title: "Build Professional Timelines",
            subtitle: "Get realistic project durations automatically.",
            accuracyText: "95% Accurate",
            timelineText: "2-6 Months",
            complexityText: "Medium"
        ),

        OnboardingPage(
            title: "Export Professional Reports",
            subtitle: "Generate beautiful PDF estimates for clients.",
            accuracyText: "100% Ready",
            timelineText: "Instant",
            complexityText: "Easy"
        )
    ]
    func nextPage() -> Bool {
        if currentPage < pages.count - 1 {
            currentPage += 1
            return true
        } else {
            return false
        }
    }
        
    var currentItem: OnboardingPage {
           pages[currentPage]
       }
}
