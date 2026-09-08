//
//  AnalysisAnimations.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 18/06/26.
//
import UIKit
extension AnalysisViewController {
    func animateSuggestions() {
        
        let cards = [
            notificationSuggestionView,
            analyticsSuggestionView,
            languageSuggestionView
        ]
        
        for (index, card) in cards.enumerated() {
            
            card?.alpha = 0
            card?.transform =
            CGAffineTransform(
                translationX: 0,
                y: 20
            )
            
            UIView.animate(
                withDuration: 0.5,
                delay: Double(index) * 0.15
            ) {
                
                card?.alpha = 1
                card?.transform = .identity
            }
        }
    }
}
