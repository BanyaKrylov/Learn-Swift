//
//  AlamofireWeatherLoader.swift
//  Homework 12
//
//  Created by Ivan Krylov on 19.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation

protocol AlamofireWeatherLoaderDelegate {
    func loaded(weatherCondition: String, temp: Int)
    func threeLoaded(weathers: [(Weath)])
}

struct AlamoWeath {
    var weatherCondition: String = ""
    var temp: Int = 0
    var date: String = ""
}

class AlamofireWeatherLoader {
    
    var weatherCondition: String = ""
    var temp: Int = 0
    var date: String = ""
    var weathers: [(Weath)] = []
    var delegate: AlamofireWeatherLoaderDelegate?
    func loadWeather() {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Moscow&appid=92b4b4d3adefbf2010168479c963dd64")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let json = try? JSONSerialization.jsonObject(with: data, options: []) {
                if let jsonDict = json as? NSDictionary {
                    if let mainJson = jsonDict["main"] as? NSDictionary {
                        if let temp = mainJson["temp"] as? Double {
                            self.temp = Int(round(temp - 273.15))
                        }
                    }
                    if let nestedJson = jsonDict["weather"] as? NSArray {
                        if let desc = nestedJson[0] as? NSDictionary {
                            if let weathCond = desc["description"] as? String {
                                self.weatherCondition = weathCond
                            }
                        }
                    }
                }
                DispatchQueue.main.async {
                    self.delegate?.loaded(weatherCondition: self.weatherCondition, temp: self.temp)
                }
            }
        }
        task.resume()
    }
    
    func loadThreeWeather() {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/forecast?q=Moscow&appid=92b4b4d3adefbf2010168479c963dd64")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data, let json = try? JSONSerialization.jsonObject(with: data, options: .allowFragments) {
                
                if let jsonDict = json as? NSDictionary {
                    if let listJson = jsonDict["list"] as? NSArray {
                        for item in listJson {
                            var d: String = ""
                            var t: Int = 0
                            var w: String = ""
                            if let main = item as? NSDictionary {
                                if let date = main["dt_txt"] as? String {
                                    d = date
                                }
                                if let temp = main["main"] as? NSDictionary {
                                    if let temperature = temp["temp"] as? Double {
                                        t = Int(round(temperature - 273.15))
                                    }
                                }
                                if let nestedJson = main["weather"] as? NSArray {
                                    if let desc = nestedJson[0] as? NSDictionary {
                                        if let weathCond = desc["description"] as? String {
                                            w = weathCond
                                        }
                                    }
                                }
                            }
                            self.weathers.append(.init(weatherCondition: w, temp: t, date: d))
                        }
                    }
                }
                DispatchQueue.main.async {
                    self.delegate?.threeLoaded(weathers: self.weathers)
                }
            }
        }
        task.resume()
    }
}
