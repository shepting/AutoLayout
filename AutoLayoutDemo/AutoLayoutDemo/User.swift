//
//  User.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/28/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String
    let profileURL: NSURL
    
    override init() {
        let names = ["Lori Rainey",
            "Fannie McCallister",
            "Eva Johnson",
            "Danny Kip",
            "John McKenzie",
            "Lawrence Crimmins",
            "Sumit Kumar"];
        let index = Int(arc4random_uniform(UInt32(names.count)))
        name = names[index]
        
        let profileURLs = ["http://api.randomuser.me/portraits/women/9.jpg",
            "http://api.randomuser.me/portraits/women/5.jpg",
            "http://api.randomuser.me/portraits/women/2.jpg",
            "http://api.randomuser.me/portraits/men/5.jpg",
            "http://api.randomuser.me/portraits/men/2.jpg",
            "http://api.randomuser.me/portraits/men/7.jpg",
            "http://api.randomuser.me/portraits/men/6.jpg"]
        let url = NSURL(string: profileURLs[index])
        profileURL = url
    }
}
