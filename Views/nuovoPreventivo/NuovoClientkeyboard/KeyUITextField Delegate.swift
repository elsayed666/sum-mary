//
//  Untitled.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//
 import UIKit

extension NuovoClientViewController {

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

        switch textField {

        case fullNameTextField:
            companyNameTextField.becomeFirstResponder()

        case companyNameTextField:
            emailAddressTextField.becomeFirstResponder()

        case emailAddressTextField:
            phoneNumberTextField.becomeFirstResponder()

        case phoneNumberTextField:
            projectNotesTextView.becomeFirstResponder()

        default:
            textField.resignFirstResponder()
        }

        return true
    }
}
extension NuovoClientViewController {

    func textViewDidBeginEditing(_ textView: UITextView) {

        let frame = textView.convert(
            textView.bounds,
            to: scrollView
        )

        scrollView.scrollRectToVisible(
            frame.insetBy(dx: 0, dy: -80),
            animated: true
        )
    }

    func textView(_ textView: UITextView,
                  shouldChangeTextIn range: NSRange,
                  replacementText text: String) -> Bool {

        if text == "\n" {
            textView.resignFirstResponder()
            return false
        }

        return true
    }
}
