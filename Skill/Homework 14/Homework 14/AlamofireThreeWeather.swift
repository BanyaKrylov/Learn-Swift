//
//  AlamofireThreeWeather.swift
//  Homework 14
//
//  Created by Ivan Krylov on 27.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation

class AlamofireThreeWeather {
var weatherCondition: String = ""
    var temp: Int = 0
    var date: String = ""
    
    init?(weatherJson: NSDictionary) {
        if let listJson = weatherJson["list"] as? NSArray {
            for item in listJson {
                if let main = item as? NSDictionary {
                    if let date = main["dt_txt"] as? String {
                        self.date = date
                        print(date)
                    }
                    if let temp = main["main"] as? NSDictionary {
                        if let temperature = temp["temp"] as? Double {
                            self.temp = Int(round(temperature - 273.15))
                            print(temp)
                        }
                    }
                    if let nestedJson = main["weather"] as? NSArray {
                        if let desc = nestedJson[0] as? NSDictionary {
                            if let weathCond = desc["description"] as? String {
                                self.weatherCondition = weathCond
                                print(weatherCondition)
                            }
                        }
                    }
                }
            }
        }
        //        guard let listJson = weatherJson["list"] as? NSArray else { return nil }
        //        guard let zeroMain = listJson[0] as? NSDictionary else { return nil }
        //        guard let date = zeroMain["dt_txt"] as? String else { return nil }
        //        self.date = date
        //        guard let temp = zeroMain["main"] as? NSDictionary else { return nil }
        //        guard let temperature = temp["temp"] as? Double else { return nil }
        //        self.temp = Int(round(temperature - 273.15))
        //        guard let weather = zeroMain["weather"] as? NSArray else { return nil }
        //        guard let desc = weather[0] as? NSDictionary else { return nil }
        //        guard let weatherCondition = desc["description"] as? String else { return nil }
        //        self.weatherCondition = weatherCondition.capitalized
    }
}
