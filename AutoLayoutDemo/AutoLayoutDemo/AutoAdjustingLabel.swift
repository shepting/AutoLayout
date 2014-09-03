//
//  AutoAdjustingLabel.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/29/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class AutoAdjustingLabel: UILabel {

    override func layoutSubviews() {
        super.layoutSubviews()
        self.preferredMaxLayoutWidth = self.frame.size.width
        super.layoutSubviews()
    }

}
