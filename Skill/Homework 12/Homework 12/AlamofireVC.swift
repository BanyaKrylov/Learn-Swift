//
//  AlamofireVC.swift
//  Homework 12
//
//  Created by Ivan Krylov on 19.02.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class AlamofireVC: UIViewController {

     @IBOutlet weak var tempLabel: UILabel!
       @IBOutlet weak var tableView: UITableView!
       @IBOutlet weak var weatherLabel: UILabel!
       @IBOutlet weak var todayLabel: UILabel!
       
       var weather: [(Weath)] = []
       
       override func viewDidLoad() {
           super.viewDidLoad()
           
           todayLabel.text = "Weather now"
           let loader = AlamofireWeatherLoader()
           loader.delegate = self
           loader.loadWeather()
           loader.loadThreeWeather()
       }
}

extension AlamofireVC: AlamofireWeatherLoaderDelegate {
    func loaded(weatherCondition: String, temp: Int) {
        weatherLabel.text = "Weather condition: \(weatherCondition)"
        tempLabel.text = "Temperature : \(String(temp))°C"
    }
    func threeLoaded(weathers: [(Weath)]) {
        self.weather = weathers
        tableView.reloadData()
    }
}

extension AlamofireVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weather.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlamoCell") as! AlamofireTVC
        
        let weatherThreeHours = weather[indexPath.row]
        cell.dateCell.text = weatherThreeHours.date
        cell.conditionCell.text = weatherThreeHours.weatherCondition
        cell.tempCell.text = "\(String(weatherThreeHours.temp))°C"
        
        return cell
    }
}
