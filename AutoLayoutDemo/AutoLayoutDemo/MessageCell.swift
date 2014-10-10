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
        
        self.profile.layer.cornerRadius = 52.0/2
        self.profile.clipsToBounds = true
        self.profile.layer.borderWidth = 0.5;
        self.profile.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        NSURLSession.sharedSession().dataTaskWithURL(message.author.profileURL, completionHandler: {
            [unowned self] (data, response, error) -> Void in
            if (error != nil) {
                println("Error: ", error)
                return
            }
            
            dispatch_async(dispatch_get_main_queue(), {
                self.profile.image = UIImage(data: data)
//                self.name = 
            })

        }).resume()
        
    }
    
    override func prepareForReuse() {
        self.profile.image = nil;
    }
}
