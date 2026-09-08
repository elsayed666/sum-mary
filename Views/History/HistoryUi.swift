//
//  HistoryUi.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//
import UIKit

extension StoricoClientViewController {
    func setupViews() {

        ActiveView.layer.cornerRadius = 20
        ActiveView.clipsToBounds = true

        PotentialView.layer.cornerRadius = 20
        PotentialView.clipsToBounds = true
    }
//    func configureUI() {
//
//        [ ActiveView ,PotentialView
//        ].forEach {
//
//            $0.layer.cornerRadius = 20
//
//            $0.layer.shadowColor = UIColor.black.cgColor
//
//            $0.layer.shadowOpacity = 0.05
//
//            $0.layer.shadowRadius = 8
//
//            $0.layer.shadowOffset = CGSize(width: 0, height: 4)
//        }
//    }
}
