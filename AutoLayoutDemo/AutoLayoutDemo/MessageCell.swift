//
//  MessageView.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/17/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class MessageCell: UITableViewCell {

    @IBOutlet var profile: UIImageView!
    @IBOutlet var textView: UITextView!
    @IBOutlet var timestamp: UILabel!
    @IBOutlet var like: UIButton!
    @IBOutlet var reply: UIButton!
    @IBOutlet var name: UILabel!
    
    func configureWithMessage(message: Message) {
        textView.text = message.text
        timestamp.text = message.timeAgo
        name.text = message.author.name
    }
}
