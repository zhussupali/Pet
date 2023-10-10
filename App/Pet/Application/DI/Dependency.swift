//
//  Dependency.swift
//  Pet
//
//  Created by Zhussupali on 10.10.2023.
//

import Foundation
import Swinject

final class Dependency {
    static let resolver = Assembler([DependencyContainerAssembly()]).resolver
}
