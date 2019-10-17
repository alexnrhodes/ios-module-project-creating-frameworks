//
//  LoadingViewController.swift
//  LoadingUITest
//
//  Created by Alex Rhodes on 10/16/19.
//  Copyright © 2019 Alex Rhodes. All rights reserved.
//

import UIKit
import LoadingUI

class LoadingViewController: UIViewController {
    
    @IBOutlet weak var loadingView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let customLoader = CustomLoadingView()
        
        customLoader.myTrackLayerColor = #colorLiteral(red: 0.6824983954, green: 0.920283556, blue: 0.9048162103, alpha: 1)
        customLoader.shapeLayerColor = #colorLiteral(red: 0, green: 0.930423677, blue: 0.789915204, alpha: 1)
        
        self.loadingView = customLoader
        view.addSubview(loadingView)
        
    }
}

