//
//  LoadingUIViewController.swift
//  LoadingUI
//
//  Created by Alex Rhodes on 10/16/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class LoadingUIViewController: UIViewController {

    let shapeLayer = CAShapeLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let center = view.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi * 2, clockwise: true)

        // create my track layer
        let myTrackLayer = CAShapeLayer()
        
        myTrackLayer.path = circularPath.cgPath
        myTrackLayer.strokeColor = #colorLiteral(red: 0.6226254106, green: 0.994772613, blue: 0.7579465508, alpha: 1)
        myTrackLayer.lineWidth = 10
        myTrackLayer.strokeEnd = 0
        myTrackLayer.lineCap = .round
        myTrackLayer.fillColor = UIColor.clear.cgColor
        
        view.layer.addSublayer(myTrackLayer)

        // Formatting ShapeLayer
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = #colorLiteral(red: 0, green: 1, blue: 0.5513247848, alpha: 1)
        shapeLayer.lineWidth = 10
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = .round
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        view.layer.addSublayer(shapeLayer)
        
        // Adding tap gesture recodnizer
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        
    }
    
    @objc private func handleTap() {
        print("Attempting to animate")
        
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urSoBasic")
    }

}
