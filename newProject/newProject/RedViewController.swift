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
        
        let maskLayer = CAShapeLayer()
        let starPath = UIBezierPath()
        starPath.move(to: CGPoint(x: 40, y: 20))
        starPath.addLine(to: CGPoint(x: 45, y: 40))
        starPath.addLine(to: CGPoint(x: 65, y: 40))
        starPath.addLine(to: CGPoint(x: 50, y: 50))
        starPath.addLine(to: CGPoint(x: 60, y: 70))
        starPath.addLine(to: CGPoint(x: 40, y: 55))
        starPath.addLine(to: CGPoint(x: 20, y: 70))
        starPath.addLine(to: CGPoint(x: 30, y: 50))
        starPath.addLine(to: CGPoint(x: 15, y: 40))
        starPath.addLine(to: CGPoint(x: 35, y: 40))
        starPath.close()
        starPath.stroke()
        maskLayer.path = starPath.cgPath // Тот path, с помощью которого рисовали звезду
        imageView.layer.mask = maskLayer

        
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
