//
//  OneTableViewController.swift
//  newProject
//
//  Created by serge on 10/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class OneTableViewController: UITableViewController {
    
    var cities = ["Стамбул", "Симферополь", "Самара", "Сыктывкар", "Самарканд", "Санпауло", "Сургут", "Санфранцыско", "Сумы", "Сингапур", "Салоу", "София", "Сусс", "Санья"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let id = RedTableViewCell.className()
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! RedTableViewCell
        cell.textLabel?.text = cities[indexPath.row]
        return cell
    }

}
