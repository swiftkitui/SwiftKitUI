//
//  AppDelegate.swift
//  SwiftKitUI-iOS-Example
//
//  Created by 张行 on 2019/7/8.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let window: UIWindow = UIWindow(frame: UIScreen.main.bounds)
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window.rootViewController = UIHostingController(rootView: MainPageView())
        self.window.makeKeyAndVisible()
        return true
    }

}

