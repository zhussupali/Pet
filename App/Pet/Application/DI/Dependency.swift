//
//  Dependency.swift
//  Pet
//
//  Created by Zhussupali on 10.10.2023.
//

import Foundation
import Swinject

final class DependencyContainer {
    private static let resolver = Assembler([DependencyContainerAssembly()]).resolver
    
    private init() {}
    
    static func resolve<Service>(_ serviceType: Service.Type) -> Service {
        resolver.resolve(serviceType)!
    }
}
