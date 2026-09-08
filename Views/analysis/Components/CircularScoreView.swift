//
//  CircularScoreView.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 18/06/26.
//

import UIKit

final class CircularScoreView: UIView {

    private let progressLayer = CAShapeLayer()

    var progress: CGFloat = 0.92

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayer()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupLayer()
    }

    func configure(score: Double) {
        progress = CGFloat(min(max(score, 0), 1))
        setNeedsLayout()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let center = CGPoint(
            x: bounds.midX,
            y: bounds.midY
        )

        let path = UIBezierPath(
            arcCenter: center,
            radius: 55,
            startAngle: -.pi / 2,
            endAngle: 1.5 * .pi,
            clockwise: true
        )

        progressLayer.frame = bounds
        progressLayer.path = path.cgPath
        progressLayer.strokeEnd = progress
    }

    private func setupLayer() {
        progressLayer.lineWidth = 8
        progressLayer.fillColor = UIColor.clear.cgColor
        progressLayer.strokeColor = UIColor.systemIndigo.cgColor
        layer.addSublayer(progressLayer)
    }
}
