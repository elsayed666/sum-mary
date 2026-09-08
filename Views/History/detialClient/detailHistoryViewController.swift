    //
    //  detailHistoryViewController.swift
    //  Preventivo-APP&Web
    //
    //  Created by IFTS46 on 02/07/2026.
    //

    import UIKit

class detailHistoryViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var ProgressCardView: ProgressCardView!
    @IBOutlet weak var PriceCardView: PriceCardView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var ActivityTableView: UITableView!
    var viewModel: ClientViewModel?
    var tableHeightConstraint: NSLayoutConstraint?

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        configureTableView()
        bindViewModel()
    }

    func updateActivityTableHeight() {
        ActivityTableView.layoutIfNeeded()
        tableHeightConstraint?.constant = ActivityTableView.contentSize.height
    }
}
