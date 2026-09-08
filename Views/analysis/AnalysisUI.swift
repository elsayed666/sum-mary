//
//  AnalysisUI.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 18/06/26.
//

import UIKit

extension AnalysisViewController {

    func configureUI() {

        [ ScoreCardView,
          ProgressCardView ,
          strengthsCardView,
          improvementsCardView,
          aiSuggestionsCardView,
          roadmapContainerView
        ].forEach {

            $0.layer.cornerRadius = 20

            $0.layer.shadowColor = UIColor.black.cgColor

            $0.layer.shadowOpacity = 0.05

            $0.layer.shadowRadius = 8

            $0.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
    func configureAISuggestions() {

        aiSuggestionsCardView.layer.cornerRadius = 24

        aiSuggestionsCardView.backgroundColor =
        UIColor(
            red: 0.93,
            green: 0.91,
            blue: 1.0,
            alpha: 1
        )

        [
            notificationSuggestionView,
            analyticsSuggestionView,
            languageSuggestionView
        ].forEach {

            $0?.layer.cornerRadius = 14
        }
    }
}
extension AnalysisViewController {

    func populateData() {
        scoreLabel.text = "\(viewModel.score.value)"
        scoreTitleLabel.text = viewModel.score.title
        scoreDescriptionLabel.text = viewModel.score.description
        successProgressView.progress = 0.88
    }
}
