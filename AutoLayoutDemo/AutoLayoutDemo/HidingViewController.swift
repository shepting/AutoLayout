//
//  HidingViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/20/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit
import ExperimentalViews

class HidingViewController: UIViewController {
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: PaddedView!
    @IBOutlet weak var thirdView: UIView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.title = NSLocalizedString("Alignment", comment: "")
    }
    @IBAction func didTapHide() {
        println("Hide!")
        self.secondView.hidden = !self.secondView.hidden
        
        println(self.secondView.intrinsicContentSize())
    }

    @IBAction func didDragSlider(slider: UISlider) {
        let value = slider.value * 20
        self.secondView.padding = CGFloat(value)
        
        self.secondView.invalidateIntrinsicContentSize()
        self.secondView.layoutIfNeeded()
        
        println("Padding: \(self.secondView.padding)")
        println("Base height: \(self.secondView.baseHeight)")
        println("Intrinsic size height: \(self.secondView.intrinsicContentSize().height)")
        println("Frame height: \(self.secondView.frame.size.height)")
    }
}

