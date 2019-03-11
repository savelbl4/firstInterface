//
//  FirstTable.swift
//  newProject
//
//  Created by serge on 09/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class FirstTable: UIViewController {

    @IBOutlet weak var firTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firTableView.dataSource = self
        
    }
    
}

extension FirstTable : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = GreenTableViewCell.className()
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! GreenTableViewCell
//        cell.textLabel?.text = cities[indexPath.row]
//        cell.contentView.backgroundColor = .green
        return cell
    }
}
