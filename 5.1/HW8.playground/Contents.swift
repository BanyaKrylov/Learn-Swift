import UIKit

//Homework 8

var dragonAge = 230
assert(dragonAge >= 230, "Your dranon little")

var isDragon: Bool? = true
assert(isDragon != nil, "Person empty")

var logicVar = false
if logicVar {
    print("Var logicVar true")
} else {
    print("Var logicVar false")
}

var tenantCount = 6
var rentPrice = 0
if tenantCount < 5 {
    rentPrice = 1000
} else if tenantCount >= 5 && tenantCount <= 7 {
    rentPrice = 800
} else if tenantCount > 7 {
    rentPrice = 500
}
var allPrice = rentPrice * tenantCount

let a = 3
let b = 2
a < b ? print("A < B") : print("A > B")

var height = 180
var isHeader = true
let rowHeight = height + (isHeader ? 20 : 10)
rowHeight

var fiveMarkCount: Int? = 8
if fiveMarkCount == nil {
    print("Five is empty")
} else {
    let cakeForEachFiveMark = 2
    var allCakeCount = cakeForEachFiveMark * fiveMarkCount!
}

var coinsInNewChest = "0"
var allCoinsCount = 1301
var coins = Int(coinsInNewChest)
if coins != 0 {
    allCoinsCount += coins!
} else {
    print("A new dragon non coins")
}

typealias Text = String
let cons1: Text = "5", cons2: Text = "34", cons3: Text = "12ab"
Int(cons1) != nil ? print(cons1) : print(false)
Int(cons2) != nil ? print(cons2) : print(false)
Int(cons3) != nil ? print(cons3) : print(false)
//print(Int(cons1) != nil, Int(cons2) != nil, Int(cons3) != nil)
typealias TupleType = (numberOne: Text?, numberTwo: Text?)?
var num1: TupleType = ("190", "67"), num2: TupleType = ("100", nil), num3: TupleType = ("-65", "70")
if let (one, two) = num1 {
    if one != nil && two != nil {
        print(num1!.0!, num1!.1!)
    }
}
if let (one, two) = num2 {
    if one != nil && two != nil {
        print(num2!.0!, num2!.1!)
    }
}
if let (one, two) = num3 {
    if one != nil && two != nil {
        print(num3!.0!, num3!.1!)
    }
}
//(Int(num1!.numberOne!) != nil) && (Int(num1!.numberTwo!) != nil) ? print(num1?.numberOne, num1?.numberTwo) : print(false)
//(Int(num2!.numberOne!) != nil) && (Int(num2!.numberTwo!) != nil) ? print(num2?.numberOne, num2?.numberTwo) : print(false)
//(Int(num3!.numberOne!) != nil) && (Int(num3!.numberTwo!) != nil) ? print(num3?.numberOne, num3?.numberTwo) : print(false)
