//
//  PlatformViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 21/07/2026.
//
import UIKit
class PlatformViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var client: Client?
    let viewModel = PlatformViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()

    }
    private func configure(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.contentInset = UIEdgeInsets(top: 12, left: 0, bottom: 20, right: 0)
        tableView.rowHeight = 125
    }
}
