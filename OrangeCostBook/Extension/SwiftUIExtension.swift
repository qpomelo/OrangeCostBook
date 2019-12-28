//
//  SwiftUIExtension.swift
//  OrangeCostBook
//
//  Created by QPomelo on 2019/10/30.
//  Copyright © 2019 QPomelo. All rights reserved.
//

import Foundation
import SwiftUI

extension View {
    
    func showUIKitView(fromStoryboard: String, viewIdentifier: String, animated: Bool = true) {
        
        var currentWindow: UIWindow = UIApplication.shared.windows[0]
        for window in UIApplication.shared.windows {
            if window.isKeyWindow {
                currentWindow = window
            }
        }
        
        let mainSB = UIStoryboard(name: fromStoryboard, bundle: nil)
        let newController = mainSB.instantiateViewController(withIdentifier: viewIdentifier)
        newController.modalPresentationStyle = .overCurrentContext
        currentWindow.rootViewController?.present(newController, animated: animated, completion: nil)
        /*let navigationController = UINavigationController(rootViewController: newController)
        navigationController.modalPresentationStyle = .overCurrentContext// .fullScreen
        currentWindow.rootViewController?.present(navigationController, animated: true)*/
    }
    
    func presentUIKitView(fromStoryboard: String, viewIdentifier: String) {
        
        var currentWindow: UIWindow = UIApplication.shared.windows[0]
        for window in UIApplication.shared.windows {
            if window.isKeyWindow {
                currentWindow = window
            }
        }
        
        let mainSB = UIStoryboard(name: fromStoryboard, bundle: nil)
        let newController = mainSB.instantiateViewController(withIdentifier: viewIdentifier)
        currentWindow.rootViewController?.present(newController, animated: true, completion: nil)
        
        
        
    }
    
}
