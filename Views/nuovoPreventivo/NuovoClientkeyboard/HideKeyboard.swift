//
//  HideKeyboard.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//

import UIKit
extension NuovoClientViewController {

    func hideKeyboardWhenTapped() {

        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard)
        )

        tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }

    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}
