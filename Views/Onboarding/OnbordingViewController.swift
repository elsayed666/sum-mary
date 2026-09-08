//
//  OnbordingViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 15/06/26.
//

import UIKit

 class OnboardingViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var centerIconImageView: UIImageView!
    @IBOutlet weak var accuracyCardView: UIView!
    @IBOutlet weak var timelineCardView: UIView!
    @IBOutlet weak var complexityCardView: UIView!
     let viewModel = OnboardingViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        updatePage()
        configureUI()
        configureCards()
        setupInitialState()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startAnimations()
    }
     @IBAction func continueButton(_ sender: UIButton) {
         if viewModel.nextPage() {
               UIView.transition(
                   with: view,
                   duration: 0.35,
                   options: .transitionCrossDissolve
               ) {
                   self.updatePage()
               }

           } else {

               navigateToHome()
           }
     }
}
