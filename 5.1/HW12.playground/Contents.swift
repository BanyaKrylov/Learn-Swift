import UIKit

//Homework 12

var dictionary = ["one":1, "two":2, "three":3]

let baseCollection = [(2, 5), (3, 6), (1, 4)]
let newDictionary = Dictionary(uniqueKeysWithValues: baseCollection)

dictionary["one"]
dictionary["one"] = 101

dictionary.updateValue(100, forKey: "two")
dictionary

dictionary["four"] = 4
dictionary

dictionary["four"] = nil
dictionary.removeValue(forKey: "three")
dictionary

var dictName: [Int:String] = [:]

dictionary.count
dictionary.isEmpty
dictionary.keys
dictionary.values

typealias Chessman = [String:(alpha:Character, num:Int)?]
var chessmans: Chessman = ["King":("a", 5), "Queen":("c", 8), "Pawn":nil]
//if let coordinate = chessmans["King"]! {
//    print("Coordinates of King is \(coordinate)")
//} else {
//    print("King is dead")
//}
//if let coordinate = chessmans["Queen"]! {
//    print("Coordinates of Queen is \(coordinate)")
//} else {
//    print("Queen is dead")
//}
//if let coordinate = chessmans["Pawn"]! {
//    print("Coordinates of Pawn is \(coordinate)")
//} else {
//    print("Pawn is dead")
//}

for figure in chessmans {
    if figure.value != nil {
        print("Coordinates of \(figure.key) is \(figure.value!)")
    } else {
        print("\(figure.key) is dead")
    }
}

//Пример  "Описание статуса запроса"
var requestStatus: (Int, String, Bool) = (200, "OK", true)
//Пример "Описание погоды"
var weatherToday = (type: "Windy", temperature: -2, danger: false)
//Пример "Свойства фигуры"
var figureProperties = ("Triangle", 3, "Yellow")
