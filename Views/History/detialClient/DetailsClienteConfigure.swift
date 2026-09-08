//
//  DetailsClienteConfigure.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 05/07/2026.
//

import UIKit
extension detailHistoryViewController{
   
    func configureUI() {

        [
          ProgressCardView ,
          PriceCardView
        ].forEach {

            $0.layer.cornerRadius = 20

            $0.layer.shadowColor = UIColor.black.cgColor

            $0.layer.shadowOpacity = 0.05

            $0.layer.shadowRadius = 8

            $0.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
}
