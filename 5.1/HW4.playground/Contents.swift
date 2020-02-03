import UIKit

//Homework 4

let decimal = 17
let binary = 0b10001
let octal = 0o21
let hexadecimal = 0x11

let exponent = 1.25e2
let hexExponent = 0xFp-2

var number = 1_123_456

var char: Character = "a"
var str: String = "Hello"

let longString = """
Это
многострочный
литерал
"""

var conc = String(number) + String(char) + longString

conc.count

var str2 = "This is String literal"
let char2 = "a"
var num1 = 1, num2 = 2

let concatenation: String = str2 + String(char2) + String(num1 + num2)
print(concatenation)

let w = """
*  *  *
 * * *
  * *
"""
print(w)

var day = 21
var month = "January"
var year = 2020

print(String(year) + " " + month + " " + String(day))
