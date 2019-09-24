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
    func store(horoscope: String) {
        UserDefaults.standard.set(horoscope, forKey: horoscopeKey)
    }
    
    func getHoroscope() -> String? {
        return UserDefaults.standard.value(forKey: horoscopeKey) as? String
    }
    
    // MARK: - Private inits and properties
    private init() {}
    private let horoscopeKey = "horoscope"
}
