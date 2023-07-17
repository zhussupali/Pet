//
//  AppDelegateConfiguratorFactory.swift
//  Pet
//
//  Created by Zhussupali on 15.07.2023.
//

import Foundation

enum AppDelegateConfiguratorFactory {
    static func makeDefault() -> AppDelegateConfigurator {
        CompositeAppDelegateConfigurator(configurators: [
            StartupAppDelegateConfiguator()
        ])
    }
}
