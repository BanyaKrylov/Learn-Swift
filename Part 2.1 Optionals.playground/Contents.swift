// Опционалы

import UIKit

typealias Text = String

// Вывод на консоль только чисел
let con1: Text = "4"
let con2: Text = "5"
let con3: Text = ("fdsfdf34234")

if  Int(con1) != nil {
    print(con1)
}

if Int(con2) != nil {
    print(con2)
}

if Int(con3) != nil {
    print(con3)
}

// Вывод на консоль заполненных кортежей
typealias TupleType = (numberOne: Text?, numberTwo: Text?)?

var num1: TupleType = ("190", "67")
var num2: TupleType = ("100", nil)
var num3: TupleType = ("-65", "70")

if  let (one, two) = num1 {
    if one != nil && two != nil {
        print(num1!.numberOne!, num1!.numberTwo!)
    }
}

if  let (one, two) = num2 {
    if one != nil && two != nil {
        print(num2!.numberOne!, num2!.numberTwo!)
    }
}

if  let (one, two) = num3 {
    if one != nil && two != nil {
        print(num3!.numberOne!, num3!.numberTwo!)
    }
}
