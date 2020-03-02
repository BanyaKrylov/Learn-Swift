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
    @IBOutlet weak var avgTemp4AllCities: UINavigationItem!
    
    @IBAction func addCity(_ sender: Any) {
        let alertController = UIAlertController(title: "Add new city", message: nil, preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            textField.placeholder = "City name"
        }
        
        let alertActionCancel = UIAlertAction(title: "Cancel", style: .destructive) { (alert) in
            
        }
        let alertActionCreate = UIAlertAction(title: "Create", style: .cancel) { (alert) in
            let newItem = alertController.textFields![0].text
            addNewCity(nameTask: newItem!)
            self.tableView.reloadData()
        }
        alertController.addAction(alertActionCancel)
        alertController.addAction(alertActionCreate)
        
        present(alertController, animated: true, completion: nil)
    }
    
    var weather: [(AlamoWeath)] = []
    var citiesForWeather = ["Moscow", "Barnaul", "Tomsk", "Vladivostok", "Novosibirsk", "Omsk", "Sochi", "Volgograd", "Rostov", "Rostov-on-Don"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loader = AlamofireWeatherLoader()
        loader.delegate = self
        loader.alamoLoadThreeWeather(city: citiesForWeather)
    }
}

extension AlamofireVC: AlamofireWeatherLoaderDelegate {
    func threeLoaded(weathers: [(AlamoWeath)]) {
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
        cell.cityCell.text = weatherThreeHours.city
        cell.tempCell.text = "\(String(describing: weatherThreeHours.temp))°C"
        
        return cell
    }
}
