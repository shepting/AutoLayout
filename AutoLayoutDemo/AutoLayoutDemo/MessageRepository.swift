//
//  MessageRepository.swift
//  AutoLayoutDemo
//
//  Created by Isaac Rosenberg on 9/27/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import Foundation
import Alamofire

class MessageRepository {
    
    init() {
        loadUsers(40)
    }
    func loadMessages(numMessages: Int) -> [Message] {
        
        println(results)
        
    }
    
    func loadUsers(numUsers: Int) -> [User] {
        // hit network
        var results = Alamofire.request(.GET, "http://api.randomuser.me/", parameters: ["results": 40])
            .responseJSON { (_, _, JSON, _) in
                println(JSON)
                
            }
    }
    
    func nextUser() -> User {
        // return next user 
        
    }
}