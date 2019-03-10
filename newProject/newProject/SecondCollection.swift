//
//  SecondCollection.swift
//  newProject
//
//  Created by serge on 09/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class SecondCollection: UIViewController {
    
    var cities: Array<String> = []

    @IBOutlet weak var secCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secCollectionView.dataSource = self
    }
    
    @IBAction func didSelectNewCity(segue: UIStoryboardSegue) {
        if let vc = segue.source as? OneTableViewController {
            guard let indexPath = vc.tableView.indexPathForSelectedRow else {
                return
            }
            let newCity = vc.cities[indexPath.row]
            cities.append(newCity)
            secCollectionView.reloadData()
        }
    }

}

extension SecondCollection: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let id = RedCollectionViewCell.className()
        let cell = secCollectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! RedCollectionViewCell
        cell.cityLabel.text = cities[indexPath.row]
        return cell
    }
    
}

