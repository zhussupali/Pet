//
//  User.swift
//  Providers
//
//  Created by Zhussupali Salamat on 21.08.2022.
//

import Foundation

public struct User: Codable {
    var id: Int?
    var name, username, email: String?
    var phone, website: String?
}
