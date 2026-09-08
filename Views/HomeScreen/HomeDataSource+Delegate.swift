//
//  HomeDataSource+Delegate.swift
//  Preventivo-APP&Web
//
//  Created by IFTS46 on 26/06/2026.
//
import UIKit

extension HomeViewController: UICollectionViewDataSource    {

    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return viewModel.response.statistics.count
        print("Items:", viewModel.response.statistics.count)

    }
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print(indexPath.item)
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: "HomeCell",
            for: indexPath
        ) as? HomeCollectionViewCell else {

            return UICollectionViewCell()

        }

        let statistic = viewModel.response.statistics[indexPath.item]
        cell.configure(with: statistic)

        return cell

    }

}
extension HomeViewController : UICollectionViewDelegate {
    
    func configureCollectionView() {
        HomeCollectionView.delegate = self
        HomeCollectionView.dataSource = self
        print("configureCollectionView Called")
    }
    func collectionView(_ collectionView: UICollectionView,
                        didSelectItemAt indexPath: IndexPath) {
        print(indexPath.item)
    }
    func bindViewModel() {
        HomeCollectionView.reloadData()
    }
}
