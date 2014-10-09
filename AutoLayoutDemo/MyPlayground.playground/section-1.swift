// Playground - noun: a place where people can play

import UIKit
import Alamofire
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely()

Alamofire.request(.GET, "http://api.randomuser.me", parameters: ["results": "3"])
    .response { (request, response, data, error) in
        var hello = data as NSData
        let str = NSString(data: hello, encoding: NSUTF8StringEncoding)
        var error: NSError?
        var dictResults = NSJSONSerialization.JSONObjectWithData(hello, options:nil, error: &error) as NSDictionary
        print(dictResults)
        
        print(dictResults["results"])
        let first = dictResults["results"]?.firstObject
        print(first)
    }