//
//  RedViewController.swift
//  newProject
//
//  Created by serge on 01/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var tempView: TempView!
    @IBOutlet weak var tableView: UITableView!
    var login: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(login)
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapOnView(sender:)))
//        let gestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(tapOnView(sender:)))
        tempView.addGestureRecognizer(gestureRecognizer)
        
//        tempView.layer.borderWidth = 2
//        tempView.layer.borderColor = UIColor.red.cgColor
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 50
        
//        отображаем ячейки tableView
        tableView.dataSource = self
    }
    
    @objc func tapOnView(sender: UIGestureRecognizer) {
        print("Привет!!")
    }
    
}

extension RedViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 2
        } else {
            return 4
        }
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
