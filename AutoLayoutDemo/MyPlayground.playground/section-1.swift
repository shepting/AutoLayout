// Playground - noun: a place where people can play

import UIKit
import Alamofire
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely()

Alamofire.request(.GET, "http://api.randomuser.me", parameters: ["results": "40"])
    .responseString{ (_,_, string, _) in
        println(string)
}

Alamofire.request(.GET, "http://baconipsum.com/api/?type=meat-and-filler")
    .responseJSON { (_, _, JSON, _) in
        println(JSON)
    }

Alamofire.request(.GET, "http://api.randomuser.me", parameters: ["results": "40"])
    .response { (request, response, data, error) in
        println(request)
        println(response)
        println(data)
        var hello = data as NSData
        let str = NSString(data: hello, encoding: NSUTF8StringEncoding)
            var error: NSError?                let jsonDict = NSJSONSerialization.JSONObjectWithData(hello, options: nil, error: &error) as NSDictionary
}