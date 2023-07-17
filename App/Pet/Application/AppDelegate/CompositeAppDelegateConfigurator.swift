//
//  CompositeAppDelegateConfigurator.swift
//  Pet
//
//  Created by Zhussupali on 15.07.2023.
//

import UIKit

typealias AppDelegateConfigurator = UIResponder & UIApplicationDelegate

final class CompositeAppDelegateConfigurator: AppDelegateConfigurator {
    private let configurators: [AppDelegateConfigurator]

    init(configurators: [AppDelegateConfigurator]) {
        self.configurators = configurators
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configurators.forEach { _ = $0.application?(application, didFinishLaunchingWithOptions: launchOptions) }
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        configurators.forEach { _ = $0.applicationDidBecomeActive?(application) }
    }
    
    func application(
        _ app: UIApplication,
        open url: URL,
        options: [UIApplication.OpenURLOptionsKey: Any] = [:]
    ) -> Bool {
        configurators.forEach { _ = $0.application?(app, open: url, options: options) }
        return true
    }
}
