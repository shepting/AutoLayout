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
    
    func commonInit() {
        for index in 1...100 {
            messages.insert(Message(), atIndex: 0)
        }
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 100
    }
    
    override func viewDidAppear(animated: Bool) {
        self.tableView.reloadData()
    }


    // MARK: - Table view data source

    override func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell = tableView.dequeueReusableCellWithIdentifier("messageCell", forIndexPath: indexPath) as MessageCell

        // Configure the cell...
        let message = messages[indexPath.row]
        cell.configureWithMessage(message)
        
        return cell
    }
}
