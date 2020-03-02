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
    func threeLoaded(weathers: [[String: String]])
}
class AlamofireWeatherLoader {
    
    var delegate: AlamofireWeatherLoaderDelegate?
    
    func alamoLoadThreeWeather() { AF.request("https://api.openweathermap.org/data/2.5/forecast?q=Moscow&appid=92b4b4d3adefbf2010168479c963dd64").responseJSON() { response in
        if let objects = response.value {
            if let jsonDict = objects as? NSDictionary {
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
                        var index = 0
                        if AlamofirePers.alamoShared.alamoCache.count < 40 { AlamofirePers.alamoShared.alamoCache.append(["date": d, "condition": w, "temp": String(t)])
                        } else {
                            AlamofirePers.alamoShared.alamoCache[index] = ["date": d, "condition": w, "temp": String(t)]
                            index += 1
                        }
                        if index == 40 {
                            index = 0
                        }
                    }
                }
            }
            DispatchQueue.main.async {
                self.delegate?.threeLoaded(weathers: AlamofirePers.alamoShared.alamoCache)
            }
        }
        }
    }
}

