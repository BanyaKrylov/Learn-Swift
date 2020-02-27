//
//  UserDefaults.swift
//  Homework 14
//
//  Created by Ivan Krylov on 25.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation

class UserDefaultsPers {
    static let shared = UserDefaultsPers()
    
    private let userNameKey = "UserDefaultsPers.userNameKey"
    private let userSurnameKey = "UserDefaultsPers.userSurnameKey"
    
    var  userName: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: userNameKey)
        }
        get {
            return UserDefaults.standard.string(forKey: userNameKey)
        }
    }
    var  userSurname: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: userSurnameKey)
        }
        get {
            return UserDefaults.standard.string(forKey: userSurnameKey)
        }
    }
}
