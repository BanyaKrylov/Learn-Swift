//
//  AlamofireWeatherLoader.swift
//  Weather
//
//  Created by Ivan Krylov on 02.03.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation
import Alamofire

protocol AlamofireWeatherLoaderDelegate {
    func threeLoaded(weathers: [(AlamoWeath)])
}

struct AlamoWeath {
    var city: String = ""
    var temp: Int = 0
    var date: String = ""
}

class AlamofireWeatherLoader {
    
    var delegate: AlamofireWeatherLoaderDelegate?
    var weathers: [(AlamoWeath)] = []
    var citiesForWeather = ["Moscow", "Barnaul", "Tomsk", "Vladivostok", "Novosibirsk", "Omsk", "Sochi", "Volgograd", "Saint Petersburg", "Yamal"]
    var cityName: String = ""
    var datePeriod: String = ""
    var averageTemp: Int = 0
    var countItems: Int = 0
    
    func alamoLoadThreeWeather(city: [String]) {
        for cityItem in city { AF.request("https://api.openweathermap.org/data/2.5/forecast?q=\(cityItem)&appid=92b4b4d3adefbf2010168479c963dd64").responseJSON() { response in
            if let objects = response.value {
                if let jsonDict = objects as? NSDictionary {
                    if let cntJson = jsonDict["cnt"] as? Int {
                        self.countItems = cntJson
                    }
                    if let placeJson = jsonDict["city"] as? NSDictionary {
                        if let city = placeJson["name"] as? String {
                            self.cityName = city
                        }
                    }
                    if let listJson = jsonDict["list"] as? NSArray {
                        if let mainFirst = listJson[0] as? NSDictionary {
                            if let date = mainFirst["dt_txt"] as? String {
                                self.datePeriod += date
                            }
                        }
                        if let mainLast = listJson[self.countItems - 1] as? NSDictionary {
                            if let date = mainLast["dt_txt"] as? String {
                                self.datePeriod += " - \(date)"
                            }
                            for item in listJson {
                                if let main = item as? NSDictionary {
                                    if let temp = main["main"] as? NSDictionary {
                                        if let temperature = temp["temp"] as? Double {
                                            self.averageTemp += Int(round(temperature - 273.15))
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                self.weathers.append(.init(city: self.cityName, temp: Int(self.averageTemp / self.countItems), date: self.datePeriod))
                
                DispatchQueue.main.async {
                    self.delegate?.threeLoaded(weathers: self.weathers)
                }
            }
            }
        }
    }
    
}

