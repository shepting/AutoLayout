//
//  PaddedView.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/29/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit


@IBDesignable public class PaddedView: UIView {
    @IBInspectable public var padding:CGFloat = 20.0

    
    
    public override func alignmentRectInsets() -> UIEdgeInsets {
        println("Padding: \(padding)")
        return UIEdgeInsetsMake(-padding, 0, -padding, 0)
    }
    
    
    override public func intrinsicContentSize() -> CGSize {
        let height: CGFloat = 32 + 2 * padding
        return CGSize(width: 250, height: height)
    }
//    public override func frameForAlignmentRect(alignmentRect: CGRect) -> CGRect {
//        return super.frameForAlignmentRect(alignmentRect)
//    }
//    
//    public override func alignmentRectForFrame(frame: CGRect) -> CGRect {
//        return super.alignmentRectForFrame(frame)
//    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
}
