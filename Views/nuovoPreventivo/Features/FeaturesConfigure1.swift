//
//  FeaturesConfigure.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 25/07/2026.
//

import UIKit
extension FeaturesViewController {
    
    func configure() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        totalView.layer.cornerRadius = 20
        tableView.contentInset = UIEdgeInsets(top: 12, left: 0, bottom: 20, right: 0)
        tableView.estimatedRowHeight = 160
        tableView.isScrollEnabled = false
        tableView.reloadData()
        tableView.layoutIfNeeded()
        updateTableViewHeight()

        DispatchQueue.main.async { [weak self] in
            self?.updateTableViewHeight()
        }
    }

    func updateTableViewHeight() {
        let contentHeight = tableView.contentSize.height
        if tableViewHeightConstraint.constant != contentHeight {
            tableViewHeightConstraint.constant = contentHeight
            view.layoutIfNeeded()
        }
    }
}
