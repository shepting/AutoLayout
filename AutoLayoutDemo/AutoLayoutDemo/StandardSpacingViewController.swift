//
//  StandardSpacingViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/24/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class StandardSpacingViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let views: Dictionary<String, UIView> = ["view1": view1,
                     "view2": view2,
                     "view3": view3,
                     "view4": view4]
        
        // Clean auto-generator IB constraints
//        self.view.removeConstraints(self.view.constraints())
        
        // Horizontal
        self.view.addVisualConstraints("H:|-[view1(60)]-(>=0)-[view2(60)]-|", views: views)
        self.view.addVisualConstraints("H:|-[view3]-[view4(60)]-|", views: views)
        
        // Vertical
//        self.view.addVisualConstraints("V:|-[view1(60)]-80-[view3(60)]", views: views)
//        self.view.addVisualConstraints("V:|-[view2(60)]-80-[view4(60)]", views: views)

        self.view.addVisualConstraints("V:|-80-[view1(60)]-80-[view3(60)]", views: views)
        self.view.addVisualConstraints("V:|-80-[view2(60)]-80-[view4(60)]", views: views)
    }

}
