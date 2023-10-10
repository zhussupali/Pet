//
//  HomeRepository.swift
//  Qwe
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import Foundation
import Providers
import Promises

final class HomeRepository {
    private let provider: HomeProvider
    
    init(provider: HomeProvider) {
        self.provider = provider
    }
    
    func getData() -> Promise<[User]> {
        provider.getData()
    }
}
