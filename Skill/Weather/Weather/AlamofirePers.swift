//
//  AlamofirePers.swift
//  Weather
//
//  Created by Ivan Krylov on 02.03.2020.
//  Copyright © 2020 Ivan Krylov. All rights reserved.
//

import Foundation
import CoreData
import UIKit

var cities = [NSManagedObject]()

let appDelegate = UIApplication.shared.delegate as! AppDelegate
let managedContext = appDelegate.persistentContainer.viewContext
let entity =  NSEntityDescription.entity(forEntityName: "City", in: managedContext)

func addStartCity() {
    if userDefaults.bool(forKey: "firstRun") {
        let startCities = ["Rostov", "Sochi", "Tomsk", "Omsk"]
        for item in startCities {
            print(item)
            let city = NSManagedObject(entity: entity!, insertInto:managedContext)
            city.setValue(item, forKey: "name")
            cities.append(city)
            
            do {
                try managedContext.save()
                userDefaults.set(false, forKey: "firstRun")
            } catch {
                print(error)
            }
        }
    }
}

func addNewCity(nameTask: String) {
    let city = NSManagedObject(entity: entity!, insertInto:managedContext)
    city.setValue(nameTask, forKey: "name")
    cities.append(city)
    
    do {
        try managedContext.save()
    } catch {
        print(error)
    }
}

func removeCity(at index: Int) {
    let objectToDelete = cities[index]
    cities.remove(at: index)
    managedContext.delete(objectToDelete)
    
    do {
        try managedContext.save()
    } catch {
        let saveError = error as NSError
        print(saveError)
    }
}

