//
//  StartupAppDelegateConfiguator.swift
//  Pet
//
//  Created by Zhussupali on 15.07.2023.
//

import UIKit
import Swinject

final class StartupAppDelegateConfiguator: AppDelegateConfigurator {
    let assembler = Assembler([DependencyContainerAssembly()])
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        return true
    }
}
