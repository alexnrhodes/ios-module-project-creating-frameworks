//
//  CustomLoadingVoewView.swift
//  LoadingUI
//
//  Created by Alex Rhodes on 10/16/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit

class CustomLoadingVoewView: UIView {
    
    private let myTrackLayer = CAShapeLayer()
    private let shapeLayer = CAShapeLayer()
    
    private var myTrackLayerColor = #colorLiteral(red: 0.6226254106, green: 0.994772613, blue: 0.7579465508, alpha: 1) {
        didSet {
            myTrackLayer.strokeColor = myTrackLayerColor.cgColor
        }
    }
    
    private var shapeLayerColor = #colorLiteral(red: 0, green: 1, blue: 0.5513247848, alpha: 1) {
        didSet {
            shapeLayer.strokeColor = shapeLayerColor.cgColor
        }
    }
    
    fileprivate func createCircularPath() {
        self.backgroundColor = UIColor.clear.cgColor
        
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width/2, y: frame.size.height/2), radius: 100, startAngle: -CGFloat.pi/2, endAngle: CGFloat.pi * 2, clockwise: true)
        
        // Formatting track layer
        myTrackLayer.path = circularPath.cgPath
        myTrackLayer.lineWidth = 10
        myTrackLayer.strokeEnd = 0
        myTrackLayer.lineCap = .round
        myTrackLayer.fillColor = UIColor.clear.cgColor
        
        layer.addSublayer(myTrackLayer)
        
        // Formatting ShapeLayer
        shapeLayer.path = circularPath.cgPath
        shapeLayer.lineWidth = 10
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = .round
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        layer.addSublayer(shapeLayer)
        
         view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    func alltheothershit() {
        
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: frame.size.width/2, y: frame.size.height/2), radius: 100, startAngle: -CGFloat.pi / 2, endAngle: CGFloat.pi * 2, clockwise: true)
        
        // create my track layer
        let myTrackLayer = CAShapeLayer()
        
        myTrackLayer.path = circularPath.cgPath
        myTrackLayer.lineWidth = 10
        myTrackLayer.strokeEnd = myTrackLayerColor.cgColor
        myTrackLayer.strokeEnd = 0
        myTrackLayer.lineCap = .round
        myTrackLayer.fillColor = UIColor.clear.cgColor
        
        view.layer.addSublayer(myTrackLayer)
        
        // Formatting ShapeLayer
        shapeLayer.path = circularPath.cgPath
        shapeLayer.lineWidth = 10
        shapeLayer.strokeEnd = myTrackLayerColor.cgColor
        shapeLayer.strokeEnd = 0
        shapeLayer.lineCap = .round
        shapeLayer.fillColor = UIColor.clear.cgColor
        
        layer.addSublayer(shapeLayer)
        
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


