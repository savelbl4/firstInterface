//
//  SecondCollection.swift
//  newProject
//
//  Created by serge on 09/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class SecondCollection: UIViewController {

    @IBOutlet weak var secCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        secCollectionView.dataSource = self
    }

}

extension SecondCollection: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = secCollectionView.dequeueReusableCell(withReuseIdentifier: "Red", for: indexPath)
        return cell
    }
    
}
