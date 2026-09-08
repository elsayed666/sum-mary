//
//  NuovoClientViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//

import UIKit

class NuovoClientViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {

    // MARK: - Outlets
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var projectNotesTextView: UITextView!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!

    private let viewModel = NuovoClientViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Delegates
        fullNameTextField.delegate = self
        companyNameTextField.delegate = self
        emailAddressTextField.delegate = self
        phoneNumberTextField.delegate = self
        projectNotesTextView.delegate = self
        setupKeyboard()
        hideKeyboardWhenTapped()
    }
    deinit {
            NotificationCenter.default.removeObserver(self)
        }
    // MARK: - Actions
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        
        // Model
        let client = Client(
            id: UUID(),
            fullName: fullNameTextField.text ?? "",
            companyName: companyNameTextField.text ?? "",
            email: emailAddressTextField.text ?? "",
            phone: phoneNumberTextField.text ?? "",
            projectDescription: projectNotesTextView.text ?? "",
            createdAt: Date(),
            updatedAt: Date(),
            status: .draft
        )
        if let error = viewModel.validate(client: client) {
            
            showAlert(error)
            
            return
        }

        print("Client Data Saved: \(client)")
        
        let vc = storyboard?.instantiateViewController( withIdentifier: "platform") as! PlatformViewController

        vc.client = client
        navigationController?.pushViewController( vc, animated: true )
    }

    private func showAlert(_ message: String) {
        let alert = UIAlertController(
            title: "Attenzione",
            message: message,
            preferredStyle: .alert
        )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
}
