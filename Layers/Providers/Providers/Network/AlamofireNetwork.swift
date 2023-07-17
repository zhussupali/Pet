//
//  AlamofireNetwork.swift
//  Providers
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation
import Alamofire
import Promises

class AlamofireNetwork {
    let baseUrl = Constants.baseUrl
    
    func request<Response: Decodable>(_ url: String,
                                      method: HTTPMethod,
                                      parameters: Parameters? = nil,
                                      encoding: ParameterEncoding,
                                      headers: HTTPHeaders? = nil) -> Promise<Response> {
        let request = AF.request(baseUrl + url, method: method, parameters: parameters, encoding: encoding, headers: headers)
        return request.toPromise()
    }
    
    func request<Response: Decodable, Parameters: Encodable>(_ url: String,
                                                             method: HTTPMethod,
                                                             parameters: Parameters? = nil,
                                                             encoder: ParameterEncoder,
                                                             headers: HTTPHeaders? = nil) -> Promise<Response> {
        let request = AF.request(baseUrl + url, method: method, parameters: parameters, encoder: encoder, headers: headers)
        return request.toPromise()
    }
}

extension AlamofireNetwork {
    func get<Response: Decodable>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response> {
        request(url, method: .get, parameters: parameters, encoding: URLEncoding.default, headers: headers)
    }
    
    func get<Parameters, Response>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response>
    where Parameters: Encodable, Response: Decodable {
        request(url, method: .get, parameters: parameters, encoder: URLEncodedFormParameterEncoder.default, headers: headers)
    }
    
    func post<Response: Decodable>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response> {
        request(url, method: .post, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
    
    func post<Response: Decodable, Parameters: Encodable>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response> {
        request(url, method: .post, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers)
    }
    
    func put<Response>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response>
    where Response: Decodable {
        request(url, method: .put, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
    
    func put<Parameters, Response>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response>
    where Parameters: Encodable, Response: Decodable {
        request(url, method: .put, parameters: parameters, encoder: JSONParameterEncoder.default, headers: headers)
    }
    
    func delete<Response: Decodable>(_ url: String, parameters: Parameters? = nil, headers: HTTPHeaders? = nil) -> Promise<Response> {
        request(url, method: .delete, parameters: parameters, encoding: JSONEncoding.default, headers: headers)
    }
}
