//
//  GroupListViewController.swift
//  newProject
//
//  Created by serge on 17/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class GroupListViewController: UIViewController {
    
    var groups = ["Кино"]
    var imagesOfGroups = [UIImage(named:"010.jpg")!]

    @IBOutlet weak var groupListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            let addGroupViewController = segue.source as! AddGroupViewController
            if let indexPath = addGroupViewController.addGroupTableView.indexPathForSelectedRow {
                let group = addGroupViewController.groups[indexPath.row]
                let image = addGroupViewController.imagesOfGroups[indexPath.row]
                if !groups.contains(group) {
                    groups.append(group)
                    imagesOfGroups.append(image)
                    groupListTableView.reloadData()
                }
            }
        }
    }
}

extension GroupListViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = GroupTableViewCell.className()
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! GroupTableViewCell
        cell.nameOfGroup.text = groups[indexPath.row]
        cell.imageOfGroup.image = imagesOfGroups[indexPath.row]
        return cell
    }
    // удаление группы из списка
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            groups.remove(at: indexPath.row)
            imagesOfGroups.remove(at: indexPath.row)
            // И удаляем строку из таблицы
            groupListTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }

}
