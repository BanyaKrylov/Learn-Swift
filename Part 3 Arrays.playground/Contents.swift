// Arrays
import UIKit

var arrayOne = ["a", "b", "c"]
let arrayTwo = [1, 2, 3, 4]

arrayOne[1] = "3"
arrayOne

var arrayThree = Array(arrayLiteral: 3, 4, 6, 6)
let arrayFour = Array(0..<7)

arrayThree[3]

var subArray = arrayOne[0...1]
arrayOne[0...1] = ["diii"]
arrayOne

var arrayFive: [String] = ["one", "two"]

var arraySix: Array<Int>
arraySix = [1, 2, 3, 4]

var empryArray: [String] = []
var emptyArray2 = [String]()

var arraySeven = (count: 10, repeatedValue: 3)

// Слияние массивов
arrayFive += arrayOne

// Многомерный массив
var arrayArray = [[1, 2, 4], [4, 6], [4, 7]]

arrayArray[2]
arrayArray[1][1]

arrayArray[2].count
arrayArray.isEmpty

// Получение множества значений массива (в данном случае получаем последние 2 элемента массива)
arrayTwo.suffix(2)

// Получение первого элемента массива
arrayOne.first

// Получение последнего элемента массива
arrayOne.last

// Добавление нового элемента в конец массива
arrayOne.append("ghbdtn")

// Добавление нового элемента в указанный индекс
arrayOne.insert("hello", at: 0)

// Удаление элемента по индексу
arraySix.remove(at: 1)
arraySix

// Удаление посленего элемента массива
arrayThree.removeLast()
arrayThree

// Удаление первого элемента массива
arrayThree.removeFirst()
arrayThree

// Удаление элементов из константы массива
arrayTwo.dropLast()

// Увдаление первых двух элементов массива
arrayTwo.dropFirst(2)

// Определяет факт наличия элемента в массиве
arrayTwo.contains(3)
arrayTwo.contains(40)

// Определяет первое вхождение искомого элемента
arrayTwo.index(of: 56)

// Поиск минимального и максимального значения
arrayTwo.max()
arrayTwo.min()

// Реверс массива
arrayTwo