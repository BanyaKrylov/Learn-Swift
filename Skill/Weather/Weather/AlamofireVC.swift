//
//  AlamofireVC.swift
//  Weather
//
//  Created by Ivan Krylov on 02.03.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import UIKit
import CoreData

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
            let loader = AlamofireWeatherLoader()
            loader.delegate = self
            loader.alamoLoadThreeWeather()
            self.tableView.reloadData()
        }
        alertController.addAction(alertActionCancel)
        alertController.addAction(alertActionCreate)
        
        present(alertController, animated: true, completion: nil)
    }
    
    var weather: [(AlamoWeath)] = []
    var citiesForWeather: [String] = []
    
    var all: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        addStartCity()
        let loader = AlamofireWeatherLoader()
        loader.delegate = self
        loader.alamoLoadThreeWeather()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName:"City")
        let fetchedResults = try! managedContext.fetch(fetchRequest)
        
        let results = fetchedResults
        cities = results as! [NSManagedObject]
        
    }
}

extension AlamofireVC: AlamofireWeatherLoaderDelegate {
    func threeLoaded(weathers: [(AlamoWeath)], avgTemp4AllCities: Int) {
        self.weather = weathers
        self.all = avgTemp4AllCities
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
        avgTemp4AllCities.title = String(all)
        return cell
    }
}
