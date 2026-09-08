//
//  SummaryDataSourceAndDelegate.swift
//  Preventivo-APP&Web
//
//  Created by IFTS47 on 06/08/2026.
//

import UIKit

class SummaryDataSourceAndDelegate: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    var features: [SelectedFeature] = [
        SelectedFeature(title: "Piattaforma", description: "iOS Native (Swift/SwiftUI)", imageName: "iphone"),
        SelectedFeature(title: "Backend & Database", description: "Firebase + Custom API", imageName: "server.rack"),
        SelectedFeature(title: "Sicurezza Avanzata", description: "Biometric Auth + Encryption", imageName: "shield.fill")
    ]
    
    // MARK: - TableView DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return features.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FeatureCell", for: indexPath) as? SummaryTableViewCell else {
            return UITableViewCell()
        }
        
        let item = features[indexPath.row]
        cell.configure(title: item.title, description: item.description, imageName: item.imageName)
        return cell
    }
    
    // MARK: - TableView Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
