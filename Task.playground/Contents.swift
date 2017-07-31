// Задание

import UIKit

// Псевдоним
typealias Chessman = [String:(alpha:Character,num:Int)?]

// Создание словаря шахматных фигур с координатами
var chessmans: Chessman = ["Horse": ("a", 1), "Elephant": ("b", 7), "King": nil]

// Проверка наличия фигуры на доске

for (names, coordinates) in chessmans {
    if coordinates != nil {
        print("Coordinates \(names) is: \(coordinates)")
    } else {
        print("\(names) is dead")
    }
}
