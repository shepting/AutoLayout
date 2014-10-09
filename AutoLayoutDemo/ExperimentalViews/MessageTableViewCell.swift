//
//  MessageTableViewCell.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 9/27/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

@IBDesignable class MessageTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        like.setTitle("like button", forState: UIControlState.Normal)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBOutlet var profile: UIImageView!
    @IBOutlet var textView: UITextView!
    @IBOutlet var timestamp: UILabel!
    @IBOutlet var like: UIButton!
    @IBOutlet var reply: UIButton!
    @IBOutlet var name: UILabel!
    
    @IBInspectable var likeText: String?
    
    func configureWithMessage(message: Message) {
        textView.text = message.text
        timestamp.text = message.timeAgo
        name.text = message.author!.name
        
        self.profile.layer.cornerRadius = 52.0/2
        self.profile.clipsToBounds = true
        self.profile.layer.borderWidth = 0.5;
        self.profile.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        NSURLSession.sharedSession().dataTaskWithURL(message.author!.profileURL, completionHandler: {
            [unowned self] (data, response, error) -> Void in

            if let error = error {
                println("Error: ", error)
                return
            }
            
            let errorMessage = error.localizedDescription ?? error.description ?? "poop"
            
            dispatch_async(dispatch_get_main_queue(), {
                self.profile.image = UIImage(data: data)
            })
            
        }).resume()
        
    }
    
    override func prepareForReuse() {
        self.profile.image = nil;
    }
    
    override func prepareForInterfaceBuilder() {
        self.like.setTitle(self.likeText, forState: UIControlState.Normal)
    }



}
