//
//  SelectProjectDataSourse+Delegata.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 13/07/2026.
//
//
//  SelectProjectViewController+TableView.swift
//

import UIKit
extension SelectProjectViewController: UITableViewDelegate,UITableViewDataSource {

    func tableView( _ tableView: UITableView,numberOfRowsInSection section: Int) -> Int {
        return viewModel.projects.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: "ProjectCell",
            for: indexPath
        ) as? SelectProjectTableViewCell else {
            return UITableViewCell()
        }

        let project = viewModel.projects[indexPath.row]
        cell.configure(with: project)

        return cell
    }
    func tableView( _ tableView: UITableView,didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow( at: indexPath, animated: true)
        let project = viewModel.projects[indexPath.row]
        print( "Selected:", project.title)
        guard let storyboard = storyboard,
              let vc = storyboard.instantiateViewController(
            withIdentifier: "FeaturesViewController" ) as? FeaturesViewController
        else {
            return
            }
        vc.selectedProject = project
        navigationController?.pushViewController(vc, animated: true)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 255
    }
    func tableView(_ tableView: UITableView,
                   heightForFooterInSection section: Int) -> CGFloat {
        return 16
    }

}
