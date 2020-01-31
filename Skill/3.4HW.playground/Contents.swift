import UIKit

//Homework 3.4

//1. Прочитайте главы Functions и Basics (начиная с Optionals) в книге «The Swift Programming Language»
//Done

//2. Можно ли в функции вызвать другую функцию? Если да, приведите пример
func up(coords: inout (Int, Int)) {
    coords = (coords.0 + 1, coords.1)
}
func right(coords: inout (Int, Int)) {
    coords = (coords.0 + 1, coords.1)
}
func left(coords: inout (Int, Int)) {
    coords = (coords.0 + 1, coords.1)
}
func down(coords: inout (Int, Int)) {
    coords = (coords.0 + 1, coords.1)
}
func oneStep(coordinates: inout (Int, Int), stepType: String) {
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    default:
        break;
}
}
var coordinates = (10, -5)
oneStep(coordinates: &coordinates, stepType: "up")
oneStep(coordinates: &coordinates, stepType: "left")
coordinates

//3. Напишите функцию, которая получает на вход массив строк, а возвращает одну строку, содержащую все элементы полученного массива через запятую
func transformArrToStr(array arrStr: [String]! = nil) -> String! {
    var transformResult: String = ""
    for index in arrStr! {
        switch index {
        case arrStr.last:
            transformResult += index + "."
        default:
            transformResult += index + ", "
        }
        
    }
    return transformResult
}
transformArrToStr(array: ["One", "Two", "Three"])

//4. Напишите функцию, которая получает на вход два Int’а и меняет их значения, и при этом увеличивает их вдвое
func twoInt(num1 one: Int, num2 two: Int) -> () {
    let tmp = one
    let numberOne = two * two
    let numberTwo = tmp * tmp
    print(numberOne, numberTwo)
}
twoInt(num1: 5, num2: 2)

//5. Напишите функцию, которая получает на вход два массива с типом Int и возвращает true, если сумма чисел в первом массиве больше суммы чисел во втором массиве; иначе возвращает false
func comparisonArray(firstArray: [Int], secondArray: [Int]) -> Bool {
    var firstSum = 0
    var secondSum = 0
    for number in firstArray {
        firstSum += number
    }
    for number in secondArray {
        secondSum += number
    }
    return firstSum > secondSum ? true : false
}
comparisonArray(firstArray: [1, 2, 3, 4], secondArray: [1, 4])

//6. Напишите функцию, которая получает на вход массив Int и возвращает этот же массив, но отсортированный по убыванию
func revertArray(array: [Int]) -> [Int] {
    var mutableArray: [Int] = array
    for i in 0...mutableArray.count - 1 {
        for j in i + 0...mutableArray.count - 1 {
            if mutableArray[j] > mutableArray[i] {
                mutableArray.swapAt(i, j)
            }
        }
    }
    return mutableArray
}
revertArray(array: [1, 5, 9, 8])

//7. Напишите функцию, которая получает на вход массив Int и возвращает среднее значение всех элементов
func avgValue(arr: [Int]) -> Double {
    var value = 0
    for num in arr {
        value += num
    }
    return Double(value) / Double(arr.count)
}
avgValue(arr: [1, 2, 3, 4])

let arrv: [String]? = ["!", "@"]
arrv?.firstIndex(of: "!")
//8. Напишите функцию, которая пытается найти индекс строки в массиве: на вход получает массив и строку для поиска, возвращает опшионал индекс этой строки в массиве
func searchIndex(arrString: [String], stringForSearch: String? = nil) -> Int? {
    return arrString.firstIndex(of: stringForSearch!)
}
searchIndex(arrString: ["!", "@", "#"], stringForSearch: "@")

//9.  Чему будет равен result?
//
//var age = Int("25.") ?? 0
//
//
//var result = age < 18 ? "Hello, young man/woman" : "Hello grown man/woman"
//result += " \(age)"
//"Hello, young man/woman"

//10. Чему будет равен result?
//
//func inc(a: Int) -> Int{
//    return a + 3
//}
//
//
//func dec(a: Int) -> Int{
//    return a - 5
//}
//
//
//func compute(a: Int) -> Int{
//    return inc(a: a) + dec(a: a)
//}
//
//
//let result = compute(a: 5) - compute(a: 3)
//4

//Бонусные задания к урокам:
//
//
//Функции
//Можно ли в функции вернуть tuple? Можно ли внутри функции написать другую функцию?
//Можно вернуть значение кортежа, например так
func getCodeDescription(code: Int) -> (Int, String) {
    let description: String
    switch code {
    case 1...100:
        description = "Error"
    case 101...200:
        description = "Correct"
    default:
        description = "Unknown"
    }
    return (code, description)
}
print(getCodeDescription(code: 200))
//Можно написать внутри фукнции другую функцию, например так
func oneStep1(coordinates: inout (Int, Int), stepType: String) {
    func up(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func right(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func left(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    func down(coords: inout (Int, Int)) {
        coords = (coords.0 + 1, coords.1)
    }
    switch stepType {
    case "up":
        up(coords: &coordinates)
    case "right":
        right(coords: &coordinates)
    case "left":
        left(coords: &coordinates)
    case "down":
        down(coords: &coordinates)
    default:
        break;
    }
}
var coordinates1 = (10, -5)
oneStep1(coordinates: &coordinates1, stepType: "up")
oneStep1(coordinates: &coordinates1, stepType: "left")
coordinates1

//Опшиналы
//
//В каких случаях следует использовать восклицательный знак для опшиналов?
//В случае, если нужно получить значение опциональной переменной, но мы не знаем существует ли она на данный момент.

