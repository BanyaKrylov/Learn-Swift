// Работа с псевдонимами

import UIKit

// Объявление псевдонима
typealias nameType = String
typealias weigthType = Double
typealias heigthType = Int

// Использование псевдонима
let name: nameType = "Ivan"
var weigth: weigthType = 108.5
var heigth: heigthType = 178

var imt = weigth / pow(weigthType(heigth), 2.0)