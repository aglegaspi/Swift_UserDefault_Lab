//
//  HoroscopeAPIClient.swift
//  01UserDefaults_Lab
//
//  Created by Alexander George Legaspi on 9/24/19.
//  Copyright © 2019 Alexander George Legaspi. All rights reserved.
//

import Foundation

struct HoroscopeAPIClient {
    
    static let manager = HoroscopeAPIClient()
    
    func getHoroscopes(completionHandler: @escaping (Result<Horoscope, AppError>) -> Void) {
        guard let sunsign = UserDefaultsWrapper.manager.getSunSign() else {
            return 
        }
        
        let urlString = "http://sandipbgt.com/theastrologer/api/horoscope/\(sunsign.lowercased())/today/"
        print(urlString)
        guard let url = URL(string: urlString) else {
            fatalError("bad URL")
        }
        
        NetworkHelper.manager.performDataTask(withUrl: url, andMethod: .get) { (result) in
            switch result {
            case let .failure(error):
                completionHandler(.failure(error))
                return
            case let .success(data):
                do {
                    let Horoscopes = try Horoscope.getHoroscopes(from: data)
                    completionHandler(.success(Horoscopes))
                }
                catch {
                    completionHandler(.failure(.couldNotParseJSON(rawError: error)))
                }
            }
        }
    }
    
    private init() {}
}
