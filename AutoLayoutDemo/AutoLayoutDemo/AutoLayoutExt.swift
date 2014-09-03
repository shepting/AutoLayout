//
//  AutoLayoutExt.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/15/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

extension UIView {

    func addVisualConstraints(format: String!, views: Dictionary <String, UIView>) {
        self.addVisualConstraints(format, options: nil, views: views)
    }

    func addVisualConstraints(format: String!, options: NSLayoutFormatOptions, views: Dictionary <String, UIView>) {
        let constraints: [AnyObject] = NSLayoutConstraint.constraintsWithVisualFormat(format, options: options, metrics: nil, views: views)
        self.addConstraints(constraints)
    }

    func constraintWithFormat(format: String, views: [String: UIView]) -> NSLayoutConstraint {
        let constraint = NSLayoutConstraint.constraintsWithVisualFormat(format, options: NSLayoutFormatOptions.allZeros, metrics: nil, views: views).first as NSLayoutConstraint

        return constraint
    }

    func description() -> NSString {
        return "MyView"
    }
}
