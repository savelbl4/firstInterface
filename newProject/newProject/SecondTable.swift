//
//  SecondTable.swift
//  newProject
//
//  Created by serge on 09/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class SecondTable: UIViewController {

    @IBOutlet weak var secTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secTableView.dataSource = self

    }

}

extension SecondTable : UITableViewDataSource {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Red", for: indexPath)
        
        cell.contentView.backgroundColor = .red
        
        return cell
    }
}
