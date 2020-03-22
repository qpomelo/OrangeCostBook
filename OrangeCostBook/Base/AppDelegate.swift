//
//  AppDelegate.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/9/6.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func initDatas() {
        
        
        UIApplication.shared.connectedScenes.compactMap { $0 as? UIWindowScene }.forEach { windowScene in
            
            windowScene.sizeRestrictions?.minimumSize = CGSize(width: 300, height: 480)
            windowScene.sizeRestrictions?.maximumSize = CGSize(width: 400, height: 1024)
        }
        
        // 初始化内置类型
        /*do {
            let typesJsonPath = Bundle.main.url(forResource: "InternalTypes", withExtension: "json")!
            let typeAndGroup = try JSONDecoder().decode(TypeGroups.self, from: Data.init(contentsOf: typesJsonPath))
            CostType.shared = typeAndGroup
        } catch {
            exit(0)
        }*/
        
        
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        initDatas()
        
        
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

