//
//  HomeProvider.swift
//  Providers
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation
import Promises

public protocol HomeProvider {
    func getData() -> Promise<[User]>
}

extension Provider: HomeProvider {
    public func getData() -> Promise<[User]> {
        rest.get("users/")
    }
}
