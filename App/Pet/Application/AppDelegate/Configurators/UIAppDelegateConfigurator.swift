//
//  UIAppDelegateConfigurator.swift
//  Pet
//
//  Created by Zhussupali on 15.07.2023.
//

import UIKit

private enum Constants {
    static let titleTextAttributes: [NSAttributedString.Key: Any] = [:]
    static let textViewAttributes: [NSAttributedString.Key: Any] = [:]
}

final class UIAppDelegateConfigurator: AppDelegateConfigurator {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupNavigationBar()
        setupTextView()
        return true
    }

    private func setupNavigationBar() {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.isTranslucent = false
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.titleTextAttributes = Constants.titleTextAttributes
        navigationBar.tintColor = .black
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithTransparentBackground()
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
    }
    
    private func setupTextView() {
        let textView = UITextView.appearance()
        textView.linkTextAttributes = Constants.textViewAttributes
    }
}
