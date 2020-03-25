//
//  AppDelegate.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/6.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import UIKit
#if !targetEnvironment(macCatalyst)
import Firebase
#endif
import GoogleMobileAds

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func initDatas() {
        
        // 加载 Google AdMob
        GADMobileAds.sharedInstance().start(completionHandler: nil)
        
        // 初始化内置类型
        /*do {
            let typesJsonPath = Bundle.main.url(forResource: "InternalTypes", withExtension: "json")!
            let typeAndGroup = try JSONDecoder().decode(TypeGroups.self, from: Data.init(contentsOf: typesJsonPath))
            CostType.shared = typeAndGroup
        } catch {
            exit(0)
        }
        */
        _ = DBInit.initDb()
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        initDatas()
        #if targetEnvironment(simulator)
            print("App're running in a simulator")
        #endif
        
        #if targetEnvironment(macCatalyst)
            print("App're running on a Mac or Hackintosh")
        #endif
        
        #if !targetEnvironment(macCatalyst)
            FirebaseApp.configure()
        #endif
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        var config = UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        
        
        initDatas()
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        
        initDatas()
    }


}

