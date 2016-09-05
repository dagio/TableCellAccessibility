//
//  AppDelegate.swift
//  Table
//
//  Created by Damien Gavard on 05/09/16.
//  Copyright © 2016 Top Affiliate Publishing. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UISplitViewControllerDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        self.window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        self.window!.rootViewController = DumpTable()
        self.window!.makeKeyAndVisible()

        return true
    }
}
