//
//  PriceCardView.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 08/07/2026.
//



import UIKit

final class PriceCardView: UIView {

    @IBOutlet weak var subtotalLabel: UILabel!

    func configure(price: String) {

        subtotalLabel.text = price

    }

}
