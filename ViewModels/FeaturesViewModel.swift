//
//  Features.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//
import UIKit

final class FeaturesViewModel {
    
    lazy var features: [FeatureOption] = { MockFeatures.data()}()
    
    func toggleFeature(at index: Int) {
           features[index].isSelected.toggle()
       }
    var selectedFeatures: [FeatureOption] {
           features.filter { $0.isSelected }
       }
    var totalPrice: Int {
           selectedFeatures.reduce(0) {
               $0 + $1.price
           }
       }
    var totalDays: Int {
        selectedFeatures.reduce(0) {
            $0 + $1.days
        }
    }

}
