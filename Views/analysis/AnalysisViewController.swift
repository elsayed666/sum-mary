//
//  AnalysisViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 18/06/26.
//

import UIKit

class AnalysisViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!

    @IBOutlet weak var appTitleLabel: UILabel!

    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var circularScoreView:UIView!
    @IBOutlet weak var ScoreCardView: UIView!
    @IBOutlet weak var scoreLabel: UILabel!

    @IBOutlet weak var scoreTitleLabel: UILabel!

    @IBOutlet weak var scoreDescriptionLabel: UILabel!

    @IBOutlet weak var successProgressView: UIProgressView!
    @IBOutlet weak var ProgressCardView : UIView!
    @IBOutlet weak var strengthsCardView: UIView!

    @IBOutlet weak var improvementsCardView: UIView!

    @IBOutlet weak var aiSuggestionsCardView: UIView!
    @IBOutlet weak var notificationSuggestionView: UIView!
    @IBOutlet weak var analyticsSuggestionView: UIView!
    @IBOutlet weak var languageSuggestionView: UIView!
    
    @IBOutlet weak var roadmapContainerView: UIView!

    @IBOutlet weak var startButton: UIButton!

    let viewModel = AnalysisViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        populateData()
        configureAISuggestions()
        animateSuggestions()
    }
}
