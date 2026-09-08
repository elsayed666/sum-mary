//
//  Platform DataSourse+Delegata.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
import UIKit
extension PlatformViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.platforms.count
    }
    
    func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =
        tableView.dequeueReusableCell(
            withIdentifier: "ProjectCell",
            for: indexPath
        ) as! PlatformTableViewCell

        let platform = viewModel.platforms[indexPath.row]
        cell.configure(with: platform)
        return cell
    }
    func tableView( _ tableView: UITableView, didSelectRowAt indexPath: IndexPath ) {
        let platform = viewModel.platforms[indexPath.row]
        let vc = storyboard?.instantiateViewController( withIdentifier:"SelectProjectViewController")
        as!
        SelectProjectViewController
        vc.viewModel =
        SelectProjectViewModel(
            platform: platform
        )
        navigationController?.pushViewController( vc, animated: true )
    }
    func tableView(_ tableView: UITableView,
                    heightForFooterInSection section: Int) -> CGFloat {
         return 14
     }

    
}
