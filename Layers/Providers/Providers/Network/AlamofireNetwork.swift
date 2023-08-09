//
//  AlamofireNetwork.swift
//  Providers
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation
import Alamofire
import Promises

public final class AlamofireNetwork {
    let baseUrl: String
    
    public init(baseUrl url: String) {
        baseUrl = url
    }
    
    func request<Response: Decodable>(
        _ url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        encoding: ParameterEncoding,
        headers: HTTPHeaders? = nil
    ) -> Promise<Response> {
        let request = AF.request(baseUrl + url, method: method, parameters: parameters, encoding: encoding, headers: headers)
        return request.toPromise()
    }
    
    func request<Response: Decodable, Parameters: Encodable>(
        _ url: String,
        method: HTTPMethod,
        parameters: Parameters? = nil,
        encoder: ParameterEncoder,
        headers: HTTPHeaders? = nil
    ) -> Promise<Response> {
        let request = AF.request(baseUrl + url, method: method, parameters: parameters, encoder: encoder, headers: headers)
        return request.toPromise()
    }
}
