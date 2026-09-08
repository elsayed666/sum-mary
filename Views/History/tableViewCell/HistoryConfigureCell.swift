//
//  ConfigureCell.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//
import UIKit
import Foundation
extension HistoryTableViewCell {
    override func layoutSubviews() {
        super.layoutSubviews()
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0))
    }
    
    func configure(with history: History) {
        imageApp.image = UIImage(systemName: history.image)
        imageApp.tintColor = history.iconColor
        titleProject.text = history.projectName
        typeProject.text = history.projectType
        date.text = history.date
        prezzo.text = history.price
        posizione.text = history.status.uppercased()
        switch history.status.lowercased() {
           case "approved":

               posizione.backgroundColor = .approvedBackground
               posizione.textColor = .approvedText

           case "pending":

               posizione.backgroundColor = .pendingBackground
               posizione.textColor = .pendingText

           default:

               posizione.backgroundColor = .draftBackground
               posizione.textColor = .draftText
           }


        }
    func setupUI() {
        backgroundColor = .clear
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 16
        contentView.layer.masksToBounds = true
        
        layer.cornerRadius = 16
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.12
        layer.shadowRadius = 8
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.masksToBounds = false
        posizione.layer.cornerRadius = 8
        posizione.clipsToBounds = true
        posizione.textAlignment = .center
        prezzo.textColor = .appPrimary
        typeProject.textColor = .secondaryText
        date.textColor = .secondaryText
        titleProject.textColor = .appText
      
    }
    
}
