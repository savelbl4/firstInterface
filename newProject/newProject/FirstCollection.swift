//
//  FirstCollection.swift
//  newProject
//
//  Created by serge on 09/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FirstCollection: UIViewController {

    @IBOutlet weak var firCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        firCollectionView.dataSource = self
    }
}

extension FirstCollection: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = firCollectionView.dequeueReusableCell(withReuseIdentifier: "Green", for: indexPath)
        return cell
    }
    
}
