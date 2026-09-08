//
//  FeatureDataSource.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//
import UIKit

extension FeaturesViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return viewModel.features.count
    }

    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "FeatureCell",
            for: indexPath
        ) as? FeatureTableViewCell else {
            return UITableViewCell()
        }

        let feature = viewModel.features[indexPath.row]
        cell.configure(feature: feature)

        return cell
    }

    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {

        tableView.deselectRow(at: indexPath, animated: true)

        viewModel.toggleFeature(at: indexPath.row)

        tableView.reloadRows(at: [indexPath], with: .automatic)

        updateTotal()

        let feature = viewModel.features[indexPath.row]
        print("Selected: \(feature.title)")
    }

    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

    func tableView(_ tableView: UITableView,
                   heightForFooterInSection section: Int) -> CGFloat {
        return 16
    }
}
