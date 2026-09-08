//
//  DetailsClienteFlowLayout.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 05/07/2026.
//

import Foundation
import UIKit
extension detailHistoryViewController {

    func bindViewModel() {
        guard let clientData = viewModel?.clientData else { return }

        companyLabel.text = clientData.header.companyName
        titleLabel.text = clientData.header.subtitle
        welcomeLabel.text = "Welcome back, \(clientData.header.clientName)"
        ProgressCardView.configure(with: clientData.progress)
        PriceCardView.configure(price: clientData.estimate.subtotal)

        ActivityTableView.reloadData()
        ActivityTableView.layoutIfNeeded()
        updateActivityTableHeight()
    }

}
