//
//  AppDelegate.swift
//  AutoLayoutDemo
//
//  Created by Steven Hepting on 8/14/14.
//  Copyright (c) 2014 Protospec. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?


    func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool {

//        DCIntrospect.sharedIntrospector().start()
//        FLEXManager.sharedManager().showExplorer()
        
        let oneMB = 1024*1024
        let cache = NSURLCache(memoryCapacity: 100*oneMB, diskCapacity: 200*oneMB, diskPath: "urlCache")
        NSURLCache.setSharedURLCache(cache)
        return true
    }

}

