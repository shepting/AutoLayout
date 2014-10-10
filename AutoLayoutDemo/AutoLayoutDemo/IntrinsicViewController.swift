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
        // Blue views with intrinsiceContentSize
        println("\nGray (No Intrinsic Size) Constraints: " + NSStringFromCGSize(self.bigView.intrinsicContentSize()))
        for constraint in self.bigView.constraints() {
            println("  \(constraint)")
        }
        
        println(self.blueView)
        
        // Blue views with intrinsiceContentSize
        println("\nBlue (Intrinsic Size) Constraints: " + NSStringFromCGSize(self.blueView.intrinsicContentSize()))
        for constraint in self.blueView.constraints() {
            println("  \(constraint)")
        }
        
        // Brown view with no Auto Layout (just AutoResizingMask)
        let newView = UIView(frame: CGRectMake(100, 300, 120, 200))
        newView.setTranslatesAutoresizingMaskIntoConstraints(true)
        newView.backgroundColor = UIColor.brownColor()
        self.view.addSubview(newView)
        println("\nBrown (AutoResizingMask) Constraints:" + NSStringFromCGSize(newView.intrinsicContentSize()))
        for constraint in newView.constraints() {
            println("  \(constraint)")
        }
        println(newView.autoresizingMask)
        newView.addVisualConstraints("H:[brown(115)]", views: ["brown":newView])

    }
}
