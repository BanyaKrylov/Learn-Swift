// Задание

import UIKit

// Псевдоним
typealias Chessman = [String:( alpha:Character,num:Int)?]

// Создание словаря шахматных фигур с координатами
var chessmans: Chessman = ["Horse": ("a", 1), "Elephant": ("b", 7), "King": nil]

// Проверка наличия фигуры на доске
if let coordinates = chessmans["Horse"]! {
    print("Coordinates Horse is: \(coordinates)")
} else {
    print("Horse is dead")
}
if let coordinates = chessmans["Elephant"]! {
    print("Coordinates Elephant is: \(coordinates)")
} else {
    print("Elephant is dead")
}
if let coordinates = chessmans["King"]! {
    print("Coordinates King is: \(coordinates)")
} else {
    print("King is dead")
}
