// Изучение базового синтаксиса (целые числа)
import UIKit

// Объявление и инициализация переменной в одной строке
var num1 = Int8.min
var num2 = UInt8.max

// Вывод на консоль
print(num1, num2)

var num3 = 5
var num4: Int = 10

// Меняем местами числа через буфферную переменную
var bufferNum = num3
num3 = num4
num4 = bufferNum

// Вывод на консоль с описанием выводимых значений
print("num3 = \(num3)", "num4 = \(num4)")