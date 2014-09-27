//
//  TextSizingViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 9/1/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class TextSizingViewController: UIViewController {

    @IBOutlet var regularLabel: UILabel!
    @IBOutlet var sizingLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.slider.setValue(1.0, animated:false)
        // Do any additional setup after loading the view.
    }

    @IBOutlet var regularWidth: NSLayoutConstraint!
    @IBOutlet var sizingWidth: NSLayoutConstraint!
    @IBAction func sliderValueChanged(slider: UISlider) {
        let width = CGFloat(slider.value * 320)
        self.regularWidth.constant = width
//        self.sizingWidth.constant = width
        
    }
}
