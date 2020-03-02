//
//  AlamoFireVC.swift
//  Homework 14
//
//  Created by Ivan Krylov on 27.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class AlamofireVC: UIViewController {
    
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var todayLabel: UILabel!
    
    var weather: [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        todayLabel.text = "Moscow"
        
        if AlamofirePers.alamoShared.weatherLabel != nil {
            weatherLabel.text! = AlamofirePers.alamoShared.weatherLabel!
        }
        if AlamofirePers.alamoShared.tempLabel != nil {
            tempLabel.text! = String(AlamofirePers.alamoShared.tempLabel!)
        }
        
        let loader = AlamofireWeatherLoader()
        loader.delegate = self
        loader.alamoLoadWeather()
        loader.alamoLoadThreeWeather()
        
    }
}

extension AlamofireVC: AlamofireWeatherLoaderDelegate {
    func loaded(weatherCondition: String, temp: Int) {
        weatherLabel.text = "Now - \(weatherCondition)"
        tempLabel.text = "\(temp)°С"
    }
    func threeLoaded(weathers: [[String: String]]) {
        self.weather = weathers
        tableView.reloadData()
    }
}

extension AlamofireVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(weather.count)
        return weather.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlamoCell") as! AlamofireTVC
        let weatherThreeHours: [String: String]
        weatherThreeHours = weather[indexPath.row]
        cell.dateCell.text = weatherThreeHours["date"]
        cell.conditionCell.text = weatherThreeHours["condition"]
        cell.tempCell.text = "\(String(weatherThreeHours["temp"]!))°C"
        
        return cell
    }
}

