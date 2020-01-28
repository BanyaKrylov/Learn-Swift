import UIKit

//Function

func printMessage() -> Void {
    print("Message send")
}
printMessage()

func printMessage1() -> () {
    print("Message send again")
}
printMessage1()


func printMessage2() {
    print("Message send again and again")
}
printMessage2()

func printCodeMessage(requestCode: Int) -> () {
    print("Request code = \(requestCode)")
}
printCodeMessage(requestCode: 200)

func sum(a: Int, b: Int, c:Int) -> () {
    print("Sum = \(a + b + c)")
}
sum(a: 2, b: 5, c: 10)

func sum1(a: Int, _ b: Int, c: Int) -> () {
    print("Sum 1 = \(a + b + c)")
}
sum1(a: 2, 6, c: 12)

func generateString(code: Int, _ text: String) -> String {
    var mutableText = text
    mutableText += String(code)
    return mutableText
}
generateString(code: 200, "Code:")

func changeValue(_ a: inout Int, _ b: inout Int) -> () {
    let tmp = a
    a = b
    b = tmp
}
var a = 150, b = 345
changeValue(&a, &b)
a
b
