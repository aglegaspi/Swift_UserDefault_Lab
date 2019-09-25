//
//  UserDefaultsWrapper.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//
import Foundation

class UserDefaultsWrapper {
    
    // MARK: - Static Properties
    static let manager = UserDefaultsWrapper()
    
    // MARK: - Internal Methods
    func store(sunSign: String) {
        UserDefaults.standard.set(sunSign, forKey: sunSignKey)
    }
    
    func getSunSign() -> String? {
        return UserDefaults.standard.value(forKey: sunSignKey) as? String
    }
    
    // MARK: - Private inits and properties
    private init() {}
    private let sunSignKey = "sunSign"
}
