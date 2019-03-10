//
//  FirstCollection.swift
//  newProject
//
//  Created by serge on 09/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FirstCollection: UIViewController {
    
    let cities = ["Стамбул", "Симферополь", "Самара", "Сыктывкар", "Самарканд", "Сан-Паулу", "Сургут", "Сан-Франциско", "Сумы", "Сингапур", "Салоу", "София", "Сусс", "Санья"]

    @IBOutlet weak var firCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        firCollectionView.dataSource = self
    }
}

extension FirstCollection: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let id = GreenCollectionViewCell.className()
        let cell = firCollectionView.dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! GreenCollectionViewCell
        cell.cityLabel.text = cities[indexPath.row]
        return cell
    }
    
}

extension NSObject {
    static func className() -> String {
        return String(describing: self)
    }
}
