//
//  HidingViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/20/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class HidingViewController: UIViewController {
    @IBOutlet weak var secondView: UIView!
    
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

}
