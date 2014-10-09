//
//  KeyboardAvoider.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/22/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class KeyboardAvoider: UIView {

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override init () {
        super.init()
        commonInit()
    }

    weak var scrollView: UIScrollView?
    var heightConstraint: NSLayoutConstraint = NSLayoutConstraint()
    
    func commonInit() {
        setTranslatesAutoresizingMaskIntoConstraints(false)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
        heightConstraint = self.constraintWithFormat("V:[self(0)]", views:["self": self])
        addConstraint(heightConstraint)
        self.addVisualConstraints("H:[self(300@250)]", views: ["self":self]) // Low priority default width
    }
    
    func keyboardWillShow(notification: NSNotification) {
        // Save the height of keyboard and animation duration
        let userInfo: NSDictionary = notification.userInfo!
        let endFrame: NSValue = userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue
        let keyboardRect: CGRect = endFrame.CGRectValue()
        let convertedRect = convertRect(keyboardRect, fromView: nil) // Convert from window coordinates
        let height = CGRectGetHeight(convertedRect)
        heightConstraint.constant = height
        if let scrollView = scrollView {
            scrollView.contentInset = UIEdgeInsetsMake(0, 0, height, 0)
        }
        
        animateSizeChange()
    }
    
    func keyboardWillHide(notification: NSNotification) {
        heightConstraint.constant = 0.0
        animateSizeChange()
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSizeMake(320, UIViewNoIntrinsicMetric)
    }
    
    func animateSizeChange() {
        self.setNeedsUpdateConstraints()
        
        // Animate transition
        UIView.animateWithDuration(0.3, animations: {
            self.superview!.layoutIfNeeded()
        })
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
}
