//
//  FriendListViewController.swift
//  newProject
//
//  Created by serge on 15/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FriendListViewController: UIViewController {
    private let friendImageSegue = "friendImageSegue"
    
    var friends = ["Снежана", "Полина", "Кларисса"]
    var imagesOfFriends = [UIImage(named:"001.jpg")!, UIImage(named: "002.jpg")!, UIImage(named:"003.jpg")!]
    
    @IBOutlet weak var friendListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendListTableView.dataSource = self
        
    }
//    передаю в коллекшн вью номер данные из ячейки тэйбл вью
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = friendListTableView.indexPathForSelectedRow
        print(indexPath![1])
        if let frCol = segue.destination as? FriendCollection {
            frCol.image = imagesOfFriends[indexPath!.row]
        }
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
        return cell
    }

}
