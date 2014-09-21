//
//  AmbiguousViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 9/21/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class AmbiguousViewController: UIViewController {

    var ambiguousView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ambiguousView.setTranslatesAutoresizingMaskIntoConstraints(false)
        self.ambiguousView.backgroundColor = UIColor.redColor()
        self.view.addSubview(ambiguousView)
        
        let views: Dictionary<String, UIView> = ["view":self.ambiguousView]
        self.view.addVisualConstraints("H:[view(200)]", views: views)
        self.view.addVisualConstraints("V:[view(50)]", views: views)
        self.view.addVisualConstraints("V:|-150-[view]", views: views)

        println("Loaded.")
    }

}
