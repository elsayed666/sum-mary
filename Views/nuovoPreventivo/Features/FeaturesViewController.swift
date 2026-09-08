//
//  FeaturesViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 23/07/2026.
//

import UIKit
class FeaturesViewController: UIViewController {
    
    var selectedProject: ProjectOption?
    
    @IBOutlet weak var totalView: UIView!
    
    @IBOutlet weak var totalPrice: UILabel!
    @IBOutlet weak var totalDate: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    
    let viewModel = FeaturesViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        updateTotal()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateTableViewHeight()
    }
    func updateTotal() {

           totalPrice.text = "€\(viewModel.totalPrice)"
           totalDate.text = "+\(viewModel.totalDays) days"

       }

}
