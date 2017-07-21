// Switch

import UIKit

typealias Operation = (operandOne: Float, operandTwo: Float, operation: Character)

let con: Operation = (3.1, 33, "f")

switch con {
case (_, _, "%"):
    print(Int(con.operandOne) % Int(con.operandTwo))
case (_, _, "+"):
    print(con.operandOne + con.operandTwo)
case (_, _, "-"):
    print(con.operandOne - con.operandTwo)
case (_, _, "*"):
    print(con.operandOne * con.operandTwo)
case (_, _, "/"):
    print(con.operandOne / con.operandTwo)
default:
    print("Not found operation")
}