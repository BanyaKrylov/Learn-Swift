import UIKit

//Homework 9

var userMark = 4
if userMark == 1 {
    print("E")
} else if userMark == 2 {
    print("D")
} else if userMark == 3 {
    print("C")
} else if userMark == 4 {
    print("B")
} else if userMark == 5 {
    print("A")
}

switch userMark {
case 1:
    print("E")
case 2:
    print("D")
case 3:
    print("C")
case 4:
    print("B")
case 5:
    print("A")
default:
    print("Not available")
}

switch userMark {
case 1..<3:
    print("Bad")
case 3...5:
    print("Good")
default:
    print("Not available")
}

var level: Character = "B"
switch level {
case "A":
    print("Off electric")
    fallthrough
case "B":
    print("Close all doors")
    fallthrough
case "C":
    print("All good")
default:
    break
}

var dragomWeight: Float = 2.4
var dragonColor = "green"
switch dragonColor {
case "green" where dragomWeight < 2:
    print("1 bush")
case "red" where dragomWeight < 2:
    print("2 bush")
case "green" where dragomWeight > 2, "red" where dragomWeight > 2:
    print("3 bush")
default:
    break
}

switch userMark {
case _ where userMark > 1 && userMark < 3:
    print("Bad")
case _ where userMark >= 3:
    print("Good")
default:
    print("Not available")
}

var dragonCharacteristic = ("green", 2.4)
switch dragonCharacteristic {
case ("green", 0..<2):
    print("1 gate")
case ("red", 0..<2):
    print("2 gate")
case ("red", _),
     ("green", _) where dragonCharacteristic.1 > 2:
    print("3 gate")
default:
    break
}

var dragonCharacteristic2 = ("green", 1)
switch dragonCharacteristic2 {
case ("green", 0..<2):
    print("1 gate")
case ("red", 0..<2):
    print("2 gate")
case ("red", let weight) where weight >= 2:
    print("3 gate")
case ("green", let weight) where weight >= 2:
    print("3 gate")
default:
    break
}

var dragonCharacteristic3 = ("green", 1)
switch dragonCharacteristic3 {
case ("green", 0..<2):
    print("1 gate")
case ("red", 0..<2):
    print("2 gate")
case let (color, weight) where (color == "green" || color == "red") && weight >= 2:
    print("3 gate")
default:
    break
}

typealias Operation = (operandOne: Float, operandTwo: Float, operation: Character)
let const: Operation = (3.1, 33, "+")
switch const {
case (_, _, "+"):
    print(const.operandOne + const.operandTwo)
case (_, _, "-"):
    print(const.operandOne - const.operandTwo)
case (_, _, "*"):
    print(const.operandOne * const.operandTwo)
case (_, _, "/"):
    print(const.operandOne / const.operandTwo)
default:
    print("This unavailable char")
}
