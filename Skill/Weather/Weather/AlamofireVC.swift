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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loader = AlamofireWeatherLoader()
        loader.delegate = self
        loader.alamoLoadThreeWeather()
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
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlamoCell") as! AlamofireTVC
        let weatherThreeHours = weather.first
        let wea = weather.last
        cell.dateCell.text = String("\(weatherThreeHours?.date) - \(wea?.date)")
        cell.cityCell.text = weatherThreeHours?.city
        cell.tempCell.text = "\(String(describing: weatherThreeHours?.temp))°C"
        
        return cell
    }
}
