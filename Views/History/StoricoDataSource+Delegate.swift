//
//  StoricoData.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 30/06/2026.
//

import UIKit
extension StoricoClientViewController : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.history.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HistoryCell", for: indexPath) as? HistoryTableViewCell else {
            return UITableViewCell()
        }
        let item = viewModel.history[indexPath.row]
        cell.configure(with : item)
       return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
        guard let detailVC = storyboard?.instantiateViewController(withIdentifier: "detail") as? detailHistoryViewController else { return }
        let selectedHistory = viewModel.history[indexPath.row]
        detailVC.viewModel = ClientViewModel(project: selectedHistory)
        navigationController?.pushViewController(detailVC, animated: true)
        
    }
    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    

}
extension StoricoClientViewController {

    func configureTableView() {
        Historytable.delegate = self
        Historytable.dataSource = self
    }

    func bindViewModel() {
        Historytable.reloadData()
    }

}
