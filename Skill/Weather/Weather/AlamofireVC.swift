//
//  AlamofireVC.swift
//  Weather
//
//  Created by Ivan Krylov on 02.03.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit

class AlamofireVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var weather: [[String: String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loader = AlamofireWeatherLoader()
        loader.delegate = self
        loader.alamoLoadThreeWeather()
        
    }
}

extension AlamofireVC: AlamofireWeatherLoaderDelegate {
    func threeLoaded(weathers: [[String: String]]) {
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
        let weatherThreeHours: [String: String]
        weatherThreeHours = weather[indexPath.row]
        cell.dateCell.text = weatherThreeHours["date"]
        cell.conditionCell.text = weatherThreeHours["condition"]
        cell.tempCell.text = "\(String(weatherThreeHours["temp"]!))°C"
        
        return cell
    }
}
