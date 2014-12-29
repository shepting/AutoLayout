//
//  MessagesDemoTableViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/28/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class MessagesDemoTableViewController: UITableViewController {
    var messages: [Message] = Array()

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Simulate loading messages from cache/network etc.
        for index in 1...100 {
            messages.insert(Message(), atIndex: 0)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Specifically set the rowHeight
        self.tableView.rowHeight = UITableViewAutomaticDimension
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Grab the message and the cell
        let message = messages[indexPath.row]
        let cell = tableView.dequeueReusableCellWithIdentifier("messageCell", forIndexPath: indexPath) as MessageCell

        // Configure the cell
        cell.configureWithMessage(message)
        
        return cell
    }
}
