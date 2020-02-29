import UIKit

//Напишите своими словами, что такое pure function
/*
 Да по сути, это любые фенкции, которые принимают на вход параметры и работают с ними и возвращают один и тот де результат независимо от внешних факторов.
 Как пример чистой функции:
 func summ(a: Int, b: Int) -> Int {
 return a + b
 }
 let x = summ(a: 2, b: 3)
 
 Но если добавить
 var z = 5
 func summ(a: Int, b: Int) -> Int {
 return a + b + z
 }
 , то для
 let x = summ(a: 2, b: 3) результат будет не тот, что мы ожидаем.
 */

//Отсортируйте массив чисел по возрастанию используя функцию sorted
let arrayOne = [1, 5, 10, 2, 4]
arrayOne.sorted()

//Переведите массив числе в массив строк с помощью функции map
let arrayTwo = [1, 6, 2, 15]
let arrayString = arrayTwo.map {String($0)}
arrayString

//Переведите массив строк с именами людей в одну строку, содержащую все эти имена, с помощью функции reduce
let arrayThree = ["Ivan", "Ivya", "Boris"]
let stringNames = arrayThree.reduce("", {$0 + $1})
stringNames

//Напишите функцию, которая принимает в себя функцию c типом (Void) -> Void, которая будет вызвана с задержкой в 2 секунды
func functionOne(funcForDelay: Void) {
    let delayTime = DispatchTime.now() + 2.0
    DispatchQueue.main.asyncAfter(deadline: delayTime, execute: {
        funcForDelay
        print("delay")
    })
}
func delayed() {
}
functionOne(funcForDelay: delayed())

//Напишите функцию, которая принимает в себя две функции и возвращает функцию, которая при вызове выполнит первые две функции
func functionTwo(oneFinc: String, twoFunc: String){
    print("Two")
    print(oneFinc)
    print(twoFunc)
}
func oneFunc() -> String{
    return "oneFunc"
}
func twoFunc() -> String{
    return "twoFunc"
}
func functionThree(oneFinc: String, twoFunc: String) -> () {
    return functionTwo(oneFinc: oneFinc, twoFunc: twoFunc)
}
functionThree(oneFinc: oneFunc(), twoFunc: twoFunc())

//Напишите функцию, которая сортирует массив по переданному алгоритму: принимает в себя массив чисел и функцию, которая берет на вход два числа и возвращает Bool (должно ли первое число идти после второго) и возвращает массив, отсортированный по этому алгоритму
func sotredFunc(one: Int, two: Int) -> Bool {
    one > two ? true : false
}
func functionFour( array: [Int], funcForSort: (Bool)) -> [Int] {
    var arrForSort = array
    funcForSort ? arrForSort.sort {$0 > $1} : arrForSort.sort {$0 < $1}
    return arrForSort
}
var testArray = [1, 4, 6, 10, 23]
functionFour(array: testArray, funcForSort: false)

//Напишите своими словами что такое infix, suffix, prefix операторы.
/*
 Это операторы, которым мы сами можем задать реализацию.
 prefix указывается перед обрабатываемым значением, например +++number
 infix указывается между обрабатываемыми значениями, например numumberOne +- numberTwo
 Про suffix я ничего не слышал и нигде не нашел описание данного оператора, но полагаю, тут подразумевается postfix оператор. И он указывается после операнда. Но я, честно не представляю когда его можно использовать.
 */
