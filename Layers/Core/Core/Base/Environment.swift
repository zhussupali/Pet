//
//  Environment.swift
//  Core
//
//  Created by Zhussupali on 09.08.2023.
//

import Foundation

private let infoPlist: [String: Any] = {
    guard let infoPlist = Bundle.main.infoDictionary else {
        fatalError("Файл `Info.plist` не найден")
    }
    return infoPlist
}()

@propertyWrapper
public struct EnvironmentVariable {
    var key: String
    
    public var wrappedValue: String {
        guard let value = infoPlist[key] as? String else {
            fatalError("Не найдена переменная окружения `\(key)`")
        }
        return value
    }
}

public struct Environment {
    @EnvironmentVariable(key: "BASE_URL")
    public static var baseUrl: String
}
