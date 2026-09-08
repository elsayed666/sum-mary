//
//  PlatformTableViewCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
import UIKit

class PlatformTableViewCell: UITableViewCell {
    @IBOutlet weak var PlaltformView: UIView!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var badgeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        setupUI()
    }

    func configure(with platform: ProjectPlatform) {

        titleLabel.text = platform.title

        iconImageView.image = UIImage(systemName: platform.icon)

        iconImageView.tintColor = platform.iconColor
        badgeLabel.text = platform.badge
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0))
    }
}
