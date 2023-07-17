//
//  Provider.swift
//  Providers
//
//  Created by Zhussupali Salamat on 20.08.2022.
//

import Foundation
import Promises

public class Provider {
    public static let shared = Provider()
    let rest = AlamofireNetwork()
}
