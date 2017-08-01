//: Задание 1
//: Вернемся к заданию 2 из предыдущей главы. Объедините написанный код анализа коллекции шахмат, хранящейся в переменной Chessmans, в функции с именем chessAnalizer(). В качестве входного параметра функция должна принимать словарь того же типа, что и переменная Chessmans.
//: Задание 2
//: Создайте функцию, которая предназначена для изменения состава и характеристик фигур в переменной Chessmans. В качестве входных параметров она должна принимать саму переменную Chessmans (как сквозной параметр), в которую будут вноситься изменения, имя фигуры (значение типа String) и опциональный кортеж координат фигуры (значение типа (Character, Int)?).
//: При этом должна проводиться проверка факта существования фигуры в словаре. Если фигура не существует, то информация о ней добавляется, в противном случае информация обновляется в соответствии с переданной информацией.

import UIKit

// Псевдоним
typealias Chessman = [String:(alpha:Character,num:Int)?]

// Создание словаря шахматных фигур с координатами
var Chessmans: Chessman = ["White King":("C",6), "Black Rook":("E",2), "Black Bishop":nil]

// Изменение фигур
func chessEditor(_ chessmans: inout Chessman, name: String, coordinates: (Character,Int)?){
    if chessmans[name] != nil{
        chessmans.updateValue(coordinates, forKey: name)
    }else{
        chessmans[name] = coordinates
    }
}

chessEditor(&Chessmans, name: "Black Bishop", coordinates: ("A",2))

print(Chessmans)
