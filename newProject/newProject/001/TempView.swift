//
//  TempView.swift
//  newProject
//
//  Created by serge on 11/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

class TempView: UIView {
    
//    не используем это
//    @IBInspectable var tempFloat: CGFloat = 0.0
    @IBInspectable var tempColor: UIColor = UIColor.red

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        guard let context = UIGraphicsGetCurrentContext() else {
            return
        }
        context.setFillColor(tempColor.cgColor)
//        context.fill(CGRect(x: 0, y: 0, width: 50, height: 50))
        context.setStrokeColor(tempColor.cgColor)
        context.move(to: CGPoint(x: 40, y: 20))
        context.addLine(to: CGPoint(x: 45, y: 40))
        context.addLine(to: CGPoint(x: 65, y: 40))
        context.addLine(to: CGPoint(x: 50, y: 50))
        context.addLine(to: CGPoint(x: 60, y: 70))
        context.addLine(to: CGPoint(x: 40, y: 55))
        context.addLine(to: CGPoint(x: 20, y: 70))
        context.addLine(to: CGPoint(x: 30, y: 50))
        context.addLine(to: CGPoint(x: 15, y: 40))
        context.addLine(to: CGPoint(x: 35, y: 40))
        context.closePath()
//        context.strokePath()
        context.fillPath()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
}
