//
//  Horoscope.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import Foundation

struct Horoscope: Codable {
    let sunsign: String
    let horoscope: String
    
    static func getHoroscopes(from jsonData: Data) throws -> Horoscope {
        let response = try JSONDecoder().decode(Horoscope.self, from: jsonData)
        return response
    }
}
