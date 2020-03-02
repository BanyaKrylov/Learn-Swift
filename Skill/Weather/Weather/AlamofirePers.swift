//
//  AlamofirePers.swift
//  Weather
//
//  Created by Ivan Krylov on 02.03.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation

class AlamofirePers {
    static let alamoShared = AlamofirePers()
    
    var alamoCache: [[String: String]] {
        set {
            UserDefaults.standard.set(newValue, forKey: "alamoCacheKey")
            UserDefaults.standard.synchronize()
        }
        get {
            if let array = UserDefaults.standard.array(forKey: "alamoCacheKey") as? [[String: String]] {
                return array
            } else {
                return []
            }
        }
    }
    private let weatherLabelKey = "UserDefaultsPers.weatherLabelKey"
    private let tempLabelKey = "UserDefaultsPers.tempLabelKey"
    
    var weatherLabel: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: weatherLabelKey)
        }
        get {
            return UserDefaults.standard.string(forKey: weatherLabelKey)
        }
    }
    var tempLabel: Int? {
        set {
            UserDefaults.standard.set(newValue, forKey: tempLabelKey)
        }
        get {
            return UserDefaults.standard.integer(forKey: tempLabelKey)
        }
    }
}
