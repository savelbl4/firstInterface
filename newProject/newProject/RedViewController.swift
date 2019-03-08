//
//  RedViewController.swift
//  newProject
//
//  Created by serge on 01/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var login: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        print(login)
    }
}

extension RedViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Yellow", for: indexPath)
        if indexPath.section == 0 {
            cell.contentView.backgroundColor = .green
        } else {
            cell.contentView.backgroundColor = .yellow
        }
        return cell
    }
}
