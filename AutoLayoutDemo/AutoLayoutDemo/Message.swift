//
//  Message.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/28/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//
//  Hipster Ipsum: http://hipsum.co/
//  Corporate Ipsum: http://www.cipsum.com/
//

import UIKit

internal class Message: NSObject {
    internal let text: String
    internal let timeAgo: String
    let author: User = User()
    
    override init() {
        let samplePosts = ["Locavore Shoreditch semiotics, sustainable chia fashion axe stumptown brunch slow-carb.",
            "Scenester gluten-free Bushwick Truffaut sustainable chia iPhone, ethical food truck.",
            "Gluten-free deep v XOXO Portland sriracha PBR&B McSweeney's skateboard Schlitz VHS slow-carb iPhone. Typewriter aesthetic vegan Cosby sweater, Pinterest ethical mlkshk shabby chic viral Banksy pickled.",
            "Letterpress artisan VHS sartorial fixie.",
            "Keytar hoodie authentic cliche, roof party chia deep v XOXO Etsy fap. Stumptown asymmetrical ethnic, messenger bag readymade synth gentrify brunch food truck irony banjo DIY fingerstache yr.",
            "Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.",
            "Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions."
        ]
        let index = Int(arc4random_uniform(UInt32(samplePosts.count)))

        text = samplePosts[index]
    
        timeAgo = String(format: "%d h", arc4random_uniform(24))
    }
}
