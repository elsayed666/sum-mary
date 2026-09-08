//
//  SummaryViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS47 on 06/08/2026.
//

import UIKit

class SummaryViewController: UIViewController {
    
    

    // MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var featuresTableView: UITableView!
    @IBOutlet weak var esportaPDFButton: UIButton!
    @IBOutlet weak var salvaButton: UIButton!
    @IBOutlet weak var condividiButton: UIButton!
    
   
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    
    private let tableViewManager = SummaryDataSourceAndDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupButtonsUI()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateTableViewHeight()
    }

    // MARK: - Setup
    private func setupTableView() {
        featuresTableView.dataSource = tableViewManager
        featuresTableView.delegate = tableViewManager
        featuresTableView.isScrollEnabled = false
        
        featuresTableView.reloadData()
    }
    
    private func updateTableViewHeight() {
       
        featuresTableView.layoutIfNeeded()
        tableViewHeightConstraint?.constant = featuresTableView.contentSize.height
    }

    private func setupButtonsUI() {
      
        esportaPDFButton?.layer.cornerRadius = 25
        
       
        [salvaButton, condividiButton].forEach { button in
            button?.layer.cornerRadius = 20
            button?.layer.borderWidth = 1
            button?.layer.borderColor = UIColor.systemGray4.cgColor
            button?.backgroundColor = .white
        }
    }
    
    // MARK: - Actions
    @IBAction func esportaPDFTapped(_ sender: UIButton) {
        // Handle PDF Export
    }
    
    @IBAction func salvaTapped(_ sender: UIButton) {
        // Handle Save
    }
    
    @IBAction func condividiTapped(_ sender: UIButton) {
        // Handle Share
    }
}
