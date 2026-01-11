//
//  AddGroupViewController.swift
//  newProject
//
//  Created by serge on 17/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class AddGroupViewController: UIViewController {
    
    @IBOutlet weak var addGroupTableView: UITableView!
    var groups = ["Кино", "Покемоны", "Ножи", "Планетарий"]
    var imagesOfGroups = [UIImage(named:"010.jpg")!, UIImage(named: "020.jpg")!, UIImage(named:"030.jpg")!, UIImage(named:"040.jpg")!]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addGroupTableView.dataSource = self

        // Do any additional setup after loading the view.
    }

}

extension AddGroupViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = AllGroupTableViewCell.className()
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! AllGroupTableViewCell
        cell.nameOfGroup.text = groups[indexPath.row]
        cell.imageOfGroup.image = imagesOfGroups[indexPath.row]
        return cell
    }
    
}
