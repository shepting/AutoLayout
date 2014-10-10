//
//  DemoView.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 9/1/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

@IBDesignable class DemoView: UIView, DebugPrintable, Printable {
    
    override func didMoveToSuperview() {
        self.backgroundColor = UIColor.blueColor()
    }

    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    override var debugDescription: String { get { return "BlueView" } }
    
    override var description: String { get { return "BlueViewRelease" } }
    
}
