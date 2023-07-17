//
//  Constants.swift
//  Providers
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation

struct Constants {
    static let baseUrl = "https://jsonplaceholder.typicode.com/"
    static let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
}
