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
//        смещение
        let translation = CGAffineTransform(translationX: 150, y: 0)
//        увеличение
        let scale = CGAffineTransform(scaleX: 1.5, y: 1)
//        поворот
        let rotation = CGAffineTransform(rotationAngle: .pi / 4)
        
        tableView.dataSource = self
        
        imageView.transform = scale
        tempView.transform = rotation
        tableView.transform = translation
        
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
