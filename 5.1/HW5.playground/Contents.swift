import UIKit

//Homework 5

var i = 1
var tru = true

var dragon = false

if dragon {
    print("Hello, Dragon!")
} else {
    print("What is your name?")
    }

!tru

let usl1 = tru && dragon

let usl2 = dragon || tru

print(usl1, usl2)

let usl3 = ( ( true && false ) || true )
let usl4 = true && false && true || ( true || false )
let usl5 = false || ( false || true ) && ( true && false )


typealias ageType = UInt64

ageType.max

let name:String = "Ivan"
var weight:Double = 113.5
var height:Int = 178

var IWB = weight / Double(height)
print(name + " IWB = " + String(IWB))

