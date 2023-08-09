//
//  AlamofireNetwork+RequestMethods.swift
//  Providers
//
//  Created by Zhussupali on 06.08.2023.
//

import Foundation
import Alamofire
import Promises

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
