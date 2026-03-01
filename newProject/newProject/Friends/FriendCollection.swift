//
//  FriendCollection.swift
//  newProject
//
//  Created by serge on 16/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FriendCollection: UIViewController {
    
    var image: UIImage?

    @IBOutlet weak var friendCollectionVeiw: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendCollectionVeiw.dataSource = self

        // Do any additional setup after loading the view.
    }

}

extension FriendCollection : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let id = FriendCollectionViewCell.className()
        let cell = friendCollectionVeiw.dequeueReusableCell(withReuseIdentifier: id, for: indexPath) as! FriendCollectionViewCell
        
        cell.friendImageInCollection.image = image
        return cell
    }
    
    
}
