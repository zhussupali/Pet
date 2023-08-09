//
//  Provider.swift
//  Providers
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import Foundation
import Promises

public final class Provider {
    let rest: AlamofireNetwork
    
    public init(rest: AlamofireNetwork) {
        self.rest = rest
    }
}
