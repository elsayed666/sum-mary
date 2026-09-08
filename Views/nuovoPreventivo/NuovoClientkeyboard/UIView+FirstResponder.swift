//
//  UIView+FirstResponder.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//
import UIKit
extension UIView {
    func findFirstResponder() -> UIView? {
        if isFirstResponder {
            return self
        }
        for subview in subviews {
            if let responder = subview.findFirstResponder() {
                return responder
            }
        }
        return nil
    }
}
