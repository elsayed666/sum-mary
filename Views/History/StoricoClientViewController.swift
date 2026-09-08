//
//  StoricoClientViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//

import UIKit

class StoricoClientViewController: UIViewController {

    @IBOutlet weak var ActiveView: UIView!
    @IBOutlet weak var daysWorking: UILabel!
    @IBOutlet weak var PotentialView: UIView!
    @IBOutlet weak var statistics: UILabel!
    
    @IBOutlet weak var Historytable: UITableView!
    
    lazy var viewModel = StoricoClientViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        bindViewModel()
        setupViews()
       // configureUI()
    }

}
