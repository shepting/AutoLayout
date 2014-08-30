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
    @IBOutlet weak var secondView: PaddedView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapHide() {
        println("Hide!")
        self.secondView.hidden = !self.secondView.hidden
        
        println(self.secondView.intrinsicContentSize())
    }

    @IBAction func didDragSlider(slider: UISlider) {
        let value = slider.value * 20
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            self.secondView.padding = CGFloat(value)
            self.view.setNeedsLayout()
            self.view.layoutIfNeeded()
            
            println("Size: \(self.secondView.intrinsicContentSize().height)")
        })
    }
}

