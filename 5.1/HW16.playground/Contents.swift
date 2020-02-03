import UIKit

var array = [1,44,81,4,277,50,101,51,8]
print(array.sorted(by: {(first: Int, second: Int) -> Bool in return first < second}))

var sortedArray = array.sorted(by: {$0 > $1})
print(sortedArray)

var sortArr = array.sorted(by: <)
print(sortArr)

func sum(x: Int, y: Int) -> Int {
    return x + y
}
sum(x: 5, y: 6)

func sum2(_ x: Int) -> (Int) -> Int {
    return {return $0 + x}
}
var closure = sum2(1)
closure(12)
sum2(1) (15)

var a = 5
var b = 23
let closureSum: () -> Int = {
    return a + b
}
closureSum()
a = 3
b = 4
closureSum()

var c = 4
var d = 90
let closureSum2: () -> Int = {
    [c, d] in
    return c + d
}
closureSum2()
c = 3
d = 1
closureSum2()

func makeIncrement(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func increment() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return increment
}
var incrementByTen = makeIncrement(forIncrement: 10)
var incrementBySeven = makeIncrement(forIncrement: 7)
incrementByTen()
incrementBySeven()
incrementByTen()
incrementBySeven()

var incrementByFive = makeIncrement(forIncrement: 5)
var copyIncrementByFive = incrementByFive
incrementByFive()
copyIncrementByFive()
incrementByFive()
incrementByFive()

var arrX2 = [1, 5, 10]
var newArrx2 = arrX2.map{$0 * 2}
print(newArrx2)

let numbers = [2, 3, 7, 23, 40]
let even = numbers.filter{$0 % 2 == 0}
print(even)

let cash = [10, 50, 100]
let total = cash.reduce(0, +)

