//
//  NuovoClientKeyboard.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//

import Foundation
import UIKit
extension NuovoClientViewController {

    func setupKeyboard() {

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }

    @objc private func keyboardWillShow(_ notification: Notification) {

        guard let keyboardFrame =
                notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect
        else { return }

        let keyboardHeight = keyboardFrame.height

        scrollView.contentInset.bottom = keyboardHeight + 20
        scrollView.verticalScrollIndicatorInsets.bottom = keyboardHeight + 20

        if let activeView = view.findFirstResponder() {

            let frame = activeView.convert(activeView.bounds, to: scrollView)

            scrollView.scrollRectToVisible(
                frame.insetBy(dx: 0, dy: -80),
                animated: true
            )
        }
    }

    @objc private func keyboardWillHide(_ notification: Notification) {

        scrollView.contentInset.bottom = 0
        scrollView.verticalScrollIndicatorInsets.bottom = 0
    }
}
