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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = YellowTableViewCell()
        if indexPath.row < 2 {
            cell.contentView.backgroundColor = .purple
        } else {
            cell.contentView.backgroundColor = .green
        }
        return cell
    }
    
    
}
