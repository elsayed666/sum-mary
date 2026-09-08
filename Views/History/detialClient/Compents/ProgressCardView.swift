//
//  ProgressCardView.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 05/07/2026.
//

import UIKit

final class ProgressCardView: UIView {

    @IBOutlet weak var projectNameLabel: UILabel!

    @IBOutlet weak var remainingLabel: UILabel!

    @IBOutlet weak var versionLabel: UILabel!

    @IBOutlet weak var statusButton: UIButton!

    @IBOutlet weak var progressView: CircularScoreView!
    @IBOutlet weak var ProgressLabel: UILabel!

    func configure(with progress: ProgressCard) {

        projectNameLabel.text = progress.projectName

        remainingLabel.text = progress.remainingDays

        versionLabel.text = progress.version

        statusButton.setTitle(progress.status.title, for: .normal)
        ProgressLabel.text = String(format: "%.0f%%", progress.progress * 100)

        progressView.configure(score: progress.progress)

    }

}
