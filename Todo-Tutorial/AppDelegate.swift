//
//  AppDelegate.swift
//  Todo-Tutorial
//
//  Created by mitchell hudson on 3/27/15.
//  Copyright (c) 2015 mitchell hudson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    
    func appStyles() {
        let color1 = UIColor(red: 40/255, green: 45/255, blue: 45/255, alpha: 1)
        let color2 = UIColor(red: 54/255, green: 61/255, blue: 61/255, alpha: 1)
        let color3 = UIColor(white: 146/255, alpha: 1)
        let color4 = UIColor(red: 231/255, green: 77/255, blue: 75/255, alpha: 1)
        
        UINavigationBar.appearance().barStyle = UIBarStyle.Black
        UINavigationBar.appearance().tintColor = color4
        UINavigationBar.appearance().translucent = false
        
        UITableView.appearance().backgroundColor = color1
        UITableView.appearance().separatorColor = color2
        
        UITableViewCell.appearance().backgroundColor = color1
        UITableViewCell.appearance().tintColor = color4
        
        let cellBackground = UIView()
        cellBackground.backgroundColor = color2
        UITableViewCell.appearance().selectedBackgroundView = cellBackground
        
    }
    

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        appStyles()
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

