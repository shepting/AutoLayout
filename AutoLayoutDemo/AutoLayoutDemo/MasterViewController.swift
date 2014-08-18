//
//  MasterViewController.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/14/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var objects = NSMutableArray()

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        println("Segue: %@", segue.identifier)
    }

}

