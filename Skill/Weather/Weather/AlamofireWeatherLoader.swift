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
    var c: String = ""
    var d: String = ""
    var t: Int = 0
    var count: Int = 0
    
    func alamoLoadThreeWeather() { AF.request("https://api.openweathermap.org/data/2.5/forecast?q=Moscow&appid=92b4b4d3adefbf2010168479c963dd64").responseJSON() { response in
        if let objects = response.value {
            if let jsonDict = objects as? NSDictionary {
                if let cntJson = jsonDict["cnt"] as? Int {
                    self.count = cntJson
                }
                if let placeJson = jsonDict["city"] as? NSDictionary {
                    if let city = placeJson["name"] as? String {
                        self.c = city
                    }
                }
                if let listJson = jsonDict["list"] as? NSArray {
                    
                    
                    if let mainFirst = listJson[0] as? NSDictionary {
                        if let date = mainFirst["dt_txt"] as? String {
                            self.d += date                            }
                    }
                    if let mainLast = listJson[self.count - 1] as? NSDictionary {
                        if let date = mainLast["dt_txt"] as? String {
                            self.d += " - \(date)"
                        }
                        for item in listJson {
                            if let main = item as? NSDictionary {
                                if let temp = main["main"] as? NSDictionary {
                                    if let temperature = temp["temp"] as? Double {
                                        self.t += Int(round(temperature - 273.15))
                                    }
                                }
                            }
                        }
                    }
                }
            }
            self.weathers.append(.init(city: self.c, temp: Int(self.t / self.count), date: self.d))
            
            DispatchQueue.main.async {
                self.delegate?.threeLoaded(weathers: self.weathers)
            }
        }
        print(self.weathers)
        }
    }
}

