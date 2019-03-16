//
//  FriendListViewController.swift
//  newProject
//
//  Created by serge on 15/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController {
    var friends = ["Снежана", "Полина", "Кларисса"]
    var imagesOfFriends = [UIImage(named:"001.jpg")!, UIImage(named: "002.jpg")!, UIImage(named:"003.jpg")!]
    @IBOutlet weak var friendListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendListTableView.dataSource = self
        
    }
}

extension FriendListViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = FriendTableViewCell.className()
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! FriendTableViewCell
        cell.friendName.text = friends[indexPath.row]
        cell.friendImage.image = imagesOfFriends[indexPath.row]
        //        cell.contentView.backgroundColor = .green
        return cell
    }
}
