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
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.blue.cgColor, UIColor.yellow.cgColor]
//        олдово
//        gradientLayer.locations = [0 as NSNumber, 1 as NSNumber]
        gradientLayer.locations = [0, 1]
        gradientLayer.startPoint = CGPoint(x: 1, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        
        tempView.layer.addSublayer(gradientLayer)
        gradientLayer.frame = tempView.bounds


        
        tableView.dataSource = self
        
        print(login)
        
//        играем с вьюхой
        tempView.layer.borderWidth = 2
        tempView.layer.borderColor = UIColor.red.cgColor
//        tempView.layer.masksToBounds = true
//        tempView.layer.cornerRadius = 100
        tempView.layer.shadowRadius = 15
        tempView.layer.shadowColor = UIColor.black.cgColor
        tempView.layer.shadowOffset = CGSize.zero
        tempView.layer.shadowOpacity = 0.5
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
