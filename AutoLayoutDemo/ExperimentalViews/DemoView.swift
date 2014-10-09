//
//  DemoView.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 9/1/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

@IBDesignable class DemoView: UIView {
    
    override func didMoveToSuperview() {
        self.backgroundColor = UIColor.blueColor()
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    
}
