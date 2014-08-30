//
//  PaddedImageView.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/21/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

@IBDesignable
internal class PaddedImageView: UIView {
    var imageView = UIImageView()
    @IBInspectable internal var padding: CGFloat = 2
    var heightConstraint = NSLayoutConstraint()
    
    override init(frame: CGRect) {
        heightConstraint = NSLayoutConstraint(item: imageView, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 0.0, constant: 20)
        super.init(frame: frame)
        
    }
    
    // MARK: insets
    
    override func alignmentRectInsets() -> UIEdgeInsets {
        return UIEdgeInsetsMake(-padding, 0, -padding, 0)
    }
    
    override func frameForAlignmentRect(alignmentRect: CGRect) -> CGRect {
        return super.frameForAlignmentRect(alignmentRect)
    }
    
    override func alignmentRectForFrame(frame: CGRect) -> CGRect {
        return super.alignmentRectForFrame(frame)
    }
    
    // MARK: everything else
    
    override var hidden: Bool {
        didSet {
            if (hidden) {
                self.heightConstraint.constant = 0
            } else {
                self.heightConstraint.constant = 20
            }
        }
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.clipsToBounds = false
        self.backgroundColor = UIColor.blueColor()
        self.layer.shadowColor = UIColor.blackColor().CGColor
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        self.layer.masksToBounds = false
        self.layer.shadowOpacity = 0.9
        
        let largeLight = UIView()
        largeLight.backgroundColor = UIColor.greenColor()
        largeLight.frame = CGRectMake(0, -padding, 0, frame.height + padding * 2)
        self.addSubview(largeLight)
    }

}
