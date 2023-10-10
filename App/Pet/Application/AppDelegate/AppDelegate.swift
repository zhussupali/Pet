//
//  AppDelegate.swift
//  Pet
//
//  Created by Zhussupali on 15.07.2023.
//

import UIKit
import SnapKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    private let configurator = AppDelegateConfiguratorFactory.makeDefault()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        _ = configurator.application?(application, didFinishLaunchingWithOptions: launchOptions)
        return true
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        _ = configurator.application?(app, open: url, options: options)
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        _ = configurator.applicationDidBecomeActive?(application)
    }
}

private extension AppDelegate {
    func setupWindow() {
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: HomeRouter.assemble())
    }
}
