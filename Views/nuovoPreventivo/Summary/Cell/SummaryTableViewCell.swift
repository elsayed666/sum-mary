//
//  SummaryTableViewCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS47 on 06/08/2026.
//

import UIKit

class SummaryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    private func setupUI() {
        selectionStyle = .none
        cardView?.layer.cornerRadius = 12
        cardView?.layer.masksToBounds = true
    }
    
    func configure(title: String, description: String, imageName: String) {
        titleLabel?.text = title
        descriptionLabel?.text = description
        iconImageView?.image = UIImage(systemName: imageName)
    }
}
