//
//  IntrinsicViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 9/1/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import ExperimentalViews

class IntrinsicViewController: UIViewController {

    @IBOutlet weak var bigView: UIView!
    @IBOutlet weak var blueView: DemoView!
    
    override func viewDidAppear(animated: Bool) {
        println("Big Size: %@", NSStringFromCGSize(self.bigView.intrinsicContentSize()))
        println("Blue Size: %@", NSStringFromCGSize(self.blueView.intrinsicContentSize()))
        print(self.blueView.constraints())

    }
}
