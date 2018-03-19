//
//  AppDelegate.swift
//  Actions
//
//  Created by Tushar Chhabra on 2018-03-07.
//  Copyright © 2018 Tushar Chhabra. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

//        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        do {
            let _  = try Realm()
        } catch {
            print("Error initialising realm = \(error)")
        }
        
        return true
    }
    
}
