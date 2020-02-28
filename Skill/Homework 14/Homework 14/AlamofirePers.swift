//
//  AlamofirePers.swift
//  Homework 14
//
//  Created by Ivan Krylov on 28.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation
import RealmSwift

class AlamofirePers {
    static let alamoShared = AlamofirePers()
    
    private let weatherLabelKey = "UserDefaultsPers.weatherLabelKey"
    private let tempLabelKey = "UserDefaultsPers.tempLabelKey"
    private let dateCellKey = "UserDefaultsPers.dateCellKey"
    private let conditionCellKey = "UserDefaultsPers.conditionCellKey"
    private let tempCellKey = "UserDefaultsPers.tempCellKey"
    
    var weatherLabel: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: weatherLabelKey)
        }
        get {
            return UserDefaults.standard.string(forKey: weatherLabelKey)
        }
    }
    var tempLabel: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: tempLabelKey)
        }
        get {
            return UserDefaults.standard.string(forKey: tempLabelKey)
        }
    }
}
