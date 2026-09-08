//
//  DetailsClienteDataSource.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 05/07/2026.
//

import UIKit

extension detailHistoryViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel?.clientData?.activities.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityCell", for: indexPath) as? ActivityTableViewCell,
              let activity = viewModel?.clientData?.activities[indexPath.row] else {
            return UITableViewCell()
        }
        
        cell.configure(with: activity, isLast: indexPath.row == (viewModel?.clientData?.activities.count ?? 0) - 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        }
}

extension detailHistoryViewController {
    func configureTableView() {
        ActivityTableView.delegate = self
        ActivityTableView.dataSource = self
        ActivityTableView.separatorStyle = .none
        ActivityTableView.showsVerticalScrollIndicator = false
        ActivityTableView.isScrollEnabled = false
        ActivityTableView.rowHeight = UITableView.automaticDimension
        ActivityTableView.estimatedRowHeight = 120
        if tableHeightConstraint == nil {
            tableHeightConstraint = ActivityTableView.heightAnchor.constraint(equalToConstant: 1)
            tableHeightConstraint?.isActive = true
        }
        
    }
}
