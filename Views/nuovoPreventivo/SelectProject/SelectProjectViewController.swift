//
//  SelectProjectViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 11/07/2026.
//

import UIKit

class SelectProjectViewController: UIViewController {
    var viewModel: SelectProjectViewModel!

    @IBOutlet weak var SelecttableView: UITableView!
    @IBOutlet weak var tableViewHeightConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        updateTableViewHeight()
    }

    private func configure() {
        SelecttableView.delegate = self
        SelecttableView.dataSource = self
        SelecttableView.separatorStyle = .none
        SelecttableView.contentInset = UIEdgeInsets(top: 12, left: 0, bottom: 20, right: 0)
        SelecttableView.rowHeight = UITableView.automaticDimension
        SelecttableView.estimatedRowHeight = 260
        SelecttableView.isScrollEnabled = false
        SelecttableView.reloadData()
        SelecttableView.layoutIfNeeded()
        updateTableViewHeight()
    }

    private func updateTableViewHeight() {
        tableViewHeightConstraint.constant = SelecttableView.contentSize.height
    }

}
