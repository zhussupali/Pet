//
//  DataRequest+Extensions.swift
//  Providers
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation
import Alamofire
import Promises

private enum Constants {
    static let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
}

extension DataRequest {
    @discardableResult
    func toPromise<Response: Decodable>() -> Promise<Response> {
        wrap { completionHandler in
            self.responseDecodable(decoder: Constants.jsonDecoder, completionHandler: completionHandler)
        }.then { response -> Response in
            try response.result.get()
        }
    }
    
    @discardableResult
    func toPromise() -> Promise<Data> {
        wrap { completionHandler in
            self.responseData(completionHandler: completionHandler)
        }.then { response -> Data in
            try response.result.get()
        }
    }
}
