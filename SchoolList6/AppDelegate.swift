//
//  AppDelegate.swift
//  SchoolList6
//
//  Created by Mathieu Dreyer on 14/10/2020.
//  Copyright © 2020 Telecom Nancy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

 var window: UIWindow?
var model: StudentModel?;
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        model = StudentModel()
        return true
    }


}

