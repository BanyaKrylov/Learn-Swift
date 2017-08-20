//: Playground - noun: a place where people can play

import UIKit

protocol Wheel {
    func drive()
}

class Car: Wheel {
    var model: String
    var numberOfPassengers: Int
    
    init(model: String, numberOfPassengers: Int) {
        self.model = model
        self.numberOfPassengers = numberOfPassengers
    }
    
    func drive() {
        print("Пристегнитесь")
        print("Держите руль")
        print("Управляйте педалями")
    }
}

let tesla = Car(model: "Tesla", numberOfPassengers: 5)

//tesla.drive()

class Helicopter: Wheel {
    var numberOfPassengers: Int
    var speed: Double
    
    init(numberOfPassengers: Int, speed: Double) {
        self.numberOfPassengers = numberOfPassengers
        self.speed = speed
    }
    
    func drive() {
        print("Включить автопилот")
        print("Не бойтесь")
    }
}

let nightShark = Helicopter(numberOfPassengers: 8, speed: 150.8)

//nightShark.drive()

class SportCar: Car {
    
    override func drive() {
        super.drive()
        print("Аккуратнее")
    }
}

let teslaS = SportCar(model: "TeslaS", numberOfPassengers: 7)

let wheels: [Wheel] = [tesla, nightShark, teslaS]

wheels[2].drive()
