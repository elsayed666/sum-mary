//
//  HomeViewController.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 25/06/2026.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var HomeCollectionView: UICollectionView!
    lazy var viewModel = HomeViewModel()    

    @IBAction func NuovoPreventivo(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Client", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "client") as! NuovoClientViewController
           navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func StoricoPreventivi(_ sender: UIButton) {
        let storyboard = UIStoryboard(name : "History" , bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "history") as! StoricoClientViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        print(type(of: HomeCollectionView))
        configureCollectionView()
        bindViewModel()
    }
}
